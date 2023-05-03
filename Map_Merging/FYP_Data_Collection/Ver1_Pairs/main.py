# import the necessary packages
# from stitcher_class import Stitcher
from select import select
from struct import pack
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
import numpy as np
import pandas as pd

from PIL import Image as im

sys.path.append('../../../')

from Map_Merging.Utilities.background_remover import BackgroundRemover

'''
[DATA COLLECTION]
In the paper "Performance Evaluation of Feature Detectors and Descriptors Beyond the Visible", they evaluated
the detectors and descriptors separately. For this data collection, we will use the detectors along with their
native descriptors, unless otherwise stated (i.e. testing combinations such as SIFT-SURF). No discrimination 
will be present in this testing, and will be true to how the creators intended them to be.

Test Set:
    1. Freiburg Campus - Cyrill
    2. Intel
    3. A*STAR Level 5 - Arena
    4. ...
    5. ...

What needs to be collected:
    1. Repeatability against Scale and Rotation
    2. Number of Correspondences against Scale and Rotation
    3. Matching Score against Scale and Rotation
    4. Number of Matches against Scale and Rotation
    
    I.  Recall
    II. Precision

Augmentation Range:
    1. Rotation (0 - 90 degrees) --> 0.2 degree step
    2. Scale (0 - 500 percent)   --> 10 percent step

Miscellaneous Indicators:
    5. Computational Cost
        a. Mean Feature-Detection-Description Time per Feature Point  
        b. Mean Feature-Matching Time per Feature Point

What needs to be done today:
    1. Create a function to calculate (1), (2), (3), (4), and (5)
    2. Create two loops to handle the augmentation of the two separate synthetic augmentation
        a. Remember to be careful of referencing of mutable objects

How the csv should look like:

    Name of Algorithm: SURF 

    | Repeatability | Rotation Angle |    | Repeatability | Scale |
    ----------------------------------    -------------------------
    |               |                |    |               |       |
    |               |                |    |               |       |
    |               |                |    |               |       |
    |               |                |    |               |       |
    |               |                |    |               |       |

    * Replace repeatability with matching score, # of correspondences, # of matches

    * According to berak, correspondences are the all the matches, and matches are 
      after RANSAC is applied during the findHomography process [Wrong]

    # Correspondences = Initial number of matches found from BFMatcher in the common region
    # Matches = Number of inliers in the correspondences
    # FA, FB = Number of features in the common region of an image
    # Repeatability = Correspondences/min(FA,FB) --> High is good [A Comparison of Affine Region Detectors]
        --> I need the OpenCV or the Matlab implementation to calculate it
    # Matching Score = Match Euclidean + RANSAC/min(FA,FB)

    [A Comparative Evaluation of Well-known Feature Detectors and Descriptors]
    # Recall = Matches/Correspondences
    # Precision = Matches/Total Matches (I think is the total BF in whole image)

https://stackoverflow.com/questions/35289542/opencv-evaluatefeaturedetector-for-python

Update after Researching:
    - Repeatability and Matching Score are very dependent on each other --> Will leave this aside for now
    - Repeatability depends on the feature detector ONLY (and some elliptical blobs)
    - Focus on the number of features matched (inlier percentage), and time for each algorithm
    - Detect key of successful and unsuccessful (1 and -1)
    - All changed to have average of 20 percent overlap of image
'''

remover = BackgroundRemover()

####################################################################################
############################### Data Collection ####################################
####################################################################################

'''
Algorithms involved:
    1. SIFT
    2. SURF
    3. BRISK
    4. ORB
    5. KAZE
    6. AKAZE
    7. BRISK
    8. Geodesc
    9. Contextdesc
    10. ASLFeat
    11. FAST-SIFT 
    12. AGAST-SIFT
    13. SIFT-SURF
    13. SURF-SIFT
    14. ORB-BRIEF
    15. FAST-BRIEF

[3, 4, 14, 15]

The 15 tabs should look smth like this:
[Tab 1: SURF]

[Table 1: Rotation]
Image Data (Constant) | Rotation Angle | #Features 1 | #Features 2 | #Matches | #inlier | D&D1 Time(s) | D&D2 Time(s) | Matching Time(s) | HCalc Time(s) | Success(?)

[Table 2: Scale]
Image Data (Constant) | Scale Difference | #Features 1 | #Features 2 | #Matches | #inlier | D&D1 Time(s) | D&D2 Time(s) | Matching Time(s) | HCalc Time(s) | Success(?)

What we are looking for: Fast timing per point + High number of inliers + success threshold.

Should I use my own cropped images that are synthetically made or should I just use the full image?

We use 5 image data will do.

Remember that Matching Score is the only one we can use for this because of the lack of a python
function to evaluate the repeatability.
'''

def rotate_image(mat, angle):
    """
    Rotates an image (angle in degrees) and expands image to avoid cropping
    """

    height, width = mat.shape[:2] # image shape has 3 dimensions
    image_center = (width/2, height/2) # getRotationMatrix2D needs coordinates in reverse order (width, height) compared to shape

    angle = 0 - angle

    rotation_mat = cv.getRotationMatrix2D(image_center, angle, 1.)

    # rotation calculates the cos and sin, taking absolutes of those.
    abs_cos = abs(rotation_mat[0,0]) 
    abs_sin = abs(rotation_mat[0,1])

    # find the new width and height bounds
    bound_w = int(height * abs_sin + width * abs_cos)
    bound_h = int(height * abs_cos + width * abs_sin)

    # subtract old image center (bringing image back to origo) and adding the new image center coordinates
    rotation_mat[0, 2] += bound_w/2 - image_center[0]
    rotation_mat[1, 2] += bound_h/2 - image_center[1]

    # rotate image with the new bounds and translated rotation matrix
    rotated_mat = cv.warpAffine(mat, rotation_mat, (bound_w, bound_h), flags = cv.INTER_LANCZOS4)
    return rotated_mat

# Algorithms involved:
#     1. SIFT
#     2. SURF
#     3. BRISK
#     4. ORB
#     5. KAZE
#     6. AKAZE
#     7. Geodesc
#     8. Contextdesc
#     9. ASLFeat
#     Decide which we want to really try
#     11. FAST-SIFT 
#     12. AGAST-SIFT
#     13. SIFT-SURF
#     13. SURF-SIFT --> use this
#     14. ORB-BRIEF
#     15. FAST-BRIEF

# KAZE failed at 3.0 (Out of Memory) --> It is slow for some reason KAZE_2 needs to be checked

# Algorithm
name = '[INPUT NEW ALGORITHM HERE]_CHECK'
selection_number = 4

# Image selection
image_selection = 2

################################################################
################################################################
################################################################
if image_selection == 1:
    # Image selection 1
    imageA = cv.imread('Images/ap_hill_crop_1.jpg')
    imageB = cv.imread('Images/ap_hill_crop_2.jpg')
elif image_selection == 2:
    # Image selection 2
    imageA = cv.imread('Images/arena_astar_crop_1.jpg')
    imageB = cv.imread('Images/arena_astar_crop_2.jpg')
elif image_selection == 3:
    # Image selection 3
    imageA = cv.imread('Images/csc_crop_2.jpg')
    imageB = cv.imread('Images/csc_crop_1.jpg')
elif image_selection == 4:
    # Image selection 4
    imageA = cv.imread('Images/Andrew_Howard_SDR_site_crop_1.jpg') 
    imageB = cv.imread('Images/Andrew_Howard_SDR_site_crop_2.jpg') 
elif image_selection == 5:
    # Image selection 5
    imageA = cv.imread('Images/intel_oregon_crop_1.jpg') 
    imageB = cv.imread('Images/intel_oregon_crop_2.jpg') 
elif image_selection == 6:
    imageA = cv.imread('Images/dabao_1_revised.jpg')
    imageB = cv.imread('Images/dabao2.jpg')
elif image_selection == 7:
    imageA = cv.imread('Images/turtlebot3_house_crop_1.jpg')
    imageB = cv.imread('Images/turtlebot3_house_crop_2.jpg')

imageA = remover.remove_background(imageA)
imageB = remover.remove_background(imageB)
################################################################
################################################################
################################################################

data_collection = list()

column_title_rot = ['Rotation Angle (deg)', '# Features (Pair 1)', '# Features (Pair 2)', '# Matches', 'Inlier (%)',
                    'Pair 1 D&D Time (s)', 'Pair 2 D&D Time (s)', 'Matching Time (s)', 'Outlier Rejection and Homography Calc. Time (s)',
                    'Success']

for angle in np.arange(0, 180+15, 15):

    single_row = list()

    # imageB_rot = imutils.rotate_bound(imageB, angle)
    imageB_rot = rotate_image(imageB, angle)

    cv.imwrite('Rotated.jpg', imageB_rot)

    stitcher = Stitcher(selection = selection_number)
    packaged_result = stitcher.stitch(image_set = [imageA, imageB_rot])

    if packaged_result is not None:
        result = packaged_result
    
    if stitcher.number_of_matches == 0:
        inlier_fraction = 0
    else:
        inlier_fraction = float(stitcher.number_of_inlier/stitcher.number_of_matches)

    single_row.append(angle)
    single_row.append(int(stitcher.feature_detected_imageA))
    single_row.append(int(stitcher.feature_detected_imageB))
    single_row.append(stitcher.number_of_matches)
    single_row.append(inlier_fraction)
    single_row.append(stitcher.feature_detection_description_timing_holder_A)
    single_row.append(stitcher.feature_detection_description_timing_holder_B)
    single_row.append(stitcher.feature_matching_timing)
    single_row.append(stitcher.findHomography_timing)

    if packaged_result is not None:
        if image_selection == 2:
            result = imutils.resize(result, width = 1000)
        elif image_selection == 3:
            result = imutils.resize(result, width = 2000)

        cv.imshow('Result', result)
        key_for_success = cv.waitKey(0)

        if key_for_success == ord('s'):
            single_row.append(1)
            cv.destroyAllWindows()
        else:
            single_row.append(-1)
            cv.destroyAllWindows()
    else:
        single_row.append(0)
    
    data_collection.append(single_row)
 

data_collection.append([]) # For adding space in the csv after the rotation block is done

df1 = pd.DataFrame(data_collection, columns = column_title_rot)
df1.to_csv('Data/{}_{}_data.csv'.format(name, image_selection), mode = 'w', index = False)

####################################################################################
print('In-between pause to switch over to scale differences')
time.sleep(1)
# Reset the data collection
data_collection = list()
####################################################################################

column_title_scal = ['Scale Difference', '# Features (Pair 1)', '# Features (Pair 2)', '# Matches', 'Inlier (%)',
                    'Pair 1 D&D Time (s)', 'Pair 2 D&D Time (s)', 'Matching Time (s)', 'Outlier Rejection and Homography Calc. Time (s)',
                    'Success']

for scale in np.arange(1, 5 + 0.5, 0.5):
    
    single_row = list()

    width = int(imageB.shape[1] * scale)
    height = int(imageB.shape[0] * scale)
    dim = (width, height)
    print(dim)

    imageB_scal = cv.resize(imageB, dim, interpolation = cv.INTER_CUBIC)

    stitcher = Stitcher(selection = selection_number)
    packaged_result = stitcher.stitch(image_set = [imageA, imageB_scal])

    if packaged_result is not None:
        result = packaged_result
    
    if stitcher.number_of_matches == 0:
        inlier_fraction = 0
    else:
        inlier_fraction = float(stitcher.number_of_inlier/stitcher.number_of_matches)

    single_row.append(scale)
    single_row.append(stitcher.feature_detected_imageA)
    single_row.append(stitcher.feature_detected_imageB)
    single_row.append(stitcher.number_of_matches)
    single_row.append(inlier_fraction)
    single_row.append(stitcher.feature_detection_description_timing_holder_A)
    single_row.append(stitcher.feature_detection_description_timing_holder_B)
    single_row.append(stitcher.feature_matching_timing)
    single_row.append(stitcher.findHomography_timing)

    if packaged_result is not None:
        if image_selection == 2:
            result = imutils.resize(result, width = 1000)
        elif image_selection == 3:
            result = imutils.resize(result, width = 2000)

        cv.imshow('Result', result)
        key_for_success = cv.waitKey(0)

        if key_for_success == ord('s'):
            single_row.append(1)
            cv.destroyAllWindows()
        else:
            single_row.append(-1)
            cv.destroyAllWindows()
    else:
        single_row.append(0)
    
    data_collection.append(single_row)
    
    # if scale == 3.5:
    #     break

df2 = pd.DataFrame(data_collection, columns = column_title_scal)
df2.to_csv('Data/{}_{}_data.csv'.format(name, image_selection), mode = 'a', index = False)
####################################################################################
####################################################################################
####################################################################################
