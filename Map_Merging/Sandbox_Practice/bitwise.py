import cv2 as cv
import numpy as np
import matplotlib.pyplot as plt

# img = cv.imread('Images/Cat1.jpg')
# cv.imshow('Cats', img)

blank = np.zeros((400,400), dtype = 'uint8')

rectangle = cv.rectangle(blank.copy(), (30,30), (370, 370), 255, -1)
circle = cv.circle(blank.copy(), (200,200), 200, 255, -1)

cv.imshow('Rectangle', rectangle)
cv.imshow('Circle', circle)

# bitwise AND --> Intersecting regions
bitwise_and = cv.bitwise_and(rectangle, circle)
cv.imshow('Bitwise AND', bitwise_and)

# bitwise OR --> Non-intersecting and intersecting regions
bitwise_or = cv.bitwise_or(rectangle, circle)
cv.imshow('Bitewise OR', bitwise_or)

# bitwise XOR --> Non-intersecting regions
bitwise_xor = cv.bitwise_xor(rectangle, circle)
cv.imshow('Bitwise XOR', bitwise_xor)

# bitwise NOT
bitwise_NOT = cv.bitwise_not(rectangle)
cv.imshow('Rectangle NOT', bitwise_NOT)

cv.waitKey(0)