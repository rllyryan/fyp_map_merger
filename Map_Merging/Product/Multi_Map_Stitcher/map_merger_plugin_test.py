from map_merger_plugin import MultiMapMerger
import cv2 as cv
import imutils
import sys
import os
import io
from PIL import Image
import multiprocessing

CURDIR = os.path.dirname(__file__)
sys.path.append(os.path.abspath(os.path.join(CURDIR, '../..')))

from Utilities.map_cropper import MapCropper

# print(multiprocessing.cpu_count())
array_of_names = []
array_of_img = []

# i = 0
# while i < 4:
#     i += 1
#     name ='fr097_multi_crop{}.jpg'.format(i)
#     img = cv.imread('Images/fr097_multi_crop{}.jpg'.format(i))
#     array_of_names.append(name)
#     array_of_img.append(img)

# array_of_img = [cv.imread('Images/intel_oregon_crop_1.jpg'), cv.imread('Images/intel_oregon_crop_2.jpg')]
# array_of_img = [cv.imread('Images/Andrew_Howard_SDR_site_crop_2.jpg'), cv.imread('Images/Andrew_Howard_SDR_site_crop_1.jpg')]
# array_of_img = [cv.imread('Images/Andrew_Howard_SDR_site_crop_1.jpg'), cv.imread('Images/Andrew_Howard_SDR_site_crop_2.jpg')]
# array_of_img = [cv.imread('Images/csc_crop_1.jpg'), cv.imread('Images/csc_crop_2.jpg')]
# array_of_img = [cv.imread('Images/arena_astar_crop_1.jpg'), cv.imread('Images/arena_astar_crop_2.jpg')]
# array_of_img = [cv.imread('Images/map_mir_cropped.jpg'), cv.imread('Images/map_turtlebot.jpg')]
# array_of_img = [cv.imread('Images/mymap_1_rotated.jpg'), cv.imread('Images/mymap_2_rotated.jpg')]
# array_of_img = [cv.imread('Images/papermap_1.jpg'), cv.imread('Images/papermap_2.jpg')]
array_of_img = [cv.imread('Images/awsmap_2.pgm'), cv.imread('Images/awsmap_1.pgm'), cv.imread('Images/awsmap_3.pgm'), cv.imread('Images/awsmap_4.pgm')]
# array_of_img = [cv.imread('Images/fr097_new_crop1.jpg'), cv.imread('Images/fr097_new_crop2.jpg'), cv.imread('Images/fr097_new_crop3.jpg'), cv.imread('Images/fr097_new_crop4.jpg')]

array_of_names = list()
idx = 1
for img in array_of_img:
    array_of_names.append('Image_{}.jpg'.format(idx))
    idx += 1


'''
0 - SIFT
1 - BRISK
2 - ORB
3 - Geodesc
4 - Contextdesc
5 - SURF (PATENTED AND NOT TO BE USED)
6 - KAZE
7 - AKAZE
'''
# Load and populate the class
merger = MultiMapMerger(selection_num = 4, list_of_image_names = array_of_names, list_of_images = array_of_img)

# Set the process in motion
packed_information = merger.stitch()
(successful, error, merged_img) = packed_information

print(type(merged_img))

# byte = merged_img.file.getvalue()
# Image.open(dataBytesIO)
# image = Image.open(io.BytesIO(byte))
# image.show()

if successful:
    cv.imwrite('Merged_Image.jpg', merged_img)
    cv.waitKey(0)
else:
    print(error)
    sys.exit(0)
