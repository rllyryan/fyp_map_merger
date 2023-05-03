import cv2 as cv

img = cv.imread('Images/ap_hill_crop_1.jpg', 0)

width = int(img.shape[1] * 2.5)
height = int(img.shape[0] * 25.5)
dim = (width, height)
print(dim)

imageB_scal = cv.resize(img, dim, interpolation = cv.INTER_AREA)

cv.imshow('Scaled', imageB_scal)
cv.waitKey(0)