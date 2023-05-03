import cv2 as cv
import numpy as np
import matplotlib.pyplot as plt

# Reading images in BGR in the OPENCV
# Outside OPENCV the colours are RGB and inversed
img = cv.imread('Images/Cat1.jpg')
cv.imshow('Cats', img)

'''Splitting images into their color channels'''

b,g,r = cv.split(img)

blank = np.zeros(img.shape[:2], dtype='uint8')
blue = cv.merge([b, blank, blank])
cv.imshow('Got Blue', blue)

# Represented with grayscale, whiter the region the higher the concentration of the color
# Grayscale images have a shape of 1
cv.imshow('Blue', b)
cv.imshow('Green', g)
cv.imshow('Red', r)

# Comparing the size of the image data
print(img.shape) # (1280, 960, 3)
print(b.shape)
print(g.shape)
print(r.shape)

merged = cv.merge([b,g,r]) # pass in a list
cv.imshow('Merged', merged)



cv.waitKey(0)