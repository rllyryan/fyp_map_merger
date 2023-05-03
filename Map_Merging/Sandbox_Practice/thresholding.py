import cv2 as cv
import numpy as np
import matplotlib.pyplot as plt

img = cv.imread('Images/Cat1.jpg')
cv.imshow('Cats', img)

gray=cv.cvtColor(img, cv.COLOR_BGR2GRAY)
cv.imshow('Gray', gray)

# Simple Thresholding
threshold, thresh = cv.threshold(gray, 130, 255, cv.THRESH_BINARY)
cv.imshow('Simple Thresholded', thresh)

threshold, thresh_inv = cv.threshold(gray, 130, 255, cv.THRESH_BINARY_INV)
cv.imshow('Simple Thresholded Inverse', thresh_inv)

# Adaptive Thresholding --> No need to specify the threshold value
# Window sliding and getting the average ofthe pixels in the window
adaptive_thresholding = cv.adaptiveThreshold(gray, 255, adaptiveMethod=cv.ADAPTIVE_THRESH_MEAN_C, thresholdType=cv.THRESH_BINARY, blockSize=11, C=3)
cv.imshow('Adaptive Thresholding', adaptive_thresholding)

cv.waitKey(0)