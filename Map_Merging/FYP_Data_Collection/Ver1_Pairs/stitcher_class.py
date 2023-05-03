import cv2 as cv
import numpy as np
import imutils 
import os 
import sys

sys.path.append('/home/rllyryan/Documents/GitHub/FYP_AY21-22_Ryan/Map_Merging')
# print(sys.path)

from Utilities import GeodescFeatures2D
from Utilities import ContextDescFeatures2D
from Utilities import ASLFeatFeatures2D
class Stitcher:
    def __init__(self):
        self.isv3_or_better = imutils.is_cv3(or_better = True)

        # Flag to remove the need to initialise neural network models that takes some time
        self.detectAndCompute_first_pass_completed = False

        # Object holder to save the loading of weights of the neural network models after initialisation
        self.object_holder = None

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
            result = cv.warpPerspective(imageA, H, (1500,1500))
            # cv.warpPerspective()
            # print(imageB.shape)
            # 0:imageB.shape[0]
            result[0:imageB.shape[0], 0:imageB.shape[1]] = imageB
        
        # check to see if the keypoint matches should be visualised
        if showMatches:
            vis = self.drawMatches(imageA, imageB, kpsA, kpsB, matches, status)

            # return a tuple of the stitched image and the visualisation
            return (result, vis)
        
        return result
    
    def detectAndDescribe(self, image):

        # convert the image to grayscale
        gray = cv.cvtColor(image, cv.COLOR_BGR2GRAY)

        # check to see if we are using OpenCV 3.X
        if self.isv3_or_better:
            
            ###############################################################
            #########[Keypoint Detectors and Feature Descriptors]##########
            ###############################################################

            ''' SIFT [Successful] Failed at 150 width '''
            # descriptor = cv.SIFT_create()
            # (kps, feature) = descriptor.detectAndCompute(gray, None)

            ''' SURF [Successful] (Patented) '''
            # descriptor = cv.xfeatures2d.SURF_create(1000)
            # (kps, feature) = descriptor.detectAndCompute(gray, None)

            ''' BRISK [Successful] Failed at 210 width '''
            # brisk = cv.BRISK_create()
            # (kps, feature) = brisk.detectAndCompute(gray, None)

            ''' ORB [Unsuccessful] It just fails at equal resolution '''
            # orb = cv.ORB_create()
            # (kps, feature) = orb.detectAndCompute(gray, None)

            ''' KAZE [Successful] Failed at 250 width '''
            # kaze = cv.KAZE_create()
            # (kps, feature) = kaze.detectAndCompute(gray, None)

            ''' AKAZE [Successful] Failed at 420 width '''
            # akaze = cv.AKAZE_create()
            # (kps, feature) = akaze.detectAndCompute(gray, None)

            ###############################################################
            #####################[Machine Learning]########################
            ###############################################################

            ''' GeoDesc [Successful] '''
            if not self.detectAndCompute_first_pass_completed:
                self.object_holder = GeodescFeatures2D()
                self.detectAndCompute_first_pass_completed = True
            else:
                pass 

            (kps, feature) = self.object_holder.detectAndCompute(gray, None)

            ''' ContextDesc [Successful] '''
            # if not self.detectAndCompute_first_pass_completed:
            #     self.object_holder = ContextDescFeatures2D()
            #     self.detectAndCompute_first_pass_completed = True
            # else:
            #     pass 
            
            # non_gray = cv.cvtColor(gray, cv.COLOR_GRAY2RGB) # ContextDesc needs the BGR image for context awareness
            # (kps, feature) = self.object_holder.detectAndCompute(non_gray, None)

            ''' ASLFeat [Successful] '''
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

            ''' FAST-SIFT '''
            # detector = cv.FastFeatureDetector_create()
            # kps = detector.detect(gray, mask)
            # descriptor = cv.SIFT_create()
            # (kps, feature) = descriptor.compute(gray, kps)

            ''' AGAST-SIFT '''
            # detector = cv.AgastFeatureDetector_create()
            # kps = detector.detect(gray, None)
            # descriptor = cv.SIFT_create()
            # (kps, feature) = descriptor.compute(gray, kps)

            ''' AGAST-SURF '''
            # detector = cv.AgastFeatureDetector_create()
            # kps = detector.detect(gray, None)
            # descriptor = cv.xfeatures2d.SURF_create()
            # (kps, feature) = descriptor.compute(gray, kps)

            ''' SIFT-SURF '''
            # detector = cv.SIFT_create()
            # kps = detector.detect(gray, None)
            # descriptor = cv.xfeatures2d.SURF_create()
            # (kps, feature) = descriptor.compute(gray, kps)

            ''' SURF-SIFT '''
            # detector = cv.xfeatures2d.SURF_create()
            # kps = detector.detect(gray, mask)
            # descriptor = cv.SIFT_create()
            # kps, feature = descriptor.compute(gray, kps)

            ''' ORB-BRIEF '''
            # detector = cv.ORB_create()
            # kps = detector.detect(gray, None)
            # descriptor = cv.xfeatures2d.BriefDescriptorExtractor_create()
            # (kps, feature) = descriptor.compute(gray, kps)

        print("Number of keypoints detected: ", len(kps))
        print("Here are the keypoints detected", kps, "\n")

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

        # for m, n in rawMatches:
        #     if m.distance < ratio * n.distance:
        #         good_matches.append(m)

        # compute the homography requiring at least 4 matches  
        if len(good_matches) > 4:
            # construct the two sets of points
            src_pts = np.float32([kpsA[i].pt for (_,i) in good_matches])
            dst_pts = np.float32([kpsB[i].pt for (i, _) in good_matches])

            (H, status) = cv.findHomography(src_pts, dst_pts, cv.RANSAC, reprojThresh)

            print("This is the homography matrix:\n", H, "\n")
            # print("This is the status:\n", status)

            # return the matches along with the homography matrix and status of each matched point
            return (good_matches, H, status)
        
        return None

    def drawMatches(self, imageA, imageB, kpsA, kpsB, matches, status):
        (hA, wA) = imageA.shape[:2]
        (hB, wB) = imageB.shape[:2]
        print('hA: {}, wA: {}'.format(hA, wA))
        print('hB: {}, wB: {}'.format(hB, wB))

        vis = np.zeros((max(hA, hB), wA + wB, 4), dtype = 'uint8')
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


