import cv2 as cv
import _pickle as cPickle
import copy

finder = cv.ORB.create()
img = cv.imread('Images/arena_fetch.jpg', 0)
feat = cv.detail.computeImageFeatures2(finder, img)
print(type(feat.descriptors.get()))
print(feat.keypoints[0].angle)

print()

finder = cv.SIFT_create()
kps, des = finder.detectAndCompute(img, None)
umat = cv.UMat(des)
feat.descriptors = umat
feat.keypoints = kps
print(feat.descriptors.get())
print(feat.keypoints[0].angle)

print(dir(feat))







