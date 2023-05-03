import cv2 as cv
import numpy as np
import matplotlib.pyplot as plt

img = cv.imread('Images/Cat1.jpg')
cv.imshow('Cats', img)

# Histograms for grayscale images
gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
cv.imshow('Gray', gray)

gray_hist = cv.calcHist([gray], channels=[0], mask=None, histSize=[256], ranges=[0,256])

# plt.figure()
# plt.title('Grayscale Histogram')
# plt.xlabel('Bins')
# plt.ylabel('# of pixels')
# plt.plot(gray_hist)
# plt.xlim([0,256])
# plt.show()

# Bins is the x-axis, represents the intervals of pixel intensities
# We can also compute the histogram of the grayscale of the mask

# Colour Histogram
colors = ('b', 'g', 'r')

plt.figure()
plt.title('Colors Histogram')
plt.xlabel('Bins')
plt.ylabel('# of pixels')
plt.xlim([0,256])

for i, col in enumerate(colors):
    hist = cv.calcHist([img], [i], None, [256], [0,256])
    plt.plot(hist, color = col)
    plt.xlim([0,256])

plt.show()

cv.waitKey(0)