import cv2 as cv
import numpy as np

img = cv.imread('Images/result.jpg', 0)

location_white_pixels = np.where((img[:,:] <= 255) & (img[:,:] >= 220))
location_gray_pixels = np.where((img[:,:] <= 219) & (img[:,:] >= 151))
location_black_pixels = np.where((img[:,:] >= 0) & (img[:,:] <=150))

img[location_black_pixels] = 0
img[location_white_pixels] = 255
img[location_gray_pixels] = 217

cv.imwrite('Cleaned.jpg', img)