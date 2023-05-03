import os 
import sys

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
from Utilities import ASLFeatFeatures2D

class Stitcher:


    # Flag to remove the need to initialise neural network models that takes some time
    detectAndCompute_first_pass_completed = False

    # Object holder to save the loading of weights of the neural network models after initialisation
    object_holder = None

    def __init__(self, images = None, selection = None, roi_coordinates = None):
        self.isv3 = imutils.is_cv3(or_better = True)
        self.algorithm_num = selection
        # self.mask_set = self.map_roi_to_mask(images, roi_coordinates)
        
        self.feature_detected_imageA = 0
        self.feature_detected_imageB = 0
        self.feature_detection_description_timing_holder = 0.0
        self.feature_detection_description_timing_holder_A = 0.0
        self.feature_detection_description_timing_holder_B = 0.0
        self.mean_feature_detection_description_timing_per_point_A = 0.0
        self.mean_feature_detection_description_timing_per_point_B = 0.0

        self.number_of_matches = 0
        self.feature_matching_timing = 0.0 
        self.mean_feature_matching_timing_per_matched_point = 0.0
        self.findHomography_timing = 0.0
        self.number_of_inlier = 0.0
        self.inlier_percentage = 0.0
    
    # def map_roi_to_mask(self, image_set, roi):
    #     '''
    #     https://stackoverflow.com/questions/46447073/how-to-ignore-part-of-a-image-during-feature-extraction-in-opencv
    #     '''
    #     image1 = image_set[0]
    #     image2 = image_set[1]

    #     mask1 = np.zeros(image1.shape[:2], dtype=np.uint8)
    #     mask2 = np.zeros(image2.shape[:2], dtype=np.uint8)

    #     # roi should look something like this:
    #     # [[(a, b),(c, d)], [(a, b), (c, d)]]

    #     bottom_left_corner1 = roi[0][0]
    #     top_right_corner1 = roi[0][1]
    #     bottom_left_corner2 = roi[1][0]
    #     top_right_corner2 = roi[1][1]

    #     cv.rectangle(mask1, bottom_left_corner1, top_right_corner1, (255), thickness = -1)
    #     cv.rectangle(mask2, bottom_left_corner2, top_right_corner2, (255), thickness = -1)

    #     # Reverse the arrangement for later
    #     mask_set = list(mask2, mask1)
        
    #     # The mask_set needs to be returned reverse because of the line:
    #     # (imageB, imageA) = self.image_set
    #     return mask_set
    
    # def correspondence_matching(self, correspondence_featA, correspondence_featB):
        
    #     if self.algorithm_num in [3, 4, 14, 15]:
    #         matcher = cv.BFMatcher(cv.NORM_HAMMING, crossCheck=True)
    #         rawMatches = matcher.match(correspondence_featA, correspondence_featB)
    #     else:
    #         matcher = cv.BFMatcher(cv.NORM_L2, crossCheck=True)
    #         rawMatches = matcher.match(correspondence_featA, correspondence_featB)
        
    #     return len(rawMatches) 

    def stitch(self, image_set = None, ratio = 0.70, reprojThresh = 4.0, showMatches = False):
        # unpack the images, then detect keypoints and extract
        # local invariant descriptors from them
        (imageB, imageA) = image_set

    
        # Need to pass one more parameter to tell which mask_set to use
        kpt_feat_collection_A = self.detectAndDescribe(imageA)
        self.feature_detection_description_timing_holder_B = self.feature_detection_description_timing_holder
        kpt_feat_collection_B = self.detectAndDescribe(imageB)
        self.feature_detection_description_timing_holder_A = self.feature_detection_description_timing_holder

        (kpsA, featuresA) = kpt_feat_collection_A[0]
        (kpsB, featuresB) = kpt_feat_collection_B[0]

        self.feature_detected_imageA = len(kpsB)
        self.feature_detected_imageB = len(kpsA)

        # self.mean_feature_detection_description_timing_per_point_A = self.feature_detection_description_timing_holder_A/self.feature_detected_imageA
        # self.mean_feature_detection_description_timing_per_point_B = self.feature_detection_description_timing_holder_B/self.feature_detected_imageB

        # (corresponding_kpsA, corresponding_featA) = kpt_feat_collection_A[1]
        # (corresponding_kpsB, corresponding_featB) = kpt_feat_collection_B[1]

        # self.number_of_correspondences = self.correspondence_matching(corresponding_featA, corresponding_featB)

        # if len(corresponding_kpsA) >= len(corresponding_kpsB):
        #     self.min_feature_in_common_region = len(corresponding_kpsA)
        # else:
        #     self.min_feature_in_common_region = len(corresponding_kpsB)

        # Match features between the two images
        M = self.matchKeypoints(kpsA, kpsB, featuresA, featuresB, ratio, reprojThresh)
        
        if M is not None:
            (matches, H, status) = M
        else:
            return None

        # if the match is None, then there aren't sufficient matched
        # keypoints to created a panorama
        if (H is None):
            return None
        else:
            # otherwise, apply a perspective warp to stitch the images together
            # (imageA.shape[1] + imageB.shape[1], imageA.shape[0])
            result = cv.warpPerspective(imageA, H, (4000,4000))
            '''
            image[row, column, channel]
            '''
            # print('result: {}'.format(result.shape))
            # print('result[:,:,3]: {}'.format(result[:,:,3]))
            # print('result[1]: {}'.format(result[:,:,0]))
            # cv.imwrite('check_result.png', result)
            # print(imageB.shape)
            # 0:imageB.shape[0]
            # print('imageB.shape: {}'.format(imageB.shape))
            # print('imageB[:,:,3]: {}'.format(imageB[:,:,3]))

            # Extract and Combine masks for the new alpha channel
            maskA = result[:,:,3]
            maskB = imageB[:,:,3]
            location_white_space = np.where((maskB[:,:] <= 255) & (maskB[:,:] > 200))
            maskA[location_white_space] = 255
            combined_mask = maskA

            # cv.imshow('maskA', maskA)
            # cv.imshow('maskB', maskB)
            # cv.imshow('Combined Mask',maskA)
            
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
            # cv.imshow('Pre-result', result)
            # Find the location of all the white and blacks
            location_white_and_black_result = np.where((result[:,:] == 0))
            result[location_white_and_black_result] = 205

            # result[0:imageB.shape[0], 0:imageB.shape[1], :] = imageB[:, :, :]
            # result[np.where(result[:,:,3] == 0)] = 0
            # Channels of Interest
            # result = cv.cvtColor(result, cv.COLOR_BGRA2GRAY)
            # print(result)

        # Check to see if the keypoint matches should be visualised
        if showMatches:
            vis = self.drawMatches(imageA, imageB, kpsA, kpsB, matches, status)

            # return a tuple of the stitched image and the visualisation
            return (result, vis)
        
        return result
    
    def detectAndDescribe(self, image, mask = None):

        # get the mask from the alpha channel
        # pass the mask to the detectors because the alpha channel
        # becomes a black background
        # mask = image[:, :, 3] # original implementation

        # convert the image to grayscale
        gray = cv.cvtColor(image, cv.COLOR_BGR2GRAY)

        # correspondence_kpt_feat = None
        all_kpt_feat = None
        kpt_feat_collection = list()

        # check to see if we are using OpenCV 3.X
        if self.isv3:
            
            ###############################################################
            #########[Keypoint Detectors and Feature Descriptors]##########
            ###############################################################
            if self.algorithm_num == 1:
                ''' SIFT [Successful] Failed at 150 width '''
                descriptor = cv.SIFT_create()
                all_detect_describe_start = time.time()
                (all_kps, all_feature) = descriptor.detectAndCompute(gray, None)
                all_detect_describe_end = time.time()
                self.feature_detection_description_timing_holder = all_detect_describe_end - all_detect_describe_start 
                # (correspondence_kps, correspondence_feat) = descriptor.detectAndCompute(gray, mask)
            elif self.algorithm_num == 2:
                ''' SURF [Successful] (Patented) '''
                descriptor = cv.xfeatures2d.SURF_create()
                all_detect_describe_start = time.time()
                (all_kps, all_feature) = descriptor.detectAndCompute(gray, None)
                all_detect_describe_end = time.time()
                self.feature_detection_description_timing_holder = all_detect_describe_end - all_detect_describe_start 
                # (correspondence_kps, correspondence_feat) = descriptor.detectAndCompute(gray, mask)

            elif self.algorithm_num == 3:
                ''' BRISK [Successful] Failed at 210 width '''
                descriptor = cv.BRISK_create()
                all_detect_describe_start = time.time()
                (all_kps, all_feature) = descriptor.detectAndCompute(gray, None)
                all_detect_describe_end = time.time()
                self.feature_detection_description_timing_holder = all_detect_describe_end - all_detect_describe_start 
                # (correspondence_kps, correspondence_feat) = descriptor.detectAndCompute(gray, mask)

            elif self.algorithm_num == 4:
                ''' ORB [Unsuccessful] It just fails at equal resolution '''
                descriptor = cv.ORB_create(nfeatures = 100000)
                all_detect_describe_start = time.time()
                (all_kps, all_feature) = descriptor.detectAndCompute(gray, None)
                all_detect_describe_end = time.time()
                self.feature_detection_description_timing_holder = all_detect_describe_end - all_detect_describe_start 
                # (correspondence_kps, correspondence_feat) = descriptor.detectAndCompute(gray, mask)

            elif self.algorithm_num == 5:
                ''' KAZE [Successful] Failed at 250 width '''
                descriptor = cv.KAZE_create()
                all_detect_describe_start = time.time()
                (all_kps, all_feature) = descriptor.detectAndCompute(gray, None)
                all_detect_describe_end = time.time()
                self.feature_detection_description_timing_holder = all_detect_describe_end - all_detect_describe_start 
                # (correspondence_kps, correspondence_feat) = descriptor.detectAndCompute(gray, mask)

            elif self.algorithm_num == 6:
                ''' AKAZE [Successful] Failed at 420 width '''
                descriptor = cv.AKAZE_create()
                all_detect_describe_start = time.time()
                (all_kps, all_feature) = descriptor.detectAndCompute(gray, None)
                all_detect_describe_end = time.time()
                self.feature_detection_description_timing_holder = all_detect_describe_end - all_detect_describe_start 
                # (correspondence_kps, correspondence_feat) = descriptor.detectAndCompute(gray, mask)

            if self.algorithm_num == 7:
                ''' GeoDesc [In Testing] '''
                if not self.detectAndCompute_first_pass_completed:
                    self.object_holder = GeodescFeatures2D()
                    self.detectAndCompute_first_pass_completed = True
                else:
                    pass 
                
                non_gray = cv.cvtColor(gray, cv.COLOR_GRAY2RGB)
                all_detect_describe_start = time.time()
                (all_kps, all_feature) = self.object_holder.detectAndCompute(non_gray, None)
                all_detect_describe_end = time.time()
                # (correspondence_kps, correspondence_feat) = self.object_holder(non_gray, mask)

            elif self.algorithm_num == 8:
                ''' ContextDesc [In Testing] '''
                if not self.detectAndCompute_first_pass_completed:
                    self.object_holder = ContextDescFeatures2D()
                    self.detectAndCompute_first_pass_completed = True
                else:
                    pass 
                
                non_gray = cv.cvtColor(gray, cv.COLOR_GRAY2RGB)
                all_detect_describe_start = time.time()
                (all_kps, all_feature) = self.object_holder.detectAndCompute(non_gray, None)
                all_detect_describe_end = time.time()
                # (correspondence_kps, correspondence_feat) = self.object_holder(non_gray, mask)

            elif self.algorithm_num == 9:
                ''' ASLFeat [In Testing] '''
                if not self.detectAndCompute_first_pass_completed:
                    self.object_holder = ASLFeatFeatures2D()
                    self.detectAndCompute_first_pass_completed = True
                else:
                    pass 
                
                non_gray = cv.cvtColor(gray, cv.COLOR_GRAY2RGB)
                all_detect_describe_start = time.time()
                (all_kps, all_feature) = self.object_holder.detectAndCompute(non_gray, None)
                all_detect_describe_end = time.time()
                # (correspondence_kps, correspondence_feat) = self.object_holder(non_gray, mask)

                ###############################################################
                ##########################[Combination]########################
                ###############################################################
            elif self.algorithm_num == 10:
                detector = cv.FastFeatureDetector_create()
                all_detect_describe_start = time.time()
                all_kps = detector.detect(gray, None)
                descriptor = cv.SIFT_create()
                (all_kps, all_feature) = descriptor.compute(gray, all_kps)
                all_detect_describe_end = time.time()
                # correspondence_kps = detector.detect(gray, mask)
                # (correspondence_kps, correspondence_feat) = descriptor.compute(gray, correspondence_kps)

            elif self.algorithm_num == 11:
                detector = cv.AgastFeatureDetector_create()
                all_detect_describe_start = time.time()
                all_kps = detector.detect(gray, None)
                descriptor = cv.SIFT_create()
                (all_kps, all_feature) = descriptor.compute(gray, all_kps)
                all_detect_describe_end = time.time()
                # correspondence_kps = detector.detect(gray, mask)
                # (correspondence_kps, correspondence_feat) = descriptor.compute(gray, correspondence_kps)

            elif self.algorithm_num == 12:
                detector = cv.AgastFeatureDetector_create()
                all_detect_describe_start = time.time()
                all_kps = detector.detect(gray, None)
                descriptor = cv.xfeatures2d.SURF_create(800)
                (all_kps, all_feature) = descriptor.compute(gray, all_kps)
                all_detect_describe_end = time.time()
                # correspondence_kps = detector.detect(gray, mask)
                # (correspondence_kps, correspondence_feat) = descriptor.compute(gray, correspondence_kps)

            elif self.algorithm_num == 13:
                detector = cv.SIFT_create()
                all_detect_describe_start = time.time()
                all_kps = detector.detect(gray, None)
                descriptor = cv.xfeatures2d.SURF_create()
                (all_kps, all_feature) = descriptor.compute(gray, all_kps)
                all_detect_describe_end = time.time()
                # correspondence_kps = detector.detect(gray, mask)
                # (correspondence_kps, correspondence_feat) = descriptor.compute(gray, correspondence_kps)

            elif self.algorithm_num == 14:
                detector = cv.xfeatures2d.SURF_create()
                all_detect_describe_start = time.time()
                all_kps = detector.detect(gray, None)
                descriptor = cv.SIFT_create()
                (all_kps, all_feature) = descriptor.compute(gray, all_kps)
                all_detect_describe_end = time.time()
                # correspondence_kps = detector.detect(gray, mask)
                # (correspondence_kps, correspondence_feat) = descriptor.compute(gray, correspondence_kps)

            elif self.algorithm_num == 15:
                detector = cv.ORB_create()
                all_detect_describe_start = time.time()
                all_kps = detector.detect(gray, None)
                descriptor = cv.xfeatures2d.BriefDescriptorExtractor_create()
                (all_kps, all_feature) = descriptor.compute(gray, all_kps)
                all_detect_describe_end = time.time()
                # correspondence_kps = detector.detect(gray, mask)
                # (correspondence_kps, correspondence_feat) = descriptor.compute(gray, correspondence_kps)
            
            elif self.algorithm_num == 16:
                detector = cv.FastFeatureDetector_create()
                all_detect_describe_start = time.time()
                all_kps = detector.detect(gray, None)
                descriptor = cv.xfeatures2d.SURF_create()
                (all_kps, all_feature) = descriptor.compute(gray, all_kps)
                all_detect_describe_end = time.time()
                print( "Threshold: {}".format(detector.getThreshold()) )
                print( "nonmaxSuppression:{}".format(detector.getNonmaxSuppression()))
                print( "neighborhood: {}".format(detector.getType()) )
                print( "Total Keypoints with nonmaxSuppression: {}".format(len(all_kps)) )

        # correspondence_kpt_feat = (correspondence_kps, correspondence_feat)
        all_kpt_feat = (all_kps, all_feature)
        # kpt_feat_collection.append(correspondence_kpt_feat)
        kpt_feat_collection.append(all_kpt_feat)

        self.feature_detection_description_timing_holder = all_detect_describe_end - all_detect_describe_start

        # self.mean_feature_detection_description_timing_per_point = self.feature_detection_description_timing_holder/len(all_kps)

        # print("Here are the keypoints detected", kps, "\n")

        return kpt_feat_collection

    def matchKeypoints(self, kpsA, kpsB, featuresA, featuresB, ratio, reprojThresh):

        # compute the raw matches and initialise the list of actual matches
        if self.algorithm_num in [3, 4, 14, 15]:
            matcher = cv.BFMatcher(cv.NORM_HAMMING, crossCheck=False)
        else:
            matcher = cv.BFMatcher(cv.NORM_L2, crossCheck=False)

        feature_matching_start = time.time()
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
        
        feature_matching_end = time.time()
        self.feature_matching_timing = feature_matching_end - feature_matching_start
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
        
            findHomography_start = time.time()
            (H, status) = cv.findHomography(src_pts, dst_pts, cv.RANSAC, reprojThresh)
            findHomography_end = time.time()

            self.findHomography_timing = findHomography_end - findHomography_start
            self.number_of_inlier = np.sum(status)
            self.inlier_percentage = float(np.sum(status)) / float(len(status))

            print('Inlier Ratio, number of inlier/number of matches: {}\n'.format(float(np.sum(status)) / float(len(status))))
            print("This is the homography matrix:\n", H, "\n")
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


