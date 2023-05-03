'''
[INTRODUCTION]

Handcrafted --> gives me keypoints, features (both are lists)
Machine Learning --> gives the same

The pipeline uses a detail_ImageFeatures class to put all these inside.
'''
from image_features_class import detail_ImageFeatures
import cv2 as cv

# finder = cv.SIFT_create()

# img1 = cv.imread('Images/fr097_multi_crop1.jpg', 0)
# img2 = cv.imread('Images/fr097_multi_crop2.jpg', 0)

# (kps1, feature1) = finder.detectAndCompute(img1, None)
# (kps2, feature2) = finder.detectAndCompute(img2, None)

# print(len(kps1))
# print(feature1.shape)

# umat = cv.UMat(feature1)
# print(umat)

'''
[The Gist]
1) Get the features --> convert to Umat --> put into detail_imagefeature.descriptors [CORE DUMPED?!]
2) Get the index???? --> put into detail_imagefeature.img_idx [OK]
3) Get the image size --> put into detail_imagefeature.img_size [OK]

Last resort is to create the class by myself.
'''

object_test = cv.detail_ImageFeatures() # class
print(object_test)
print(object_test.getKeypoints())
print(object_test.img_idx)
print(object_test.img_size)
print(object_test.descriptors)

print(str(help(cv.detail_ImageFeatures().descriptors)))
print(dir(object_test))

print(object_test.descriptors) # UMat type
print(object_test.getKeypoints())
object_test.img_idx = 35432
object_test.img_size = (400,400)

# print(object_test.img_idx)
# print(object_test.img_size)

# features = [feature1, feature2]

# matcher = cv.BFMatcher()
# rawMatches = matcher.knnMatch(feature1, feature2, k = 2)

# indices = cv.detail.leaveBiggestComponent(features, rawMatches, 1.0)