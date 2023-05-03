# import the necessary packages
# from stitcher_class import Stitcher
import re
from turtle import width
from stitcher_png_class import Stitcher
import argparse
import imutils
import cv2 as cv
import matplotlib.pyplot as plt
import random
import time
import multiprocessing
import sys
import os

from PIL import Image as im

sys.path.append('../../../')

from Map_Merging.Utilities.background_remover import BackgroundRemover
from Utilities.map_cropper import MapCropper

# Construct the argument parse and parse the arguments
# ap = argparse.ArgumentParser()
# ap.add_argument('-f', '--first', required = True, help = 'path to the first image')
# ap.add_argument('-s', '--psecond', required = True, help = 'path to the second image')
# args = vars(ap.parse_args())

# Load the two images and resize them to have a width of 500 pixelst
# For faster processing

cropper = MapCropper()
remover = BackgroundRemover()

imageA = cv.imread('Images/arena_astar_crop_1.jpg')
print('Size of imageA is: {}'.format(imageA.shape))
# print(imageA)
# imageA = cv.cvtColor(imageA, cv.COLOR_BGR2GRAY)
# imageA = cropper.crop(imageA)
# imageA = imutils.resize(imageA, width = 500)
imageA = remover.remove_background(imageA)
# cv.imwrite('A.png', imageA)

imageB = cv.imread('Images/arena_astar_crop_2.jpg')
print('Size of imageB is: {}'.format(imageB.shape))
# imageB = cv.cvtColor(imageB, cv.COLOR_BGR2GRAY)
# imageB = cropper.crop(imageB)
# imageB = imutils.resize(imageB, width = 500)
imageB = remover.remove_background(imageB)
# cv.imwrite('B.png', imageB)

'''
What do we have:
    1. Two images that have an additional 4th channel that dictates transparency

What do we need to do:
    1. Stitch the images together while preserving the transparency of the two images
'''

# Stitch the images together to create a merged image
stitcher = Stitcher()

print("Number of CPUs used in the stitching is: ", multiprocessing.cpu_count(), '\n')

start_time = time.time()

(result, vis) = stitcher.stitch([imageA, imageB], showMatches = True)

end_time = time.time()

print("[MAIN] Total time taken to stitch is: ", end_time - start_time)

# result = remover.remove_background(result)

# result = cv.GaussianBlur(result, ksize = (9,9), sigmaX = 0)
# ret, result = cv.threshold(result, 220, 255, cv.THRESH_BINARY)

# result = cropper.crop(result)

# data = im.fromarray(result)
# data.save('Merged.png')

cv.imshow('Image A', imageA)
cv.imshow('Image B', imageB)
cv.imwrite('Keypoint.jpg', vis)
cv.imshow('Result', result)
cv.waitKey(0)
