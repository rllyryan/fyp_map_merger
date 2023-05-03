import os 
import sys
from unittest import result

import cv2 as cv
import numpy as np
import imutils 

import time

# sys.path.append('/home/rllyryan/Documents/GitHub/FYP_AY21-22_Ryan/Map_Merging')
# print(sys.path)

CURDIR = os.path.dirname(__file__)
sys.path.append(os.path.abspath(os.path.join(CURDIR, '..', '..')))

from Utilities import GeodescFeatures2D
from Utilities import ContextDescFeatures2D

class Pair_Stitcher:

    # Flag to remove the need to re-initialise neural network models that takes some time
    detectAndCompute_first_pass_completed = False

    # Object holder to save the loading of weights of the neural network models after initialisation
    object_holder = None

    error_holder = None

    image_array = None

    def __init__(self, selection_num = None, list_of_images = None, list_of_image_names = None):
        self.isv3 = imutils.is_cv3(or_better = True)
        self.algorithm_num = selection_num
        self.image_array = list_of_images

    def crop(self, img, padding = 0):

        if len(img.shape) == 3:
            gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
        else:
            gray = img

        boundary_pixel = gray[0][0]
        _, binary = cv.threshold(gray, boundary_pixel, 255, cv.THRESH_BINARY)
        contours = cv.findContours(binary, cv.RETR_EXTERNAL, cv.CHAIN_APPROX_SIMPLE)[-2]
        contours = sorted(contours, key = cv.contourArea)[-1]
        x,y,w,h = cv.boundingRect(contours)
        cropped_img = img[y-padding:y+h+padding, x-padding:x+w+padding]
        
        return cropped_img
    
    def remove_background(self, image):
        
        if len(image.shape) == 3:
            gray = cv.cvtColor(image, cv.COLOR_BGR2GRAY)
        else:
            gray = image
        
        mask = gray.copy()

        # Thresholding does not help to make the mask effectively
        # We are locating all the black contours, and overwriting their pixel values to 255
        # and locating all the 'grey' background, and overwriting their pixel values to 0
        black = np.where((mask[:,:] < 50))
        grey = np.where((mask[:,:] < 240) & (mask[:,:] > 60))

        # In the alpha channel, 0 means fully transparent, while 255 means opaque
        mask[black] = 255
        mask[grey] = 0

        # Put mask into alpha channel
        image_with_alpha = image.copy()
        image_with_alpha = cv.cvtColor(image_with_alpha, cv.COLOR_BGR2BGRA)
        image_with_alpha[:, :, 3] = mask

        # cv.imwrite('Image_without_bckgd.png', image_with_alpha)
        
        return image_with_alpha
    
    def centralise_and_pad(self, img, padding = 100):
        
        overlay_shape_h = img.shape[0]
        overlay_shape_w = img.shape[1]

        canvas_shape = (overlay_shape_h + padding, overlay_shape_w + padding)
        canvas = np.zeros([canvas_shape[0], canvas_shape[1]], dtype=np.uint8)
        canvas[:,:] = 205

        canvas_shape_hh = canvas_shape[0]
        canvas_shape_ww = canvas_shape[1]

        yoff = round((canvas_shape_hh - overlay_shape_h)/2)
        xoff = round((canvas_shape_ww - overlay_shape_w)/2)

        canvas[yoff : yoff + overlay_shape_h, xoff : xoff + overlay_shape_w] = img

        canvas_filled = canvas.copy()
        
        return canvas_filled
    
    def rotate_image(self, mat, angle):
        """
        Rotates an image (angle in degrees) and expands image to avoid cropping
        """

        height, width = mat.shape[:2] # image shape has 3 dimensions
        image_center = (width/2, height/2) # getRotationMatrix2D needs coordinates in reverse order (width, height) compared to shape

        angle = 0 - angle

        rotation_mat = cv.getRotationMatrix2D(image_center, angle, 1.)

        # rotation calculates the cos and sin, taking absolutes of those.
        abs_cos = abs(rotation_mat[0,0]) 
        abs_sin = abs(rotation_mat[0,1])

        # find the new width and height bounds
        bound_w = int(height * abs_sin + width * abs_cos)
        bound_h = int(height * abs_cos + width * abs_sin)

        # subtract old image center (bringing image back to origo) and adding the new image center coordinates
        rotation_mat[0, 2] += bound_w/2 - image_center[0]
        rotation_mat[1, 2] += bound_h/2 - image_center[1]

        # rotate image with the new bounds and translated rotation matrix
        rotated_mat = cv.warpAffine(mat, rotation_mat, (bound_w, bound_h), flags = cv.INTER_LANCZOS4)
        return rotated_mat
    
    def topple_image(self, img):
        '''
        Image Shape = (width, length)
        Bottom ----> Top of image: Width
        Left ----> Right of image: length 
        '''
        width = img.shape[0]
        length = img.shape[1]

        if width > length:
            img = self.rotate_image(img, 90)
        else:
            pass

        return img

    def dual_chance_merge(self, imageA, imageB, ratio, reprojThresh):

        kpt_feat_collection_A = self.detectAndDescribe(imageA)
        kpt_feat_collection_B = self.detectAndDescribe(imageB)
        (kpsA, featuresA) = kpt_feat_collection_A[0]
        (kpsB, featuresB) = kpt_feat_collection_B[0]

        # Match features between the two images
        M = self.matchKeypoints(kpsA, kpsB, featuresA, featuresB, ratio, reprojThresh)
        
        if M is not None:
            (matches, H, status) = M
        else:
            self.error_holder = "Algorithm found insufficient matching features between overlapping regions"
            return False, None

        # if the match is None, then there aren't sufficient matched
        # keypoints to created a panorama
        if (H is None):
            self.error_holder = "Homography estimation failed due to false positive feature matches"
            return False, None
        else:
            # otherwise, apply a perspective warp to stitch the images together
            result = cv.warpPerspective(imageA, H, (4000,4000))

            vis = self.drawMatches(imageA, imageB, kpsA, kpsB, matches, status)
            # cv.imshow('Matches', vis)
            # cv.waitKey(0)

            '''
            image[row, column, channel]
            '''

            # Extract and Combine masks for the new alpha channel
            maskA = result[:,:,3]
            maskB = imageB[:,:,3]
            location_white_space = np.where((maskB[:,:] <= 255) & (maskB[:,:] > 200))
            maskA[location_white_space] = 255
            combined_mask = maskA
            
            # Image B is static and so is maskB
            # maskA and Image A are the only ones that translated
            result = cv.cvtColor(result, cv.COLOR_BGRA2GRAY)
            imageB = cv.cvtColor(imageB, cv.COLOR_BGRA2GRAY)
            # result = cv.cvtColor(result, cv.COLOR_GRAY2BGRA)
            # result[:, :, 3] = maskA[:,:]

            # Find all the white and black in imageB to be put into result
            white = np.where((imageB[:,:] <= 255) & (imageB[:,:] >= 230))
            black = np.where((imageB[:,:] >= 0) & (imageB[:,:] <= 60))

            result[white] = 255
            result[black] = 5

            # Make sure there are no wandering seams of gradient
            result[np.where(combined_mask[:,:] == 0)] = 205
            # result = cv.cvtColor(result, cv.COLOR_GRAY2BGRA)
            imageB = cv.cvtColor(imageB, cv.COLOR_GRAY2BGRA)

            # Find the location of all the white and blacks
            location_white_and_black_result = np.where((result[:,:] == 0))
            result[location_white_and_black_result] = 205

            result = self.crop(result)
            result = self.centralise_and_pad(result, padding = 100)
            result = self.topple_image(result)
        
        self.error_holder = ""

        return True, result

    def stitch(self):
        
        # Need to think about how to use the names (Maybe more important for the mult_map_merger)

        # Check both orders
        (image1, image2) = self.image_array

        image1 = self.remove_background(image1)
        image2 = self.remove_background(image2)
        # print(image1)

        image1 = self.crop(image1)
        image2 = self.crop(image2)

        # print(image1)

        result_parcel_1 = self.dual_chance_merge(imageA = image1, imageB = image2, ratio = 0.70, reprojThresh = 4.0)
        error_capturer_1 = self.error_holder

        result_parcel_2 = self.dual_chance_merge(imageA = image2, imageB = image1, ratio = 0.70, reprojThresh = 4.0)
        error_capturer_2 = self.error_holder

        if result_parcel_1[0] == False and result_parcel_2[0] == False:
            packaged_result = (error_capturer_1, None, error_capturer_2, None)
        elif result_parcel_1[0] == False and result_parcel_2[0] == True:
            packaged_result = (error_capturer_1, None, error_capturer_2, result_parcel_2[1])
        elif result_parcel_1[0] == True and result_parcel_2[0] == False:
            packaged_result = (error_capturer_1, result_parcel_1[1], error_capturer_2, None)
        else:
            packaged_result = (error_capturer_1, result_parcel_1[1], error_capturer_2, result_parcel_2[1])

        # Frontend needs to check indexes [1] and [3] for None, if None then check left item respectively [Index-1]
        # Idea is to present both results and let the user select the best one that reflects the warehouse.
        # Might need to have an overlapping tool to overlap the warehouse floor plan with the map to see how well it fits.
        return packaged_result
    
    def detectAndDescribe(self, image, mask = None):

        # get the mask from the alpha channel
        # pass the mask to the detectors because the alpha channel
        # becomes a black background

        # mask = image[:, :, 3] # original implementation

        # convert the image to grayscale
        if len(image.shape) == 3:
            gray = cv.cvtColor(image, cv.COLOR_BGR2GRAY)
        else:
            gray = image

        # correspondence_kpt_feat = None
        all_kpt_feat = None
        kpt_feat_collection = list()

        # check to see if we are using OpenCV 3.X
        if self.isv3:
            
            if self.algorithm_num == 0:
                '''
                Good pre-processing for blob detectors (SIFT, SURF, etc) 
                [Ref] A Robust, Multi-Hypothesis Approach to Matching Occupancy Grid Maps
                '''
                gray = cv.GaussianBlur(gray, (5,5), 9)
                gray = cv.medianBlur(gray, 11)
                descriptor = cv.SIFT_create()
                # all_detect_describe_start = time.time()
                (all_kps, all_feature) = descriptor.detectAndCompute(gray, None)
                # all_detect_describe_end = time.time()
                # self.feature_detection_description_timing_holder = all_detect_describe_end - all_detect_describe_start 
                # (correspondence_kps, correspondence_feat) = descriptor.detectAndCompute(gray, mask)

            elif self.algorithm_num == 1:
                descriptor = cv.BRISK_create(octaves = 9, thresh = 40, patternScale = 4.0)
                # all_detect_describe_start = time.time()
                (all_kps, all_feature) = descriptor.detectAndCompute(gray, None)
                # all_detect_describe_end = time.time()
                # self.feature_detection_description_timing_holder = all_detect_describe_end - all_detect_describe_start 
                # (correspondence_kps, correspondence_feat) = descriptor.detectAndCompute(gray, mask)

            if self.algorithm_num == 2:
                '''
                Good pre-processing for blob detectors (SIFT, SURF, etc) 
                [Ref] A Robust, Multi-Hypothesis Approach to Matching Occupancy Grid Maps
                '''
                # gray = cv.GaussianBlur(gray, (5,5), 9)
                # gray = cv.medianBlur(gray, 11) 
                if not self.detectAndCompute_first_pass_completed:
                    self.object_holder = GeodescFeatures2D()
                    self.detectAndCompute_first_pass_completed = True
                else:
                    pass 
                
                non_gray = cv.cvtColor(gray, cv.COLOR_GRAY2RGB)
                # all_detect_describe_start = time.time()
                (all_kps, all_feature) = self.object_holder.detectAndCompute(non_gray, None)
                # all_detect_describe_end = time.time()
                # (correspondence_kps, correspondence_feat) = self.object_holder(non_gray, mask)

            elif self.algorithm_num == 3:
                '''
                Good pre-processing for blob detectors (SIFT, SURF, etc) 
                [Ref] A Robust, Multi-Hypothesis Approach to Matching Occupancy Grid Maps
                '''
                # gray = cv.GaussianBlur(gray, (5,5), 9)
                # gray = cv.medianBlur(gray, 11)                
                if not self.detectAndCompute_first_pass_completed:
                    self.object_holder = ContextDescFeatures2D()
                    self.detectAndCompute_first_pass_completed = True
                else:
                    pass 
                
                non_gray = cv.cvtColor(gray, cv.COLOR_GRAY2RGB)
                # all_detect_describe_start = time.time()
                (all_kps, all_feature) = self.object_holder.detectAndCompute(non_gray, None)
                # all_detect_describe_end = time.time()
                # (correspondence_kps, correspondence_feat) = self.object_holder(non_gray, mask)
            
            # The algorithms beyond this point are mostly to detect as many points as possible (low feature maps)
            # This is respect to the final phase of testing for the FYP, utilising the AWS small warehouse world
            elif self.algorithm_num == 4:
                descriptor = cv.ORB_create(100000)
                # all_detect_describe_start = time.time()
                (all_kps, all_feature) = descriptor.detectAndCompute(gray, None)
            
            elif self.algorithm_num == 5:
                # gray = cv.GaussianBlur(gray, (5,5), 9)
                # gray = cv.medianBlur(gray, 11) 
                try:
                    descriptor = cv.xfeatures2d.SURF_create(nOctaveLayers = 15, hessianThreshold = 50)
                    (all_kps, all_feature) = descriptor.detectAndCompute(gray, None)
                except Exception as e:
                    print('SURF not available, default ORB is used.')
                    descriptor = cv.ORB_create(100000)
                    # all_detect_describe_start = time.time()
                    (all_kps, all_feature) = descriptor.detectAndCompute(gray, None)
                           

        # correspondence_kpt_feat = (correspondence_kps, correspondence_feat)
        all_kpt_feat = (all_kps, all_feature)
        # kpt_feat_collection.append(correspondence_kpt_feat)
        kpt_feat_collection.append(all_kpt_feat)

        return kpt_feat_collection

    def matchKeypoints(self, kpsA, kpsB, featuresA, featuresB, ratio, reprojThresh):

        # compute the raw matches and initialise the list of actual matches
        if self.algorithm_num in [1,4]:
            matcher = cv.BFMatcher(cv.NORM_HAMMING, crossCheck=False)
        else:
            matcher = cv.BFMatcher(cv.NORM_L2, crossCheck=False)

        # feature_matching_start = time.time()
        rawMatches = matcher.knnMatch(featuresA, featuresB, k = 2)
        good_matches = []

        '''
        The result of matches = bf.match(des1, des2) is a list of DMatch objects.
        This DMatch object has the following attributes:

        1) DMatch.distance - Distance between descriptors. The lower, the better.
        2) DMatch.trainIdx - Index of the descriptor in train descriptors.
        3) DMatch.queryIdx - Index of the descriptor in query descriptors.
        4) DMatch.imgIdx - Index of the train image.

        --> queryIdx gives the index of keypoints on the original image you are trying to match
        --> trainIdx gives the index of keypoints matched on reference image
        '''

        # loop over raw matches and apply Lowe's Ratio Test
        for m in rawMatches:
            # ensure the distance is within a certain ratio of each other
            if len(m) == 2 and m[0].distance < m[1].distance * ratio:
                good_matches.append((m[0].trainIdx, m[0].queryIdx)) 
        
        # feature_matching_end = time.time()
        # self.feature_matching_timing = feature_matching_end - feature_matching_start
        self.number_of_matches = len(good_matches)
        
        print("Here is the number of good matches decide by Lowe's test: ", len(good_matches), "\n")

        # print(kpsA[4])

        # for m, n in rawMatches:
        #     if m.distance < ratio * n.distance:
        #         good_matches.append(m)

        # compute the homography requiring at least 4 matches  
        if len(good_matches) > 4:
            # construct the two sets of points
            src_pts = np.float32([kpsA[i].pt for (_,i) in good_matches])
            dst_pts = np.float32([kpsB[i].pt for (i, _) in good_matches])
        
            # findHomography_start = time.time()
            (H, status) = cv.findHomography(src_pts, dst_pts, cv.RANSAC, reprojThresh)
            # findHomography_end = time.time()

            # self.findHomography_timing = findHomography_end - findHomography_start
            self.number_of_inlier = np.sum(status)
            self.inlier_percentage = float(np.sum(status)) / float(len(status))

            print('Inlier Ratio, number of inlier/number of matches: {}\n'.format(float(np.sum(status)) / float(len(status))))
            # print("This is the homography matrix:\n", H, "\n")
            # print("This is the status:\n", status)

            # return the matches along with the homography matrix and status of each matched point
            return (good_matches, H, status)
        
        return None

    def drawMatches(self, imageA, imageB, kpsA, kpsB, matches, status):
        
        print('imageA: {}'.format(imageA.shape))
        print('imageB: {}'.format(imageB.shape))

        (hA, wA) = imageA.shape[:2]
        (hB, wB) = imageB.shape[:2]
        print('hA: {}, wA: {}'.format(hA, wA))
        print('hB: {}, wB: {}'.format(hB, wB))

        vis = np.zeros((max(hA, hB), wA + wB, 4), dtype = 'uint8')
        print('vis: {}'.format(vis.shape))

        vis[0:hA, 0:wA] = imageA
        vis[0:hB, wA:] = imageB

        # loop over the matches
        for ((trainIdx, queryIdx), s) in zip(matches, status):
            # only process the match if the keypoint was successfully matched
            if s == 1:
                # draw the match
                # print(type(kpsA))
                ptA = (int(kpsA[queryIdx].pt[0]), int(kpsA[queryIdx].pt[1]))
                ptB = (int(kpsB[trainIdx].pt[0]) + wA, int(kpsB[trainIdx].pt[1]))
                cv.line(vis, ptA, ptB, (255, 0, 0), 1)

        return vis


