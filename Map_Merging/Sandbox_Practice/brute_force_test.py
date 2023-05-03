import cv2 as cv
import numpy as np
import matplotlib.pyplot as plt
import imutils

img1 = cv.imread('Panorama_Stitching/Images/dabao1.jpg')
img1 = imutils.resize(img1, width=600)
cv.imshow('Img1', img1)

img2 = cv.imread('Panorama_Stitching/Images/dabao2.jpg')
img2 = imutils.resize(img2, width=600)
cv.imshow('Img2', img2)

gray1 = cv.cvtColor(img1, cv.COLOR_BGR2GRAY)
gray2 = cv.cvtColor(img2, cv.COLOR_BGR2GRAY)


sift = cv.SIFT_create()

kp1, des1 = sift.detectAndCompute(img1, None)
kp2, des2 = sift.detectAndCompute(img2, None)

bf = cv.BFMatcher(cv.NORM_L1, crossCheck = True)
# bf = cv.BFMatcher()
# matches = bf.knnMatch(des1, des2, k = 2)
matches = bf.match(des1, des2)

# for m, n in matches:
#     print(n)

# good = []
# for m, n in matches:
#     if m.distance < 0.75 * n.distance:
#         good.append([m])

matches = sorted(matches, key = lambda x:x.distance)

# img3 = cv.drawMatchesKnn(img1, kp1, img2, kp2, matches, None, flags = cv.DRAW_MATCHES_FLAGS_NOT_DRAW_SINGLE_POINTS)
img3 = cv.drawMatches(img1, kp1, img2, kp2, matches[:200], None, flags = cv.DRAW_MATCHES_FLAGS_NOT_DRAW_SINGLE_POINTS)


cv.imshow('Features Detected', img3)
cv.waitKey(0)
