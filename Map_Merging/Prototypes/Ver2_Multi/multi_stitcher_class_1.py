from imutils import paths
import numpy
import argparse
import imutils
import cv2 as cv
import time

# construct the argument parser and parse the arguments
# ap = argparse.ArgumentParser()
# ap.add_argument("-i", "--images", type=str, required=True, help="path to input directory of images to stitch")
# ap.add_argument("-o", "--output", type=str, required=True, help="path to the output image")
# args = vars(ap.parse_args())
print("[MAIN] Loading images...")

imageA = cv.imread('Images/level5_hokuyo_crop2.jpg')
# imageA = cv.cvtColor(imageA, cv.COLOR_BGR2GRAY)
imageA = imutils.resize(imageA, width = 500)

imageB = cv.imread('Images/level5_hokuyo_crop1.jpg')
# imageB = cv.cvtColor(imageB, cv.COLOR_BGR2GRAY)
imageB = imutils.resize(imageB, width = 500)

images = [imageA, imageB]
# https://stackoverflow.com/questions/50595573/how-to-set-panorama-mode-in-opencv-python-stitcher-class
# https://docs.opencv.org/4.5.0/d5/d48/samples_2python_2stitching_8py-example.html
start = time.time()
stitcher = cv.Stitcher.create(cv.STITCHER_PANORAMA)
# stitcher.setPanoConfidenceThresh(0.0)
(status, stitched) = stitcher.stitch(images)

end = time.time()

print("Total time take to stitch is: ", end - start)

if status == cv.STITCHER_OK:
	# # write the output stitched image to disk
	# cv.imwrite(args["output"], stitched)
	# display the output stitched image to our screen
	cv.imshow("Stitched", stitched)
	cv.waitKey(0)
# otherwise the stitching failed, likely due to not enough keypoints)
# being detected
else:
	print("[INFO] image stitching failed ({})".format(status))



