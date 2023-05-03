import cv2 as cv
import numpy as np
import matplotlib.pyplot as plt

# Reading images in BGR in the OPENCV
# Outside OPENCV the colours are RGB and inversed
img = cv.imread('Images/Cat1.jpg')
cv.imshow('Cats', img)

# Image we got is completely different, because matplotlib has no idea is a BGR colour
# plt.imshow(img)
# plt.show()

# BGR to Grayscale
gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
cv.imshow('Gray', gray)

# BGR to HSV
hsv = cv.cvtColor(img, cv.COLOR_BGR2HSV)
cv.imshow('HSV', hsv)

# BGR to LAB
lab = cv.cvtColor(img, cv.COLOR_BGR2LAB)
cv.imshow('LAB', lab)

# BGR to RGB
rgb = cv.cvtColor(img, cv.COLOR_BGR2RGB)
cv.imshow('RGB', rgb)

# You cannot convert grayscale image to HSV immediately
# Must convert gray to BGR then to HSV

plt.imshow(rgb)
plt.show()

cv.waitKey(0)