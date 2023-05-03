import os 
import sys

import cv2 as cv
import numpy as np
import imutils 


# sys.path.append('/home/rllyryan/Documents/GitHub/FYP_AY21-22_Ryan/Map_Merging')
# print(sys.path)

CURDIR = os.path.dirname(__file__)
sys.path.append(os.path.abspath(os.path.join(CURDIR, '..', '..')))

from Utilities import GeodescFeatures2D
from Utilities import ContextDescFeatures2D
from Utilities import ASLFeatFeatures2D

class Stitcher:

    '''
    [DATA COLLECTION]
    In the paper "Performance Evaluation of Feature Detectors and Descriptors Beyond the Visible", they evaluated
    the detectors and descriptors separately. For this data collection, we will use the detectors along with their
    native descriptors, unless otherwise stated (i.e. testing combinations such as SIFT-SURF). No discrimination 
    will be present in this testing, and will be true to how the creators intended them to be.

    Test Set:
        1. Freiburg Campus - Cyrill
        2. Intel
        3. A*STAR Level 5 - Arena
        4. ...
        5. ...

    What needs to be collected:
        1. Repeatability against Scale and Rotation
        2. Number of Correspondences against Scale and Rotation
        3. Matching Score against Scale and Rotation
        4. Number of Matches against Scale and Rotation
        
        I.  Recall
        II. Precision

    Augmentation Range:
        1. Rotation (0 - 90 degrees)
        2. Scale (0 - 500 percent)

    Miscellaneous Indicators:
        1. Computational Cost
            a. Mean Feature-Detection-Description Time per Feature Point  
            b. Mean Feature-Matching Time per Feature Point
    
    Gazebo World Testing:
        1. Create a ground truth, whereby one robot will map the whole world.
        2. Let two robots map the same field, and attempt merging.
    '''

    # Flag to remove the need to initialise neural network models that takes some time
    detectAndCompute_first_pass_completed = False

    # Object holder to save the loading of weights of the neural network models after initialisation
    object_holder = None

    def __init__(self):
        self.isv3 = imutils.is_cv3(or_better = True)

    def stitch(self, images, ratio = 0.7, reprojThresh = 4.0, showMatches = False):
        # unpack the images, then detect keypoints and extract
        # local invariant descriptors from them
        (imageB, imageA) = images
        (kpsA, featuresA) = self.detectAndDescribe(imageA)
        (kpsB, featuresB) = self.detectAndDescribe(imageB)

        # Match features between the two images
        M = self.matchKeypoints(kpsA, kpsB, featuresA, featuresB, ratio, reprojThresh)

        # if the match is None, then there aren't sufficient matched
        # keypoints to created a panorama
        if M is None:
            return None
        else:
            # otherwise, apply a perspective warp to stitch the images together
            (matches, H, status) = M
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

            cv.imshow('maskA', maskA)
            cv.imshow('maskB', maskB)
            cv.imshow('Combined Mask',maskA)
            

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
            cv.imshow('Pre-result', result)
            # Find the location of all the white and blacks
            location_white_and_black_result = np.where((result[:,:] == 0))
            result[location_white_and_black_result] = 205

            # result[0:imageB.shape[0], 0:imageB.shape[1], :] = imageB[:, :, :]
            # result[np.where(result[:,:,3] == 0)] = 0
            # Channels of Interest
            # result = cv.cvtColor(result, cv.COLOR_BGRA2GRAY)
            # print(result)

        # check to see if the keypoint matches should be visualised
        if showMatches:
            vis = self.drawMatches(imageA, imageB, kpsA, kpsB, matches, status)

            # return a tuple of the stitched image and the visualisation
            return (result, vis)
        
        return result
    
    def detectAndDescribe(self, image):

        # get the mask from the alpha channel
        # pass the mask to the detectors because the alpha channel
        # becomes a black background
        mask = image[:, :, 3]

        # convert the image to grayscale
        gray = cv.cvtColor(image, cv.COLOR_BGR2GRAY)

        # check to see if we are using OpenCV 3.X
        if self.isv3:
            
            ###############################################################
            #########[Keypoint Detectors and Feature Descriptors]##########
            ###############################################################

            ''' SIFT [Successful] Failed at 150 width '''
            # descriptor = cv.SIFT_create()
            # (kps, feature) = descriptor.detectAndCompute(gray, mask)

            ''' SURF [Successful] (Patented) '''
            # descriptor = cv.xfeatures2d.SURF_create(800)
            # (kps, feature) = descriptor.detectAndCompute(gray, mask)

            ''' BRISK [Successful] Failed at 210 width '''
            # brisk = cv.BRISK_create()
            # (kps, feature) = brisk.detectAndCompute(gray, mask)

            ''' ORB [Unsuccessful] It just fails at equal resolution '''
            orb = cv.ORB_create(100000)
            (kps, feature) = orb.detectAndCompute(gray, None)

            ''' KAZE [Successful] Failed at 250 width '''
            # kaze = cv.KAZE_create()
            # (kps, feature) = kaze.detectAndCompute(gray, mask)

            ''' AKAZE [Successful] Failed at 420 width '''
            # akaze = cv.AKAZE_create()
            # (kps, feature) = akaze.detectAndCompute(gray, None)

            ''' GeoDesc [In Testing] '''
            # if not self.detectAndCompute_first_pass_completed:
            #     self.object_holder = GeodescFeatures2D()
            #     self.detectAndCompute_first_pass_completed = True
            # else:
            #     pass 
            
            # non_gray = cv.cvtColor(gray, cv.COLOR_GRAY2RGB)
            # (kps, feature) = self.object_holder.detectAndCompute(non_gray, None)

            # print('HI')
            # print(len(kps))
            # print(len(feature))

            ''' ContextDesc [In Testing] '''
            # if not self.detectAndCompute_first_pass_completed:
            #     self.object_holder = ContextDescFeatures2D()
            #     self.detectAndCompute_first_pass_completed = True
            # else:
            #     pass 
            
            # non_gray = cv.cvtColor(gray, cv.COLOR_GRAY2RGB) # ContextDesc needs the BGR image for context awareness
            # (kps, feature) = self.object_holder.detectAndCompute(non_gray, None)

            ''' ASLFeat [In Testing] '''
            # if not self.detectAndCompute_first_pass_completed:
            #     self.object_holder = ASLFeatFeatures2D()
            #     self.detectAndCompute_first_pass_completed = True
            # else:
            #     pass 
            
            # non_gray = cv.cvtColor(gray, cv.COLOR_GRAY2RGB)
            # (kps, feature) = self.object_holder.detectAndCompute(non_gray, None)

            ###############################################################
            ###################[Keypoint Detectors]########################
            ###############################################################

            ''' MSER [Not tested] Failed with ORB''' # Only a keypoint detector
            # mser = cv.MSER_create()
            # mser_kp = mser.detect(gray, None)

            ''' AGAST [Not tested] ''' # Only a keypoint detector
            # agast = cv.AgastFeatureDetector_create()
            # kps = agast.detect(gray, None)

            ''' FAST [Not tested] '''
            # fast = cv.FastFeatureDetector_create()
            # kps = fast.detect(gray, None)

            ###############################################################
            #####################[Feature Descriptors]#####################
            ###############################################################

            ''' BRIEF [Unsuccessful] It just fails at equal resolution '''
            # star = cv.xfeatures2d.StarDetector_create()
            # star_kp = star.detect(gray, None)
            # brief = cv.xfeatures2d.BriefDescriptorExtractor_create()
            # (kps, feature) = brief.compute(gray, star_kp)

            ''' FREAK [Not tested] ''' # Only a feature detector
            # freak = cv.xfeatures2d.FREAK_create()
            # (kps, feature) = freak.compute(gray, <insert keypoints>)

            ''' LUCID '''
            # lucid = cv.xfeatures2d.LUCID_create()
            # (kps, feature) = lucid.compute(gray, <insert keypoints>)

            ###############################################################
            ##########################[Combination]########################
            ###############################################################

            # detector = cv.FastFeatureDetector_create()
            # kps = detector.detect(gray, mask)
            # descriptor = cv.SIFT_create()
            # (kps, feature) = descriptor.compute(gray, kps)

            # detector = cv.AgastFeatureDetector_create()
            # kps = detector.detect(gray, None)
            # descriptor = cv.SIFT_create()
            # (kps, feature) = descriptor.compute(gray, kps)

            # detector = cv.AgastFeatureDetector_create()
            # kps = detector.detect(gray, None)
            # descriptor = cv.xfeatures2d.SURF_create()
            # (kps, feature) = descriptor.compute(gray, kps)

            # detector = cv.SIFT_create()
            # kps = detector.detect(gray, None)
            # descriptor = cv.xfeatures2d.SURF_create()
            # (kps, feature) = descriptor.compute(gray, kps)

            # detector = cv.xfeatures2d.SURF_create()
            # kps = detector.detect(gray, mask)
            # descriptor = cv.SIFT_create()
            # kps, feature = descriptor.compute(gray, kps)

            # detector = cv.ORB_create()
            # kps = detector.detect(gray, None)
            # descriptor = cv.xfeatures2d.BriefDescriptorExtractor_create()
            # (kps, feature) = descriptor.compute(gray, kps)

        print("Number of keypoints detected: ", len(kps))
        # print("Here are the keypoints detected", kps, "\n")

        return (kps, feature)

    def matchKeypoints(self, kpsA, kpsB, featuresA, featuresB, ratio, reprojThresh):

        # compute the raw matches and initialise the list of actual matches
        matcher = cv.BFMatcher()
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
        

            (H, status) = cv.findHomography(src_pts, dst_pts, cv.RANSAC, reprojThresh)

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
                cv.line(vis, ptA, ptB, (139, 0, 0), 1)

        return vis


