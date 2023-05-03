from objectified_geodesc.geodesc_class import GeodescFeatures2D
from objectified_contextdesc.contextdesc_class import ContextDescFeatures2D
from objectified_aslfeat.aslfeat_class import ASLFeatFeatures2D

import cv2 as cv

import multiprocessing 

print(multiprocessing.cpu_count())

# Instantiate Geodesc object
# featureDetDes = GeodescFeatures2D()

featureDetDes = ASLFeatFeatures2D()


img1 = cv.imread('cat1.jpg')
img2 = cv.imread('cat2.jpg')

kps1, des1 = featureDetDes.detectAndCompute(img = img1)


print(type(kps1))
print(type(kps1[0]))
print(type(des1))


# cv.waitKey(0)
# cv.destroyAllWindows()