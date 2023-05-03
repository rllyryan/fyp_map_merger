import cv2 as cv
import imutils

print(cv.__version__)
print(imutils.is_cv3(or_better=True))

tup = (1, 2, '2')

print(type(tup))
print(tup[1])

sift = cv.SIFT_create()
surf = cv.xfeatures2d.SURF_create(800)


# img = cv.imread('Images/dabao1.jpg')
# cv.imshow('check', img)
# cv.waitKey(0)


