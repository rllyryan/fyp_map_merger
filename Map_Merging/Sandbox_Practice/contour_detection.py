import cv2 as cv
import numpy as np

img = cv.imread('Images/cat1.jpg')
cv.imshow('Cats', img)

blank = np.zeros(img.shape, dtype='uint8')
cv.imshow('Blank', blank)

gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
cv.imshow('Gray', gray)

# blur = cv.GaussianBlur(gray, (5,5), cv.BORDER_DEFAULT)

# # canny = cv.Canny(blur, 125, 175)
# # cv.imshow('Canny Edge', canny)

# Finding contours using thresholding instead of Canny, binarising the image
ret, thresh = cv.threshold(gray, 125, 255, cv.THRESH_BINARY)
cv.imshow('Thresh', thresh)


# contours, hierachies = cv.findContours(canny, cv.RETR_LIST, cv.CHAIN_APPROX_NONE)
# This method looks at the edges in the image, hierachies refers to the hierachical representation of contours
contours, hierachies = cv.findContours(thresh, cv.RETR_LIST, cv.CHAIN_APPROX_NONE)
print(f'{len(contours)} contour(s) found!')

# Contours and edges are not exactly the same thing

# Draw contours found on a blank canvas
cv.drawContours(blank, contours, -1, (0,0,255), 2)
cv.imshow('Contours Drawn', blank)

cv.waitKey(0)