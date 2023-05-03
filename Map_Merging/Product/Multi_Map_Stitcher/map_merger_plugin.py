'''
[Map Merger]

This class is a configured version of the Stitcher class pipeline provided by OpenCV.

It makes use of handcrafted feature detectors.

For constructor shoulder have different dictionaries of choices. (Option 1 vs Option 2)
'''

# from __future__ import print_function

from colorama import Style, Fore

import argparse
from collections import OrderedDict

import cv2 as cv
import numpy as np
import imutils
import time
import _pickle as cPickle

import multiprocessing
import sys
import os

# from image_features_class import detail_ImageFeatures

from loguru import logger
from logging import INFO

# Configuring logger
folder_location = 'loggers/logs/'
local_file = os.path.basename(__file__).strip('.py')
logger.remove()
logger = logger.patch(lambda record: record.update(name=str(local_file)))

# Adding a handler, to save the information in the .log file 
logger.add(folder_location+local_file+".log", 
            backtrace=True, 
            diagnose=True, 
            retention="10 days", 
            rotation="100 MB",
            # compression="zip", 
            format='{time} | {name} | {level} | {message}', 
            level="INFO")
logger.add(sys.stderr, level=INFO)

logger.info("---")
logger.info("Starting logging of "+ local_file+ ".py")

CURDIR = os.path.dirname(__file__)
sys.path.append(os.path.abspath(os.path.join(CURDIR, '..', '..')))

# from Utilities import GeodescFeatures2D
# from Utilities import ContextDescFeatures2D

#################################################################################################
############################ INITIALISING AND INSTANTIATING #####################################
#################################################################################################

class MultiMapMerger:
    
    logger.info('MultiMapMerger class is being created')

    # For frontend to access
    merged_image_for_frontend = None

    # For frontend to know when it is done
    merging_success_for_frontend = False

    # For frontened to know what happened
    error_caught_for_frontend = ''

    # For frontend to unpack
    returning_tuple = None

    def __init__(self, selection_num, list_of_images, list_of_image_names):
        '''
        [Constructor]

        Initialise all the required objects and parameters to be used by other functions.The default 
        choice is set in this function to remove the need for the argparse utility.
        ''' 
        # For iteration through images
        self.image_list = list_of_images
        self.name_list = list_of_image_names

        # For computational timing
        self.START = 0
        self.END = 0
        self.DURATION = 0

        # Exposure Compensator
        self.EXPOS_COMP_CHOICES = OrderedDict()
        self.EXPOS_COMP_CHOICES['gain_blocks'] = cv.detail.ExposureCompensator_GAIN_BLOCKS
        self.EXPOS_COMP_CHOICES['gain'] = cv.detail.ExposureCompensator_GAIN
        self.EXPOS_COMP_CHOICES['channel'] = cv.detail.ExposureCompensator_CHANNELS
        self.EXPOS_COMP_CHOICES['channel_blocks'] = cv.detail.ExposureCompensator_CHANNELS_BLOCKS
        self.EXPOS_COMP_CHOICES['no'] = cv.detail.ExposureCompensator_NO
        
        # self.default_expos_comp = self.EXPOS_COMP_CHOICES['no']

        # Bundle Adjustment
        self.BA_COST_CHOICES = OrderedDict()
        self.BA_COST_CHOICES['ray'] = cv.detail_BundleAdjusterRay
        self.BA_COST_CHOICES['reproj'] = cv.detail_BundleAdjusterReproj
        self.BA_COST_CHOICES['affine'] = cv.detail_BundleAdjusterAffinePartial
        self.BA_COST_CHOICES['no'] = cv.detail_NoBundleAdjuster
        
        # self.default_ba_cost = self.BA_COST_CHOICES['no']

        # Feature Detectors and Descriptors
        self.FEATURES_FIND_CHOICES = OrderedDict()
        try:
            self.FEATURES_FIND_CHOICES['sift'] = cv.SIFT_create(nOctaveLayers = 15, sigma = 2.0)
        except AttributeError:
            logger.error("SIFT not available")
        try:
            self.FEATURES_FIND_CHOICES['brisk'] = cv.BRISK_create(octaves = 5, thresh = 10, patternScale = 4.0)
        except AttributeError:
            logger.error("BRISK not available")
        try:
            self.FEATURES_FIND_CHOICES['orb'] = cv.ORB_create(100000)
        except AttributeError:
            logger.error("SIFT not available")
        # try:
        #     self.FEATURES_FIND_CHOICES['geodesc'] = GeodescFeatures2D()
        # except AttributeError:
        #     logger.error("Geodesc not available")
        # try:
        #     self.FEATURES_FIND_CHOICES['contextdesc'] = ContextDescFeatures2D()
        # except AttributeError:
        #     logger.error("Contextdesc not available") 
        # try:
        #     self.FEATURES_FIND_CHOICES['surf'] = cv.xfeatures2d.SURF_create(nOctaveLayers = 15, hessianThreshold = 50)
        # except AttributeError:
        #     logger.error("SURF not available")
        try:
            self.FEATURES_FIND_CHOICES['kaze'] = cv.KAZE_create()
        except AttributeError:
            logger.error("KAZE not available")

        try:
            self.FEATURES_FIND_CHOICES['akaze'] = cv.AKAZE_create()
        except AttributeError:
            logger.error("AKAZE not available")



        # self.default_feature_finder = self.FEATURES_FIND_CHOICES['sift']
        
        # Seam Finder
        self.SEAM_FIND_CHOICES = OrderedDict()
        self.SEAM_FIND_CHOICES['dp_color'] = cv.detail_DpSeamFinder('COLOR')
        self.SEAM_FIND_CHOICES['dp_colorgrad'] = cv.detail_DpSeamFinder('COLOR_GRAD')
        self.SEAM_FIND_CHOICES['voronoi'] = cv.detail.SeamFinder_createDefault(cv.detail.SeamFinder_VORONOI_SEAM)
        self.SEAM_FIND_CHOICES['no'] = cv.detail.SeamFinder_createDefault(cv.detail.SeamFinder_NO)

        # self.default_seam_find = self.SEAM_FIND_CHOICES['no']

        # Estimator
        self.ESTIMATOR_CHOICES = OrderedDict()
        self.ESTIMATOR_CHOICES['homography'] = cv.detail_HomographyBasedEstimator
        self.ESTIMATOR_CHOICES['affine'] = cv.detail_AffineBasedEstimator

        # self.default_estimator = self.ESTIMATOR_CHOICES['homography']

        # Dummy finder that yields the fastest computational time (ORB)
        # self.dummy_finder = cv.ORB.create()

        # Warp
        self.WARP_CHOICES = (
            'spherical',
            'plane',
            'affine',
            'cylindrical',
            'fisheye',
            'stereographic',
            'compressedPlaneA2B1',
            'compressedPlaneA1.5B1',
            'compressedPlanePortraitA2B1',
            'compressedPlanePortraitA1.5B1',
            'paniniA2B1',
            'paniniA1.5B1',
            'paniniPortraitA2B1',
            'paniniPortraitA1.5B1',
            'mercator',
            'transverseMercator',
        )

        # self.default_warp = self.WARP_CHOICES[1]

        # Wave Correction
        self.WAVE_CORRECT_CHOICES = OrderedDict()
        self.WAVE_CORRECT_CHOICES['horiz'] = cv.detail.WAVE_CORRECT_HORIZ
        self.WAVE_CORRECT_CHOICES['no'] = None
        self.WAVE_CORRECT_CHOICES['vert'] = cv.detail.WAVE_CORRECT_VERT

        # self.default_wave_correction = self.WAVE_CORRECT_CHOICES['no']

        # Blending
        self.BLEND_CHOICES = ('multiband', 'feather', 'no',)
        
        # self.default_blending = self.BLEND_CHOICES[2]

        # # CUDA
        # self.default_cuda = True

        # # Matcher
        # self.default_matcher = 'homography'

        # # Match Confidence
        # self.default_match_conf = None

        # To produce the cv2.detail.ImageFeatures class for hijacking
        self.default_finder = cv.ORB.create()

        # List of optimal settings for different algorithms
        self.OPTIMAL_SETTINGS = [{# Optimal Settings for SIFT Ref:[0]
                                    'features': 'sift',
                                    'work_megapix': -1,
                                    'try_cuda': True,
                                    'matcher': 'homography',
                                    'estimator': list(self.ESTIMATOR_CHOICES.keys())[0],
                                    'match_conf': 0.3,
                                    'conf_thresh': 0.3, 
                                    'ba': list(self.BA_COST_CHOICES.keys())[0], # ray, reproj, affine, no (Seems like no is only for vertical)
                                    'ba_refine_mask': 'xxxxx',
                                    'wave_correct': 'no',
                                    'save_graph': True,
                                    'warp': self.WARP_CHOICES[1], # plane
                                    'seam_megapix': 0.1,
                                    'seam': list(self.SEAM_FIND_CHOICES.keys())[3],
                                    'compose_megapix': -1,
                                    'expos_comp': list(self.EXPOS_COMP_CHOICES.keys())[4],
                                    'expos_comp_nr_feeds': 1,
                                    'expos_comp_nr_filtering': 2,
                                    'expos_comp_block_size': 32,
                                    'blend': self.BLEND_CHOICES[1],
                                    'blend_strength': 100,
                                    'output': 'Merged_Map.jpg',
                                    'timelapse': None,
                                    'rangewidth': -1
                                },
                                {# Optimal Settings for BRISK Ref:[1]
                                    'features': 'brisk',
                                    'work_megapix': -1,
                                    'try_cuda': True,
                                    'matcher': 'homography',
                                    'estimator': list(self.ESTIMATOR_CHOICES.keys())[0],
                                    'match_conf': 0.3, 
                                    'conf_thresh': 1.0,
                                    'ba': list(self.BA_COST_CHOICES.keys())[0], #seems that no bundle adjustment works for vertical overlaps (True)
                                    'ba_refine_mask': 'xxxxx',
                                    'wave_correct': 'no',
                                    'save_graph': True,
                                    'warp': self.WARP_CHOICES[1],
                                    'seam_megapix': 0.1,
                                    'seam': list(self.SEAM_FIND_CHOICES.keys())[3],
                                    'compose_megapix': -1,
                                    'expos_comp': list(self.EXPOS_COMP_CHOICES.keys())[4],
                                    'expos_comp_nr_feeds': 1,
                                    'expos_comp_nr_filtering': 2,
                                    'expos_comp_block_size': 32,
                                    'blend': self.BLEND_CHOICES[1],
                                    'blend_strength': 100,
                                    'output': 'Merged_Map.jpg',
                                    'timelapse': None,
                                    'rangewidth': -1
                                },
                                {# Optimal Settings for ORB Ref:[2]
                                    'features': 'orb',
                                    'work_megapix': -1,
                                    'try_cuda': True,
                                    'matcher': 'homography',
                                    'estimator': list(self.ESTIMATOR_CHOICES.keys())[0],
                                    'match_conf': 0.3, 
                                    'conf_thresh': 1.0,
                                    'ba': list(self.BA_COST_CHOICES.keys())[0], #seems that no bundle adjustment works for vertical overlaps (True)
                                    'ba_refine_mask': 'xxxxx',
                                    'wave_correct': 'no',
                                    'save_graph': True,
                                    'warp': self.WARP_CHOICES[1],
                                    'seam_megapix': 0.1,
                                    'seam': list(self.SEAM_FIND_CHOICES.keys())[3],
                                    'compose_megapix': -1,
                                    'expos_comp': list(self.EXPOS_COMP_CHOICES.keys())[4],
                                    'expos_comp_nr_feeds': 1,
                                    'expos_comp_nr_filtering': 2,
                                    'expos_comp_block_size': 32,
                                    'blend': self.BLEND_CHOICES[1],
                                    'blend_strength': 100,
                                    'output': 'Merged_Map.jpg',
                                    'timelapse': None,
                                    'rangewidth': -1
                                },
                                # {# Optimal Settings for GeoDesc Ref:[3]
                                #     'features': 'geodesc',
                                #     'work_megapix': -1,
                                #     'try_cuda': True,
                                #     'matcher': 'homography',
                                #     'estimator': list(self.ESTIMATOR_CHOICES.keys())[0],
                                #     'match_conf': 0.3,
                                #     'conf_thresh': 0.3,
                                #     'ba': list(self.BA_COST_CHOICES.keys())[0],
                                #     'ba_refine_mask': 'xxxxx',
                                #     'wave_correct': 'no',
                                #     'save_graph': True,
                                #     'warp': self.WARP_CHOICES[1],
                                #     'seam_megapix': 0.1,
                                #     'seam': list(self.SEAM_FIND_CHOICES.keys())[3],
                                #     'compose_megapix': -1,
                                #     'expos_comp': list(self.EXPOS_COMP_CHOICES.keys())[4],
                                #     'expos_comp_nr_feeds': 1,
                                #     'expos_comp_nr_filtering': 2,
                                #     'expos_comp_block_size': 32,
                                #     'blend': self.BLEND_CHOICES[1],
                                #     'blend_strength': 100,
                                #     'output': 'Merged_Map.jpg',
                                #     'timelapse': None,
                                #     'rangewidth': -1
                                # },
                                # {# Optimal Settings for ContextDesc Ref:[4]
                                #     'features': 'contextdesc',
                                #     'work_megapix': -1,
                                #     'try_cuda': True,
                                #     'matcher': 'homography',
                                #     'estimator': list(self.ESTIMATOR_CHOICES.keys())[0],
                                #     'match_conf': 0.2,
                                #     'conf_thresh': 0.3,
                                #     'ba': list(self.BA_COST_CHOICES.keys())[0],
                                #     'ba_refine_mask': 'xxxxx',
                                #     'wave_correct': 'no',
                                #     'save_graph': True,
                                #     'warp': self.WARP_CHOICES[1],
                                #     'seam_megapix': 0.1,
                                #     'seam': list(self.SEAM_FIND_CHOICES.keys())[3],
                                #     'compose_megapix': -1,
                                #     'expos_comp': list(self.EXPOS_COMP_CHOICES.keys())[4],
                                #     'expos_comp_nr_feeds': 1,
                                #     'expos_comp_nr_filtering': 2,
                                #     'expos_comp_block_size': 32,
                                #     'blend': self.BLEND_CHOICES[1],
                                #     'blend_strength': 100,
                                #     'output': 'Merged_Map.jpg',
                                #     'timelapse': None,
                                #     'rangewidth': -1
                                # },
                                # {# Optimal Settings for SURF Ref:[5]
                                #     'features': 'surf',
                                #     'work_megapix': -1,
                                #     'try_cuda': True,
                                #     'matcher': 'homography',
                                #     'estimator': list(self.ESTIMATOR_CHOICES.keys())[0],
                                #     'match_conf': 0.3,
                                #     'conf_thresh': 0.3,
                                #     'ba': list(self.BA_COST_CHOICES.keys())[0],
                                #     'ba_refine_mask': 'xxxxx',
                                #     'wave_correct': 'no',
                                #     'save_graph': True,
                                #     'warp': self.WARP_CHOICES[1],
                                #     'seam_megapix': 0.1,
                                #     'seam': list(self.SEAM_FIND_CHOICES.keys())[3],
                                #     'compose_megapix': -1,
                                #     'expos_comp': list(self.EXPOS_COMP_CHOICES.keys())[4],
                                #     'expos_comp_nr_feeds': 1,
                                #     'expos_comp_nr_filtering': 2,
                                #     'expos_comp_block_size': 32,
                                #     'blend': self.BLEND_CHOICES[1],
                                #     'blend_strength': 100,
                                #     'output': 'Merged_Map.jpg',
                                #     'timelapse': None,
                                #     'rangewidth': -1
                                # },
                                {# Optimal Settings for KAZE Ref:[6]
                                    'features': 'kaze',
                                    'work_megapix': -1,
                                    'try_cuda': True,
                                    'matcher': 'homography',
                                    'estimator': list(self.ESTIMATOR_CHOICES.keys())[0],
                                    'match_conf': 0.3,
                                    'conf_thresh': 0.3,
                                    'ba': list(self.BA_COST_CHOICES.keys())[0],
                                    'ba_refine_mask': 'xxxxx',
                                    'wave_correct': 'no',
                                    'save_graph': True,
                                    'warp': self.WARP_CHOICES[1],
                                    'seam_megapix': 0.1,
                                    'seam': list(self.SEAM_FIND_CHOICES.keys())[3],
                                    'compose_megapix': -1,
                                    'expos_comp': list(self.EXPOS_COMP_CHOICES.keys())[4],
                                    'expos_comp_nr_feeds': 1,
                                    'expos_comp_nr_filtering': 2,
                                    'expos_comp_block_size': 32,
                                    'blend': self.BLEND_CHOICES[1],
                                    'blend_strength': 100,
                                    'output': 'Merged_Map.jpg',
                                    'timelapse': None,
                                    'rangewidth': -1
                                },
                                {# Optimal Settings for AKAZE Ref:[7]
                                    'features': 'akaze',
                                    'work_megapix': -1,
                                    'try_cuda': True,
                                    'matcher': 'homography',
                                    'estimator': list(self.ESTIMATOR_CHOICES.keys())[0],
                                    'match_conf': 0.3,
                                    'conf_thresh': 0.3,
                                    'ba': list(self.BA_COST_CHOICES.keys())[0],
                                    'ba_refine_mask': 'xxxxx',
                                    'wave_correct': 'no',
                                    'save_graph': True,
                                    'warp': self.WARP_CHOICES[1],
                                    'seam_megapix': 0.1,
                                    'seam': list(self.SEAM_FIND_CHOICES.keys())[3],
                                    'compose_megapix': -1,
                                    'expos_comp': list(self.EXPOS_COMP_CHOICES.keys())[4],
                                    'expos_comp_nr_feeds': 1,
                                    'expos_comp_nr_filtering': 2,
                                    'expos_comp_block_size': 32,
                                    'blend': self.BLEND_CHOICES[1],
                                    'blend_strength': 100,
                                    'output': 'Merged_Map.jpg',
                                    'timelapse': None,
                                    'rangewidth': -1
                                }]
        
        # Choosing the settings from the OPTIMAL_SETTINGS
        self.SELECTION = selection_num

        logger.info('Multi_Map_Merger class has been initialised')

        pass

    ####################################################################################################
    ####################################### [GET UTILITIES] ############################################
    ####################################################################################################
    def get_matcher(self):
        '''
        ================================== [GET_MATCHER] ============================================
        This function is responsible for checking the try_cuda and matcher_type that was inputted by
        the user in the command line. Sets the match_conf according to the keypoint detector and 
        algorithm, and sets the range_width. In addition to this, it instantiates the matcher object, 
        and returns it to the caller.
        '''
        try_cuda = self.OPTIMAL_SETTINGS[self.SELECTION]['try_cuda']
        matcher_type = self.OPTIMAL_SETTINGS[self.SELECTION]['matcher']
        match_conf = self.OPTIMAL_SETTINGS[self.SELECTION]['match_conf']
        range_width = self.OPTIMAL_SETTINGS[self.SELECTION]['rangewidth']

        if matcher_type == "affine":
            matcher = cv.detail_AffineBestOf2NearestMatcher(False, try_cuda, match_conf)
        elif range_width == -1:
            matcher = cv.detail.BestOf2NearestMatcher_create(try_cuda, match_conf)
        else:
            matcher = cv.detail.BestOf2NearestRangeMatcher_create(range_width, try_cuda, match_conf)
        
        return matcher


    def get_compensator(self):
        '''
        ================================== [GET_COMPENSATOR] =================================================
        This function is responsible for setting up the process for compensating the gain through the
        extraction of three required variables, expos_comp_type, expos_comp_nr_feeds, and expos_comp_block_size.
        It then instantiates the compensator object for use, and returns it to the caller.
        '''
        expos_comp_type = self.EXPOS_COMP_CHOICES[self.OPTIMAL_SETTINGS[self.SELECTION]['expos_comp']]
        expos_comp_nr_feeds = self.OPTIMAL_SETTINGS[self.SELECTION]['expos_comp_nr_feeds']
        expos_comp_block_size = self.OPTIMAL_SETTINGS[self.SELECTION]['expos_comp_block_size']
        # expos_comp_nr_filtering = self.OPTIMAL_SETTINGS[self.SELECTION]['expos_comp_nr_filtering']
        
        if expos_comp_type == cv.detail.ExposureCompensator_CHANNELS:
            compensator = cv.detail_ChannelsCompensator(expos_comp_nr_feeds)
            # compensator.setNrGainsFilteringIterations(expos_comp_nr_filtering)
        elif expos_comp_type == cv.detail.ExposureCompensator_CHANNELS_BLOCKS:
            compensator = cv.detail_BlocksChannelsCompensator(expos_comp_block_size, expos_comp_block_size, expos_comp_nr_feeds)
            # compensator.setNrGainsFilteringIterations(expos_comp_nr_filtering)
        else:
            compensator = cv.detail.ExposureCompensator_createDefault(expos_comp_type)
        
        return compensator


    ####################################################################################################
    ######################################### [HIGH-JACKER] ############################################
    ####################################################################################################

    def class_hijacking(self, captured_object, keypoints, descriptors):
        '''
        ================================== [CLASS_HIJACKER] =================================================
        This function is responsible for modifying the attributes 'keypoints' and 'descriptors' that are found
        in the object of type class cv2.detail.ImageFeatures. This is mainly for external open-source feature 
        finders that are not supported by OpenCV.
        '''
        # logger.info('Hijacking via referencing to mutable objects, i.e. Dict(), List()')

        # Conversion of np.ndarray to umat to overwrite the object
        umat_descriptors = cv.UMat(descriptors)

        # Make sure that the keypoints are in tuple format
        if isinstance(keypoints, list):
            # print('Converting keypoints list to tuple')
            keypoints = tuple(keypoints)
        else:
            pass

        captured_object.descriptors = umat_descriptors
        captured_object.keypoints = keypoints

        return
    
    ####################################################################################################
    ########################################## [MASK_MAKER] ############################################
    ####################################################################################################

    def mask_maker(self, img, mask_color_target = None):
        '''
        ======================================= [MASK_MAKER] =================================================
        This function is responsible for creating three masks that correspond to the three colours seen in 2D
        occupancy grid maps (OGM). The colours are grey, white, and black. The purpose is to overcome the blending
        effect brought about by overlapping regions of varying colours.
        '''
        if len(img.shape) == 3:
            gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
        else:
            gray = img

        mask = gray.copy()
        
        # Pixels finding process is optimised with respect to the 5 image pairs, the issue
        # lies in the gray regions which can range from really light grey to really dark grey
        black = np.where((mask[:,:] <= 70)) # 50
        grey = np.where((mask[:,:] <= 235) & (mask[:,:] >= 71)) # 51
        white = np.where((mask[:,:]<= 255) & (mask[:,:] >= 236))
        
        if mask_color_target == 'white':
            mask[black] = 0
            mask[grey] = 0
            mask[white] = 255
        elif mask_color_target == 'gray':
            mask[black] = 0
            mask[grey] = 255
            mask[white] = 0
        elif mask_color_target == 'black':
            mask[black] = 255
            mask[grey] = 0
            mask[white] = 0
        else:
            pass

        mask = cv.cvtColor(mask, cv.COLOR_GRAY2BGR)

        return mask

    ####################################################################################################
    ########################################## [MAP_CROPPER] ###########################################
    ####################################################################################################
    
    def map_cropper(self, img, padding = 0):
        
        if len(img.shape) == 3:
            gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
        else:
            gray = img
        
        boundary_pixel = gray[0][0]
        _, binary = cv.threshold(gray, boundary_pixel, 255, cv.THRESH_BINARY)
        contours = cv.findContours(binary, cv.RETR_EXTERNAL, cv.CHAIN_APPROX_SIMPLE)[-2]
        contours = sorted(contours, key = cv.contourArea)[-1]
        x,y,w,h = cv.boundingRect(contours)
        cropped_img = img[y-padding:y+h+padding, x-padding:x+w+padding]
        
        return cropped_img
    
    ####################################################################################################
    ################################## [CENTRALISE_AND_PAD] ############################################
    ####################################################################################################
    
    def centralise_and_pad(self, img, padding = 100):
        
        overlay_shape_h = img.shape[0]
        overlay_shape_w = img.shape[1]

        canvas_shape = (overlay_shape_h + padding, overlay_shape_w + padding)
        canvas = np.zeros([canvas_shape[0], canvas_shape[1]], dtype=np.uint8)
        canvas[:,:] = 205

        canvas_shape_hh = canvas_shape[0]
        canvas_shape_ww = canvas_shape[1]

        yoff = round((canvas_shape_hh - overlay_shape_h)/2)
        xoff = round((canvas_shape_ww - overlay_shape_w)/2)

        canvas[yoff : yoff + overlay_shape_h, xoff : xoff + overlay_shape_w] = img

        canvas_filled = canvas.copy()
        
        return canvas_filled
    
    ####################################################################################################
    ############################## [ROTATE_IMAGE + TOPPLE_IMAGE] #######################################
    ####################################################################################################
    
    def rotate_image(self, mat, angle):
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
    
    def topple_image(self, img):
        '''
        Image Shape = (width, height)
        '''
        width = img.shape[0]
        height = img.shape[1]

        if width > height:
            img = self.rotate_image(img, 90)
        else:
            pass

        return img

    ####################################################################################################
    ######################################### [KICKSTARTER] ############################################
    ####################################################################################################

    def stitch(self):
        '''
        ===================================== [STITCH] =================================================

                                         Work-in-progress

        This function does the following things:
            1) It gets the list of img_names that were inputted in the command line
            2) It extracts the work_megapix, seam_megapix, compose_megapix, conf_thresh, ba_refine_mask,
            save_graph, warp_type, blend_type, blend_strength, result_name, timelapse_type, and finder
            3) For each image name in the img_name list, its dimensions are appended to full_img_sizes list,
            and there is some resizing done with the work_megapix which I need to find out. The features
            are computed and appended into the features list, full_img is resized with seam_scale and placed
            in the images list
            4) After getting all the images and features and sizes, the matcher object made from a function call,
            and matches were made and stored in variable p
            5) Get the best matches between features according to the implementation in the paper
            ...
            ...
            ...
        '''
        self.START = time.time()

        img_names = self.name_list
        work_megapix = self.OPTIMAL_SETTINGS[self.SELECTION]['work_megapix']
        seam_megapix = self.OPTIMAL_SETTINGS[self.SELECTION]['seam_megapix']
        compose_megapix = self.OPTIMAL_SETTINGS[self.SELECTION]['compose_megapix']
        conf_thresh = self.OPTIMAL_SETTINGS[self.SELECTION]['conf_thresh']
        ba_refine_mask = self.OPTIMAL_SETTINGS[self.SELECTION]['ba_refine_mask']
        wave_correct = self.WAVE_CORRECT_CHOICES[self.OPTIMAL_SETTINGS[self.SELECTION]['wave_correct']]
        
        if self.OPTIMAL_SETTINGS[self.SELECTION]['save_graph'] is None:
            save_graph = False
        else:
            save_graph = True
        
        warp_type = self.OPTIMAL_SETTINGS[self.SELECTION]['warp']
        blend_type = self.OPTIMAL_SETTINGS[self.SELECTION]['blend']
        blend_strength = self.OPTIMAL_SETTINGS[self.SELECTION]['blend_strength']
        result_name = self.OPTIMAL_SETTINGS[self.SELECTION]['output']

        if self.OPTIMAL_SETTINGS[self.SELECTION]['timelapse'] is not None:
            timelapse = True
            if self.OPTIMAL_SETTINGS[self.SELECTION]['timelapse'] == "as_is":
                timelapse_type = cv.detail.Timelapser_AS_IS
            elif self.OPTIMAL_SETTINGS[self.SELECTION]['timelapse'] == "crop":
                timelapse_type = cv.detail.Timelapser_CROP
            else:
                logger.error("Bad timelapse method")
                self.merged_image_for_frontend = None
                self.merging_success_for_frontend = False
                self.error_caught_for_frontend = "Bad timelapse method"
                self.returning_tuple = (self.merging_success_for_frontend,
                                        self.error_caught_for_frontend, 
                                        self.merged_image_for_frontend)
        else:
            timelapse = False
        
        initialise_start_timing = time.time()
        finder = self.FEATURES_FIND_CHOICES[self.OPTIMAL_SETTINGS[self.SELECTION]['features']]
        initialise_end_timing = time.time()

        logger.info('\nThis is the feature_finder utilised: {}'.format(finder))
        logger.info('Initialisation took a total of {:.5f} seconds\n'.format(initialise_end_timing - initialise_start_timing))
        
        seam_work_aspect = 1
        full_img_sizes = []
        features = []
        images = []
        is_work_scale_set = False
        is_seam_scale_set = False
        is_compose_scale_set = False

        idx = 0
        for img in self.image_list:
            img_replace = self.map_cropper(img)
            self.image_list[idx] = img_replace
            idx = idx + 1
        
        for img in self.image_list:
            full_img = img

            if full_img is None:
                logger.error('full_img cannot be read')
                self.merged_image_for_frontend = None
                self.merging_success_for_frontend = False
                self.error_caught_for_frontend = "full_img cannot be read"
                self.returning_tuple = (self.merging_success_for_frontend,
                                        self.error_caught_for_frontend, 
                                        self.merged_image_for_frontend)
                # sys.exit(0)

            full_img_sizes.append((full_img.shape[1], full_img.shape[0]))
            
            if work_megapix < 0:
                img = full_img
                work_scale = 1
                is_work_scale_set = True
            else:
                
                if is_work_scale_set is False:
                    work_scale = min(1.0, np.sqrt(work_megapix * 1e6 / (full_img.shape[0] * full_img.shape[1])))
                    is_work_scale_set = True
                
                img = cv.resize(src=full_img, dsize=None, fx=work_scale, fy=work_scale, interpolation=cv.INTER_LINEAR_EXACT)
            
            if is_seam_scale_set is False:
                seam_scale = min(1.0, np.sqrt(seam_megapix * 1e6 / (full_img.shape[0] * full_img.shape[1])))
                seam_work_aspect = seam_scale / work_scale
                is_seam_scale_set = True

            logger.info('Detecting and Computing Features with {}'.format(finder))
            
            if self.SELECTION == 0:
                img = cv.GaussianBlur(img, (5,5), 9)
                img = cv.medianBlur(img, 11)

            # if self.SELECTION in [3, 4]:
            #     img_feat = cv.detail.computeImageFeatures2(self.default_finder, img)
            #     (kps, des) = finder.detectAndCompute(img)
            #     self.class_hijacking(img_feat, kps, des)
            # else:
            #     img_feat = cv.detail.computeImageFeatures2(finder, img)

            img_feat = cv.detail.computeImageFeatures2(finder, img)
            
            features.append(img_feat)
            
            img = cv.resize(src=full_img, dsize=None, fx=seam_scale, fy=seam_scale, interpolation=cv.INTER_LINEAR_EXACT)
            images.append(img)

        matcher = self.get_matcher()
        # logger.info('matcher variable is: {}'.format(matcher))

        # Pairwise matching is executed. Features matcher which finds two best matches for each 
        # feature and leaves the best one only if the ratio between descriptor distances is greater 
        # than the threshold match_conf.
        p = matcher.apply2(features)
        matcher.collectGarbage()
        logger.info('p variable is: {}'.format(p))

        # p is a list of detail_matchesInfo objects (matched pairs)
        # is used by leave matchesBiggestComponent, which will give the
        # largest set of images which belongs to a panorama

        logger.info(cv.detail.matchesGraphAsString(img_names, p, conf_thresh))

        indices = cv.detail.leaveBiggestComponent(features, p, conf_thresh)

        # logger.info(cv.detail.matchesGraphAsString(img_names, p, conf_thresh))
        # logger.info('indices is: {}'.format(indices))
        img_subset = []
        img_names_subset = []
        full_img_sizes_subset = []

        for i in range(len(indices)):
            # Is just going down the column because indices is of that format
            img_names_subset.append(img_names[indices[i]])
            img_subset.append(images[indices[i]])
            full_img_sizes_subset.append(full_img_sizes[indices[i]])

        images = img_subset
        img_names = img_names_subset
        full_img_sizes = full_img_sizes_subset
        num_images = len(img_names)

        if num_images < 2:
            # Frontend to catch the error
            logger.error("User needs to provide more images")
            self.merged_image_for_frontend = None
            self.merging_success_for_frontend = False
            self.error_caught_for_frontend = "Error has occured due to the following possible reasons:\n1) User needs to provide more images\n2) Images provided not found to be part of the same map area"
            self.returning_tuple = (self.merging_success_for_frontend,
                                    self.error_caught_for_frontend, 
                                    self.merged_image_for_frontend)
            return self.returning_tuple


        estimator = self.ESTIMATOR_CHOICES[self.OPTIMAL_SETTINGS[self.SELECTION]['estimator']]()
        b, cameras = estimator.apply(features, p, None)
        
        # [cv::detail_CameraParams structure]:
        # K: Camera's intrinsic matrix, includes Focal Length and Principle Point
        # focal: Focal length
        # aspect: Scale factor
        # ppx and ppy: Principle point
        # R: Rotation matrix
        # t: Translation matrix 

        if not b:
            logger.error("Homography estimation failed.")
            self.merged_image_for_frontend = None
            self.merging_success_for_frontend = False
            self.error_caught_for_frontend = "Homography estimation failed"
            self.returning_tuple = (self.merging_success_for_frontend,
                                    self.error_caught_for_frontend, 
                                    self.merged_image_for_frontend)
            return self.returning_tuple
            # sys.exit(0)

        for cam in cameras:
            cam.R = cam.R.astype(np.float32)
            # logger.info('Here is the cam.R: {}'.format(cam.R))
            # logger.info('Here is the cam.K: {}'.format(cam.K))
            # logger.info('Here is the cam.t: {}'.format(cam.t))
        
        adjuster = self.BA_COST_CHOICES[self.OPTIMAL_SETTINGS[self.SELECTION]['ba']]()
        adjuster.setConfThresh(1)
        refine_mask = np.zeros((3, 3), np.uint8)

        if ba_refine_mask[0] == 'x':
            refine_mask[0, 0] = 1
        if ba_refine_mask[1] == 'x':
            refine_mask[0, 1] = 1
        if ba_refine_mask[2] == 'x':
            refine_mask[0, 2] = 1
        if ba_refine_mask[3] == 'x':
            refine_mask[1, 1] = 1
        if ba_refine_mask[4] == 'x':
            refine_mask[1, 2] = 1

        adjuster.setRefinementMask(refine_mask)
        b, cameras = adjuster.apply(features, p, cameras)

        if not b:
            logger.error("Camera parameters adjusting failed")
            self.merged_image_for_frontend = None
            self.merging_success_for_frontend = False
            self.error_caught_for_frontend = "Camera parameters adjusting failed"
            self.returning_tuple = (self.merging_success_for_frontend,
                                    self.error_caught_for_frontend, 
                                    self.merged_image_for_frontend)
            return self.returning_tuple
            # sys.exit(0)

        focals = []

        for cam in cameras:
            focals.append(cam.focal)
        focals.sort()

        if len(focals) % 2 == 1:
            warped_image_scale = focals[len(focals) // 2]
        else:
            warped_image_scale = (focals[len(focals) // 2] + focals[len(focals) // 2 - 1]) / 2
        
        if wave_correct is not None:
            rmats = []
            for cam in cameras:
                rmats.append(np.copy(cam.R))
            rmats = cv.detail.waveCorrect(rmats, wave_correct)
            for idx, cam in enumerate(cameras):
                cam.R = rmats[idx]
        
        corners = []
        masks_warped = []
        images_warped = []
        sizes = []
        masks = []

        masks_white = []
        masks_grey = []
        masks_black = []

        for i in range(0, num_images):
            um = cv.UMat(255 * np.ones((images[i].shape[0], images[i].shape[1]), np.uint8))
            masks.append(um)

        warper = cv.PyRotationWarper(warp_type, warped_image_scale * seam_work_aspect)  # warper could be nullptr?

        i = 0

        for idx in range(0, num_images):
            i += 1
            K = cameras[idx].K().astype(np.float32)
            swa = seam_work_aspect
            K[0, 0] *= swa
            K[0, 2] *= swa
            K[1, 1] *= swa
            K[1, 2] *= swa
            corner, image_wp = warper.warp(images[idx], K, cameras[idx].R, cv.INTER_LINEAR, cv.BORDER_REFLECT)
            # cv.imshow('Image for Merging_' + str(i), image_wp)
            corners.append(corner) # Find out what is corner
            sizes.append((image_wp.shape[1], image_wp.shape[0]))
            images_warped.append(image_wp)
            p, mask_wp = warper.warp(masks[idx], K, cameras[idx].R, cv.INTER_NEAREST, cv.BORDER_CONSTANT)
            masks_warped.append(mask_wp.get())
        
        images_warped_f = []
        for img in images_warped:
            imgf = img.astype(np.float32)
            images_warped_f.append(imgf)

        compensator = self.get_compensator()
        compensator.feed(corners=corners, images=images_warped, masks=masks_warped)

        seam_finder = self.SEAM_FIND_CHOICES[self.OPTIMAL_SETTINGS[self.SELECTION]['seam']]
        masks_warped = seam_finder.find(images_warped_f, corners, masks_warped)
        compose_scale = 1
        corners = []
        sizes = []
        blender = None
        timelapser = None
        # https://github.com/opencv/opencv/blob/master/samples/cpp/stitching_detailed.cpp#L725 ?

        for idx, img in enumerate(self.image_list):
            full_img = img

            if not is_compose_scale_set:
                if compose_megapix > 0:
                    compose_scale = min(1.0, np.sqrt(compose_megapix * 1e6 / (full_img.shape[0] * full_img.shape[1])))
                is_compose_scale_set = True
                compose_work_aspect = compose_scale / work_scale
                warped_image_scale *= compose_work_aspect
                warper = cv.PyRotationWarper(warp_type, warped_image_scale)
                for i in range(0, len(img_names)):
                    cameras[i].focal *= compose_work_aspect
                    cameras[i].ppx *= compose_work_aspect
                    cameras[i].ppy *= compose_work_aspect
                    sz = (int(round(full_img_sizes[i][0] * compose_scale)),
                        int(round(full_img_sizes[i][1] * compose_scale)))
                    K = cameras[i].K().astype(np.float32)
                    roi = warper.warpRoi(sz, K, cameras[i].R)
                    corners.append(roi[0:2])
                    sizes.append(roi[2:4])
            if abs(compose_scale - 1) > 1e-1:
                img = cv.resize(src=full_img, dsize=None, fx=compose_scale, fy=compose_scale,
                                interpolation=cv.INTER_LINEAR_EXACT)
            else:
                img = full_img
            _img_size = (img.shape[1], img.shape[0])
            K = cameras[idx].K().astype(np.float32)

            corner, image_warped = warper.warp(img, K, cameras[idx].R, cv.INTER_LANCZOS4, cv.BORDER_REFLECT_101) # was linear

            white_mask = self.mask_maker(image_warped, mask_color_target = 'white')
            # grey_mask = self.mask_maker(image_warped, mask_color_target = 'gray')
            black_mask = self.mask_maker(image_warped, mask_color_target = 'black')

            # cv.imwrite('white_mask_{}.jpg'.format(idx), white_mask)
            # cv.imwrite('black_mask_{}.jpg'.format(idx), black_mask)

            masks_white.append(white_mask)
            # masks_grey.append(grey_mask)
            masks_black.append(black_mask)

            mask = 255 * np.ones((img.shape[0], img.shape[1]), np.uint8)
            p, mask_warped = warper.warp(mask, K, cameras[idx].R, cv.INTER_NEAREST, cv.BORDER_CONSTANT)
            compensator.apply(idx, corners[idx], image_warped, mask_warped)

            image_warped_s = image_warped.astype(np.int16)
            
            white_mask = white_mask.astype(np.int16)
            # grey_mask = grey_mask.astype(np.int16)
            black_mask = black_mask.astype(np.int16)

            dilated_mask = cv.dilate(masks_warped[idx], None)
            seam_mask = cv.resize(dilated_mask, (mask_warped.shape[1], mask_warped.shape[0]), 0, 0, cv.INTER_LINEAR_EXACT)
            mask_warped = cv.bitwise_and(seam_mask, mask_warped)

            if blender is None and not timelapse:
                blender = cv.detail.Blender_createDefault(cv.detail.Blender_NO)
                dst_sz = cv.detail.resultRoi(corners=corners, sizes=sizes)
                blend_width = np.sqrt(dst_sz[2] * dst_sz[3]) * blend_strength / 100

                if blend_width < 1:
                    blender = cv.detail.Blender_createDefault(cv.detail.Blender_NO)

                elif blend_type == "multiband":
                    blender = cv.detail_MultiBandBlender()
                    blender.setNumBands((np.log(blend_width) / np.log(2.) - 1.).astype(int))

                elif blend_type == "feather":
                    blender = cv.detail_FeatherBlender()
                    blender.setSharpness(1. / blend_width)

                    blender_white = cv.detail_FeatherBlender()
                    blender_white.setSharpness(1. / blend_width)

                    blender_grey = cv.detail_FeatherBlender()
                    blender_grey.setSharpness(1. / blend_width)

                    blender_black = cv.detail_FeatherBlender()
                    blender_black.setSharpness(1. / blend_width)

                blender.prepare(dst_sz)
                blender_white.prepare(dst_sz)
                blender_grey.prepare(dst_sz)
                blender_black.prepare(dst_sz)

            elif timelapser is None and timelapse:
                timelapser = cv.detail.Timelapser_createDefault(timelapse_type)
                timelapser.initialize(corners, sizes)

            if timelapse:
                ma_tones = np.ones((image_warped_s.shape[0], image_warped_s.shape[1]), np.uint8)
                timelapser.process(image_warped_s, ma_tones, corners[idx])
                pos_s = img_names[idx].rfind("/")

                if pos_s == -1:
                    fixed_file_name = "fixed_" + img_names[idx]
                else:
                    fixed_file_name = img_names[idx][:pos_s + 1] + "fixed_" + img_names[idx][pos_s + 1:]
                # cv.imwrite(fixed_file_name, timelapser.getDst())

            else:
                blender.feed(cv.UMat(image_warped_s), mask_warped, corners[idx])
                blender_white.feed(cv.UMat(white_mask), mask_warped, corners[idx])
                # blender_grey.feed(cv.UMat(grey_mask), mask_warped, corners[idx])
                blender_black.feed(cv.UMat(black_mask), mask_warped, corners[idx])

        if not timelapse:
            result = None
            result_mask = None

            result_white = None
            result_white_mask = None

            result_grey = None
            result_grey_mask = None

            result_black = None
            result_black_mask = None

            # Feed is processed and given out as a combination of masks
            result, result_mask = blender.blend(result, result_mask) 
            result_white, result_white_mask = blender_white.blend(result_white, result_white_mask)
            result_grey, result_grey_mask = blender_grey.blend(result_grey, result_grey_mask)
            result_black, result_black_mask = blender_black.blend(result_black, result_black_mask)

            self.END = time.time()
            self.DURATION = self.END - self.START

            logger.info('Merging is completed')
            logger.info('Time taken for stitching is: {} seconds'.format(self.DURATION))
            
            dst = cv.normalize(src=result, dst=None, alpha=255., norm_type=cv.NORM_MINMAX, dtype=cv.CV_8U)
            result_white = cv.normalize(src=result_white, dst=None, alpha=255., norm_type=cv.NORM_MINMAX, dtype=cv.CV_8U)
            # result_grey = cv.normalize(src=result_grey, dst=None, alpha=255., norm_type=cv.NORM_MINMAX, dtype=cv.CV_8U)
            result_black = cv.normalize(src=result_black, dst=None, alpha=255., norm_type=cv.NORM_MINMAX, dtype=cv.CV_8U)

            # cv.imwrite('map_white.jpg', result_white)
            # cv.imshow('unprocessed_merged', dst)
            # cv.imwrite('map_black.jpg', result_black)


            # No resizing needed before sending to platform
            # zoom_x = 600.0 / result.shape[1]
            # zoom_x = 1.0
            # dst = cv.resize(dst, dsize=None, fx=zoom_x, fy=zoom_x)

            dst = cv.cvtColor(dst, cv.COLOR_BGR2GRAY)
            result_white = cv.cvtColor(result_white, cv.COLOR_BGR2GRAY)
            # result_grey = cv.cvtColor(result_grey, cv.COLOR_BGR2GRAY) # grey not actually needed (just overwrite dst)
            result_black = cv.cvtColor(result_black, cv.COLOR_BGR2GRAY)

            black = np.where(result_black[:,:] > 0)
            white = np.where(result_white[:,:] > 0)


            # Build in a bottom-to-top manner, as we do not want
            # the overwriting of pixel values. The assignment of
            # values to the pixel locations follow a simple flow.
            # Assign values to coloured pixels that take up the biggest 
            # area followed by the next.
            dst[:,:] = 205 
            dst[white] = 255
            dst[black] = 0

            dst = self.map_cropper(dst)
            dst = self.centralise_and_pad(dst, 100)
            dst = self.topple_image(dst)



            self.merged_image_for_frontend = dst
            self.merging_success_for_frontend = True
            self.error_caught_for_frontend = ""
            self.returning_tuple = (self.merging_success_for_frontend,
                                    self.error_caught_for_frontend, 
                                    self.merged_image_for_frontend)
            
            # cv.imwrite('processed_merge.jpg', dst)

            return self.returning_tuple
            
    ####################################################################################################
    ##################################### [END OF KICKSTARTER] #########################################
    ####################################################################################################
    
    