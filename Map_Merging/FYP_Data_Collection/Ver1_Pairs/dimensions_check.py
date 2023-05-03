import cv2 as cv

# Image selection 1
imageA = cv.imread('Images/ap_hill_crop_2.jpg')
imageB = cv.imread('Images/ap_hill_crop_1.jpg')
print(imageA.shape)
print(imageB.shape)
# Image selection 2
imageA = cv.imread('Images/arena_astar_crop_1.jpg')
imageB = cv.imread('Images/arena_astar_crop_2.jpg')
print(imageA.shape)
print(imageB.shape)
# Image selection 3
imageA = cv.imread('Images/csc_crop_2.jpg')
imageB = cv.imread('Images/csc_crop_1.jpg')
print(imageA.shape)
print(imageB.shape)
# Image selection 4
imageA = cv.imread('Images/Andrew_Howard_SDR_site_crop_1.jpg') 
imageB = cv.imread('Images/Andrew_Howard_SDR_site_crop_2.jpg') 
print(imageA.shape)
print(imageB.shape)
# Image selection 5
imageA = cv.imread('Images/intel_oregon_crop_1.jpg') 
imageB = cv.imread('Images/intel_oregon_crop_2.jpg') 
print(imageA.shape)
print(imageB.shape)