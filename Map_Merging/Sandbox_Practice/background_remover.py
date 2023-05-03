import cv2 as cv
import numpy as np
import sys

from map_cropper import MapCropper
cropper = MapCropper()

img = cv.imread('Images/level5_hokuyo.jpg')
img = cropper.crop(img)
gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
mask = gray.copy()

# Thresholding does not help to make the mask effectively
# We are locating all the black contours, and overwriting their pixel values to 255
# and locating all the 'grey' background, and overwriting their pixel values to 0
black = np.where((mask[:,:] < 60))
grey = np.where((mask[:,:] < 240) & (gray[:,:] > 100))

# In the alpha channel, 0 means fully transparent, while 255 means opaque
mask[black] = 255
mask[grey] = 0

# Put mask into alpha channel
result = img.copy()
result = cv.cvtColor(result, cv.COLOR_BGR2BGRA)
result[:, :, 3] = mask
cv.imwrite('img_no_bckgd.png', result)
result = cv.cvtColor(result, cv.COLOR_BGRA2BGR)
print(result.shape)
result = cv.cvtColor(result, cv.COLOR_BGR2BGRA)
print(result[:,:,3])


# png = cv.imread('Images/true_png.png')
# print(png.shape)
# png = cv.cvtColor(png, cv.COLOR_BGRA2GRAY)
# cv.imshow('New', png)
# cv.imwrite('new.png', png)
# cv.waitKey(0)