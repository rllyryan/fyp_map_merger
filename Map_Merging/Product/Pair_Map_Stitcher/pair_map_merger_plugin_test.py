from unittest import result
import cv2 as cv
from pair_map_merger_plugin import Pair_Stitcher
import time
import sys


array_of_names = ['Image_1.jpg', 'Image_2.jpg']
# array_of_img = [cv.imread('Images/intel_oregon_crop_1.jpg'), cv.imread('Images/intel_oregon_crop_2.jpg')]
# array_of_img = [cv.imread('Images/Andrew_Howard_SDR_site_crop_1.jpg'), cv.imread('Images/Andrew_Howard_SDR_site_crop_2.jpg')]
# array_of_img = [cv.imread('Images/mymap_2.jpg'), cv.imread('Images/mymap_1.jpg')]
# array_of_img = [cv.imread('Images/map_mir_cropped.jpg'), cv.imread('Images/map_turtlebot.jpg')]
array_of_img = [cv.imread('Images/arena_astar_crop_1.jpg'), cv.imread('Images/arena_astar_crop_2.jpg')]
# array_of_img = [cv.imread('Images/mymap_1_rotated.jpg'), cv.imread('Images/mymap_2_rotated.jpg')]
# array_of_img = [cv.imread('Images/papermap_2.jpg'), cv.imread('Images/papermap_1.jpg')]
# array_of_img = [cv.imread('Images/awsmap_2.pgm'), cv.imread('Images/awsmap_3.pgm')]
# array_of_img = [cv.imread('Images/ap_hill_crop_1.jpg'), cv.imread('Images/ap_hill_crop_2.jpg')]

'''
0 - SIFT
1 - BRISK
2 - Geodesc
3 - Contextdesc
4 - ORB
5 - SURF
'''

stitcher = Pair_Stitcher(list_of_images = array_of_img, list_of_image_names = array_of_names, selection_num = 5)

start = time.time()
result_parcel = stitcher.stitch()
end = time.time()

print('Time taken to stitch is: {}'.format(end-start))

(error_1, merge_order_1, error_2, merge_order_2) = result_parcel

if len(error_1) == 0:
    cv.imshow('Order 1', merge_order_1)

if len(error_2) == 0:
    cv.imshow('Order 2', merge_order_2)

cv.waitKey(0)