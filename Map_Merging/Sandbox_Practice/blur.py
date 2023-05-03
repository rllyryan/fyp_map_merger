import cv2 as cv
import numpy as np
import matplotlib.pyplot as plt

img = cv.imread('Images/Cat1.jpg')
print(img)
cv.imshow('Cats', img)

# Blur is applied to the middle pixel of the kernel that
# is convolved through the image of interest

# Averaging (This is just a window sliding)
average = cv.blur(img, (3,3)) # Bigger the kernel, the blurrer the image
cv.imshow('Average Blur', average)

# Gaussian (The kernel has weights now)
gauss = cv.GaussianBlur(img, (3,3), sigmaX=0)
cv.imshow('Gaussian Blur', gauss)

# Median Blur (Same as averaging of surrounding pixels, but finding median --> can reduce noise)
# Reduction of substantial amount of noise
# Not meant for high kernel sizes like 7
median = cv.medianBlur(img, ksize=3)
cv.imshow('Median Blur', median)

# Bilateral Blur
# Most effective, as it applies blurring and retain edges in the image
bilateral = cv.bilateralFilter(img, d=10, sigmaColor=35, sigmaSpace=25)
cv.imshow('Bilateral Blur', bilateral)

cv.waitKey(0)