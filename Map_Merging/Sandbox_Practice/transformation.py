import cv2 as cv 
import numpy as np
def translate(img, x, y):
    transMat = np.float32([[1,0,x],[0,1,y]])
    dimensions = (img.shape[1], img.shape[0])
    return cv.warpAffine(img, transMat, dimensions)

img = cv.imread('Images/cat1.jpg')

# -x --> translate image to the left
# -y --> translate image up

translated = translate(img, 100, 100)
cv.imshow('Translate', translated)

cv.waitKey(0)