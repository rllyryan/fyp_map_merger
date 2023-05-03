import cv2 as cv
import numpy as np
import matplotlib.pyplot as plt
import imutils

'''
Keypoints Detector and Feature Descriptors: SIFT, SURF, ORB, BRISK, KAZE, AKAZE

Keypoints Detectors: FAST, AGAST

Feature Descriptors: FREAK, LUCID
'''

img = cv.imread('Images/level5_hokuyo_crop2.jpg')
img = imutils.resize(img, width = 500)
cv.imshow('Cats BGR', img)
# Grayscaling because we do not want to handle 3 channels of colours
gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
# cv.imshow('Cats Gray', gray)

''' Gaussian Blurring '''
# Gaussian blurring is utilised to minimise any noise present in the image
blur = cv.GaussianBlur(gray, (1,1), 0)

''' SIFT Feature Detector '''
sift = cv.SIFT_create()
sift_kp, sift_des = sift.detectAndCompute(blur, None)

''' ORB Feature Detector '''
orb = cv.ORB_create()
orb_kp, orb_des = orb.detectAndCompute(blur, None)

''' SURF Feature Detector (Patented) ''' # Need to solve the error in the NONFREEMODULES
# surf = cv.xfeatures2d.SURF_create(800)
# surf_kp, surf_des = surf.detectAndCompute(blur, None)

''' FAST Feature Detector ''' # Apparently for corner detection
fast = cv.FastFeatureDetector_create()
fast_kp = fast.detect(blur, None)

''' CenSurE Feature Detector '''
star = cv.xfeatures2d.StarDetector_create()
star_kp = star.detect(blur, None)

''' BRIEF Feature Detector ''' # Doesn't have method to find features (CenSurE recommended)
brief = cv.xfeatures2d.BriefDescriptorExtractor_create()
brief_kp, brief_des = brief.compute(blur, star_kp)

''' Draw Keypoints on any version of the image '''
img = cv.drawKeypoints(blur, sift_kp, img, flags = cv.DRAW_MATCHES_FLAGS_DRAW_RICH_KEYPOINTS)
cv.imshow('Cats ORB', img)

# for d in brief_des:
#     print(d)

cv.waitKey(0)