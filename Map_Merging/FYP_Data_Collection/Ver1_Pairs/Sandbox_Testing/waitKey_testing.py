import cv2 as cv

image = cv.imread('../Images/ap_hill_crop_1.jpg',0)

cv.imshow('show', image)

key = cv.waitKey(0)

if key == ord('s'):
    print('It is s')
else:
    print('Something else')

# It works