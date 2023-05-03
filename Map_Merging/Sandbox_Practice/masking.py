import cv2 as cv
import numpy as np
import matplotlib.pyplot as plt

img = cv.imread('Images/Cat1.jpg')
cv.imshow('Cats', img)

'''We would like to focus on certain regions in the image'''

# The dimensions of the mask has to be the same size as the image
blank = np.zeros(img.shape[:2], dtype = 'uint8')

cv.imshow('Blank Image', blank)

mask = cv.circle(blank, (img.shape[1]//2, img.shape[0]//2 + 100), 100, 255, -1)
cv.imshow('Mask', mask)

masked = cv.bitwise_and(img, img, mask = mask)
cv.imshow('Masked Image', masked)

cv.waitKey(0)