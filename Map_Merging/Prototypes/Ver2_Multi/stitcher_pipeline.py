"""
Stitching sample (advanced)
===========================

Show how to use Stitcher API from python.
"""

# Python 2/3 compatibility
from __future__ import print_function

import argparse
from collections import OrderedDict

import cv2 as cv
import numpy as np
import imutils
import time
import multiprocessing
import os
import sys

CURDIR = os.path.dirname(__file__)
sys.path.append(os.path.abspath(os.path.join(CURDIR, '..', '..')))

from Utilities import GeodescFeatures2D
from Utilities import ContextDescFeatures2D

# cv.ocl.setUseOpenCL(False)

'''
Files to pass:
1) File format: jpg/png

Insert all functions in a single class with a constructor (+array of images),
so no need to import os and find
'''


#################################################################################################
############################ INITIALISING AND INSTANTIATING #####################################
#################################################################################################

EXPOS_COMP_CHOICES = OrderedDict()
EXPOS_COMP_CHOICES['gain_blocks'] = cv.detail.ExposureCompensator_GAIN_BLOCKS
EXPOS_COMP_CHOICES['gain'] = cv.detail.ExposureCompensator_GAIN
EXPOS_COMP_CHOICES['channel'] = cv.detail.ExposureCompensator_CHANNELS
EXPOS_COMP_CHOICES['channel_blocks'] = cv.detail.ExposureCompensator_CHANNELS_BLOCKS
EXPOS_COMP_CHOICES['no'] = cv.detail.ExposureCompensator_NO

BA_COST_CHOICES = OrderedDict()
BA_COST_CHOICES['ray'] = cv.detail_BundleAdjusterRay
BA_COST_CHOICES['reproj'] = cv.detail_BundleAdjusterReproj
BA_COST_CHOICES['affine'] = cv.detail_BundleAdjusterAffinePartial
BA_COST_CHOICES['no'] = cv.detail_NoBundleAdjuster

# For computational timing
START = 0
END = 0

# For saving and reading images
# DIR = r'C:\Users\ryanl\OneDrive\Documents\GitHub\fyp_fleet_management\Map_Merging\Image_Stitching\Ver2\Images\\'
DIR = '/home/rllyryan/Documents/GitHub/FYP_AY21-22_Ryan/Map_Merging/Prototypes/Ver2_Multi/Images/'

FEATURES_FIND_CHOICES = OrderedDict()
try:
    # cv.xfeatures2d_SURF.create() # SURF cannot be called because NONFREEMODULE flag not set to true in compiler
    FEATURES_FIND_CHOICES['surf'] = cv.xfeatures2d_SURF.create
except (AttributeError, cv.error) as e:
    print("SURF not available\n")

try:
    FEATURES_FIND_CHOICES['orb'] = cv.ORB_create
except (AttributeError, cv.error) as e:
    print('ORB not available\n')

try:
    FEATURES_FIND_CHOICES['sift'] = cv.SIFT_create
except AttributeError:
    print("SIFT not available\n")
try:
    FEATURES_FIND_CHOICES['brisk'] = cv.BRISK_create
except AttributeError:
    print("BRISK not available\n")
try:
    FEATURES_FIND_CHOICES['akaze'] = cv.AKAZE_create
except AttributeError:
    print("AKAZE not available\n")
try:
    FEATURES_FIND_CHOICES['kaze'] = cv.KAZE_create
except AttributeError:
    print("KAZE not available\n")
try:
    FEATURES_FIND_CHOICES['geodesc'] = GeodescFeatures2D
except AttributeError:
    print("geodesc not available\n")
try:
    FEATURES_FIND_CHOICES['contextdesc'] = ContextDescFeatures2D
except AttributeError:
    print("contextdesc not available\n")


print('[FEATURES_FIND_CHOICES] ', FEATURES_FIND_CHOICES)

SEAM_FIND_CHOICES = OrderedDict()
SEAM_FIND_CHOICES['dp_color'] = cv.detail_DpSeamFinder('COLOR')
SEAM_FIND_CHOICES['dp_colorgrad'] = cv.detail_DpSeamFinder('COLOR_GRAD')
SEAM_FIND_CHOICES['voronoi'] = cv.detail.SeamFinder_createDefault(cv.detail.SeamFinder_VORONOI_SEAM)
# SEAM_FIND_CHOICES['graph_cut'] = cv.detail_GraphCutSeamFinder('COST_COLOR')
SEAM_FIND_CHOICES['no'] = cv.detail.SeamFinder_createDefault(cv.detail.SeamFinder_NO)

ESTIMATOR_CHOICES = OrderedDict()
ESTIMATOR_CHOICES['homography'] = cv.detail_HomographyBasedEstimator
ESTIMATOR_CHOICES['affine'] = cv.detail_AffineBasedEstimator

WARP_CHOICES = (
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

WAVE_CORRECT_CHOICES = OrderedDict()
WAVE_CORRECT_CHOICES['horiz'] = cv.detail.WAVE_CORRECT_HORIZ
WAVE_CORRECT_CHOICES['no'] = None
WAVE_CORRECT_CHOICES['vert'] = cv.detail.WAVE_CORRECT_VERT

BLEND_CHOICES = ('multiband', 'feather', 'no',)

#################################################################################################
############################ MAKING THE PARSER FOR CMD LINE #####################################
#################################################################################################

parser = argparse.ArgumentParser(
    prog="stitching_detailed.py", description="Rotation model images stitcher"
)
parser.add_argument(
    'img_names', nargs='+',
    help="Files to stitch", type=str
)
parser.add_argument(
    '--try_cuda',
    action='store',
    default=False,
    help="Try to use CUDA. The default value is no. All default values are for CPU mode.",
    type=bool, dest='try_cuda'
)
parser.add_argument(
    '--work_megapix', action='store', default=0.6,
    help="Resolution for image registration step. The default is 0.6 Mpx",
    type=float, dest='work_megapix'
)
parser.add_argument(
    '--features', action='store', default=list(FEATURES_FIND_CHOICES.keys())[0],
    help="Type of features used for images matching. The default is '%s'." % list(FEATURES_FIND_CHOICES.keys())[0],
    choices=FEATURES_FIND_CHOICES.keys(),
    type=str, dest='features'
)
parser.add_argument(
    '--matcher', action='store', default='homography',
    help="Matcher used for pairwise image matching. The default is 'homography'.",
    choices=('homography', 'affine'),
    type=str, dest='matcher'
)
parser.add_argument(
    '--estimator', action='store', default=list(ESTIMATOR_CHOICES.keys())[0],
    help="Type of estimator used for transformation estimation. The default is '%s'." % list(ESTIMATOR_CHOICES.keys())[0],
    choices=ESTIMATOR_CHOICES.keys(),
    type=str, dest='estimator'
)
parser.add_argument(
    '--match_conf', action='store',
    help="Confidence for feature matching step. The default is 0.3 for ORB and 0.65 for other feature types.",
    type=float, dest='match_conf'
)
parser.add_argument(
    '--conf_thresh', action='store', default=1.0,
    help="Threshold for two images are from the same panorama confidence.The default is 1.0.",
    type=float, dest='conf_thresh'
)
parser.add_argument(
    '--ba', action='store', default=list(BA_COST_CHOICES.keys())[0],
    help="Bundle adjustment cost function. The default is '%s'." % list(BA_COST_CHOICES.keys())[0],
    choices=BA_COST_CHOICES.keys(),
    type=str, dest='ba'
)
parser.add_argument(
    '--ba_refine_mask', action='store', default='xxxxx',
    help="Set refinement mask for bundle adjustment. It looks like 'x_xxx', "
         "where 'x' means refine respective parameter and '_' means don't refine, "
         "and has the following format:<fx><skew><ppx><aspect><ppy>. "
         "The default mask is 'xxxxx'. "
         "If bundle adjustment doesn't support estimation of selected parameter then "
         "the respective flag is ignored.",
    type=str, dest='ba_refine_mask'
)
parser.add_argument(
    '--wave_correct', action='store', default=list(WAVE_CORRECT_CHOICES.keys())[0],
    help="Perform wave effect correction. The default is '%s'" % list(WAVE_CORRECT_CHOICES.keys())[0],
    choices=WAVE_CORRECT_CHOICES.keys(),
    type=str, dest='wave_correct'
)
parser.add_argument(
    '--save_graph', action='store', default=None,
    help="Save matches graph represented in DOT language to <file_name> file.",
    type=str, dest='save_graph'
)
parser.add_argument(
    '--warp', action='store', default=WARP_CHOICES[0],
    help="Warp surface type. The default is '%s'." % WARP_CHOICES[0],
    choices=WARP_CHOICES,
    type=str, dest='warp'
)
parser.add_argument(
    '--seam_megapix', action='store', default=0.1,
    help="Resolution for seam estimation step. The default is 0.1 Mpx.",
    type=float, dest='seam_megapix'
)
parser.add_argument(
    '--seam', action='store', default=list(SEAM_FIND_CHOICES.keys())[0],
    help="Seam estimation method. The default is '%s'." % list(SEAM_FIND_CHOICES.keys())[0],
    choices=SEAM_FIND_CHOICES.keys(),
    type=str, dest='seam'
)

parser.add_argument(
    '--compose_megapix', action='store', default=-1,
    help="Resolution for compositing step. Use -1 for original resolution. The default is -1",
    type=float, dest='compose_megapix'
)
parser.add_argument(
    '--expos_comp', action='store', default=list(EXPOS_COMP_CHOICES.keys())[0],
    help="Exposure compensation method. The default is '%s'." % list(EXPOS_COMP_CHOICES.keys())[0],
    choices=EXPOS_COMP_CHOICES.keys(),
    type=str, dest='expos_comp'
)
parser.add_argument(
    '--expos_comp_nr_feeds', action='store', default=1,
    help="Number of exposure compensation feed.",
    type=np.int32, dest='expos_comp_nr_feeds'
)
parser.add_argument(
    '--expos_comp_nr_filtering', action='store', default=2,
    help="Number of filtering iterations of the exposure compensation gains.",
    type=float, dest='expos_comp_nr_filtering'
)
parser.add_argument(
    '--expos_comp_block_size', action='store', default=32,
    help="BLock size in pixels used by the exposure compensator. The default is 32.",
    type=np.int32, dest='expos_comp_block_size'
)
parser.add_argument(
    '--blend', action='store', default=BLEND_CHOICES[0],
    help="Blending method. The default is '%s'." % BLEND_CHOICES[0],
    choices=BLEND_CHOICES,
    type=str, dest='blend'
)
parser.add_argument(
    '--blend_strength', action='store', default=5,
    help="Blending strength from [0,100] range. The default is 5",
    type=np.int32, dest='blend_strength'
)
parser.add_argument(
    '--output', action='store', default='result.jpg',
    help="The default is 'result.jpg'",
    type=str, dest='output'
)
parser.add_argument(
    '--timelapse', action='store', default=None,
    help="Output warped images separately as frames of a time lapse movie, "
         "with 'fixed_' prepended to input file names.",
    type=str, dest='timelapse'
)
parser.add_argument(
    '--rangewidth', action='store', default=-1,
    help="uses range_width to limit number of images to match with.",
    type=int, dest='rangewidth'
)

__doc__ += '\n' + parser.format_help()

#################################################################################################
################################### FUNCTION DEFINITIONS ########################################
#################################################################################################

def class_hijacking(captured_object, keypoints, descriptors):
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

def get_matcher(args):
    '''
    ================================== [GET_MATCHER] ============================================
    This function is responsible for checking the try_cuda and matcher_type that was inputted by
    the user in the command line. Sets the match_conf according to the keypoint detector and 
    algorithm, and sets the range_width. In addition to this, it instantiates the matcher object, 
    and returns it to the caller.
    '''
    try_cuda = args.try_cuda
    matcher_type = args.matcher
    print('[GET_MATCHER]', args.features, '\n')
    if args.match_conf is None:
        if args.features == 'orb':
            match_conf = 0.3
        else:
            match_conf = 0.65
    else:
        match_conf = args.match_conf
    range_width = args.rangewidth
    if matcher_type == "affine":
        matcher = cv.detail_AffineBestOf2NearestMatcher(False, try_cuda, match_conf)
    elif range_width == -1:
        matcher = cv.detail.BestOf2NearestMatcher_create(try_cuda, match_conf)
    else:
        matcher = cv.detail.BestOf2NearestRangeMatcher_create(range_width, try_cuda, match_conf)
    return matcher


def get_compensator(args):
    '''
    ================================== [GET_COMPENSATOR] =================================================
    This function is responsible for setting up the process for compensating the gain through the
    extraction of three required variables, expos_comp_type, expos_comp_nr_feeds, and expos_comp_block_size.
    It then instantiates the compensator object for use, and returns it to the caller.
    '''
    expos_comp_type = EXPOS_COMP_CHOICES[args.expos_comp]
    expos_comp_nr_feeds = args.expos_comp_nr_feeds
    expos_comp_block_size = args.expos_comp_block_size
    # expos_comp_nr_filtering = args.expos_comp_nr_filtering
    if expos_comp_type == cv.detail.ExposureCompensator_CHANNELS:
        compensator = cv.detail_ChannelsCompensator(expos_comp_nr_feeds)
        # compensator.setNrGainsFilteringIterations(expos_comp_nr_filtering)
    elif expos_comp_type == cv.detail.ExposureCompensator_CHANNELS_BLOCKS:
        compensator = cv.detail_BlocksChannelsCompensator(
            expos_comp_block_size, expos_comp_block_size,
            expos_comp_nr_feeds
        )
        # compensator.setNrGainsFilteringIterations(expos_comp_nr_filtering)
    else:
        compensator = cv.detail.ExposureCompensator_createDefault(expos_comp_type)
    return compensator

def mask_maker(img, mask_color_target = None):
    
    if len(img.shape) == 3:
        gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
    else:
        gray = img

    mask = gray.copy()

    # This pixel finding is optimised with respect to the 5 image pairs
    black = np.where((mask[:,:] <= 50))
    grey = np.where((mask[:,:] <= 235) & (mask[:,:] >= 51))
    white = np.where((mask[:,:]<= 255) & (mask[:,:] >= 236))
    
    if mask_color_target == 'white':
        # In the alpha channel, 0 means fully transparent, while 255 means opaque
        mask[black] = 0
        mask[grey] = 0
        mask[white] = 255
    elif mask_color_target == 'gray':
        # In the alpha channel, 0 means fully transparent, while 255 means opaque
        mask[black] = 0
        mask[grey] = 255
        mask[white] = 0
    elif mask_color_target == 'black':
        # In the alpha channel, 0 means fully transparent, while 255 means opaque
        mask[black] = 255
        mask[grey] = 0
        mask[white] = 0
    else:
        pass

    mask = cv.cvtColor(mask, cv.COLOR_GRAY2BGR)

    return mask


def main():
    '''
    ======================================= [MAIN] =================================================
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
        6)
        '''

    args = parser.parse_args()
    print('[MAIN]', args, '\n')
    img_names = args.img_names
    print('[MAIN] Here is the list of image names: ', img_names, '\n') #something wrong with the args.imagenames
    work_megapix = args.work_megapix
    seam_megapix = args.seam_megapix
    compose_megapix = args.compose_megapix
    conf_thresh = args.conf_thresh
    ba_refine_mask = args.ba_refine_mask
    wave_correct = WAVE_CORRECT_CHOICES[args.wave_correct]
    if args.save_graph is None:
        save_graph = False
    else:
        save_graph = True
    warp_type = args.warp
    blend_type = args.blend
    blend_strength = args.blend_strength
    result_name = args.output
    if args.timelapse is not None:
        timelapse = True
        if args.timelapse == "as_is":
            timelapse_type = cv.detail.Timelapser_AS_IS
        elif args.timelapse == "crop":
            timelapse_type = cv.detail.Timelapser_CROP
        else:
            print("Bad timelapse method")
            exit()
    else:
        timelapse = False
    finder = FEATURES_FIND_CHOICES[args.features](nOctaveLayers = 15, hessianThreshold = 50)   
    #BRISK is 10 60 5.0
    print('[MAIN] Here is the keypoint detector and descriptor selected: ', finder, '\n')
    seam_work_aspect = 1
    full_img_sizes = []
    features = []
    images = []
    is_work_scale_set = False
    is_seam_scale_set = False
    is_compose_scale_set = False
    for name in img_names:
        # Need to implement os to check the path for Linux and Windows 
        full_dir = DIR + name
        full_img = cv.imread(full_dir)
        print(full_img.shape)
        if full_img is None:
            print("Cannot read image ", name)
            exit()
        full_img_sizes.append((full_img.shape[1], full_img.shape[0]))

        # work_scale should be -1 because the features should take into account for the difference in scale
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

        # Over here we can incorporate the Geodesc/Contextdesc
        # img = cv.GaussianBlur(img, (5,5), 9)
        # img = cv.medianBlur(img, 11) 
        img_feat = cv.detail.computeImageFeatures2(finder, img)
        # img_feat = cv.detail.computeImageFeatures2(cv.ORB_create(1000000), img)

        # (kps, des) = finder.detectAndCompute(img)
        # class_hijacking(img_feat, kps, des)
        # print('img_feat is: ', img_feat, '\n')
        features.append(img_feat)
        # print('features list is: ',features, '\n')

        # https://stackoverflow.com/questions/3112364/how-do-i-choose-an-image-interpolation-method-emgu-opencv
        # interpolation = cv.INTER_CUBIC or something else might be better to reduce more information lost
        img = cv.resize(src=full_img, dsize=None, fx=seam_scale, fy=seam_scale, interpolation=cv.INTER_LINEAR_EXACT)
        images.append(img)

    matcher = get_matcher(args)
    p = matcher.apply2(features)
    # I guess p stands for pair-wise matches
    print('This is p: {}'.format(p)) # Is just a tuple of multiple detail_MatchesInfo
    print('This is the length of p {}'.format(len(p))) # Len is num_images*num_images, apparently they compare images with themselves
    print('Type of p is: {}'.format(type(p)))
    print('[MAIN] The variable p is: ', p[2].num_inliers, '\n')
    matcher.collectGarbage()

    '''
    GET THE MATCHES THEN SHOULD BE FINE
    But is detail_MatchesInfo
    '''

    if save_graph:
        with open(args.save_graph, 'w') as fh:
            fh.write(cv.detail.matchesGraphAsString(img_names, p, conf_thresh))

    # [cv.detail.leaveBiggestComponent]:
    # given a set of keypoint matches between images, returning the largest subset of 
    # images with consistent matches. In addition, according to what its implementations states, 
    # it should also remove image duplicates
    indices = cv.detail.leaveBiggestComponent(features, p, conf_thresh) # Higher conf_thresh gives more chance for images to be in panorama should give higher
    print('[MAIN] Indices after cv.detail.leaveBiggestComponent is: ', indices, '\n')
    # Just tells you in the list of images, which of the images are likely to be in the same panorama
    img_subset = []
    img_names_subset = []
    full_img_sizes_subset = []
    for i in range(len(indices)):
        img_names_subset.append(img_names[indices[i]])
        img_subset.append(images[indices[i]])
        full_img_sizes_subset.append(full_img_sizes[indices[i]])
    
    images = img_subset
    img_names = img_names_subset
    full_img_sizes = full_img_sizes_subset
    num_images = len(img_names)
    # print('[MAIN] The variable images is: ', images)
    # print('[MAIN] The variable full_img_sizes is: ', full_img_sizes)
    # print('[MAIN] The variable num_images is: ', num_images)
    if num_images < 2:
        print("Need more images")
        exit()

    # We have obtained the images that are likely to be together
    # They take the pair-wise matches (ALL OF THEM) to make the transformation matrix

    estimator = ESTIMATOR_CHOICES[args.estimator]()
    b, cameras = estimator.apply(features, p, None)
    print('[MAIN] The variable b from estimator.apply is: ', b, '\n')
    print('[MAIN] The variable cameras from estimator.apply is: ', cameras, '\n')
    
    # [cv::detail_CameraParams structure]:
    # K: Camera's intrinsic matrix, includes Focal Length and Principle Point
    # focal: Focal length
    # aspect: Scale factor
    # ppx and ppy: Principle point
    # R: Rotation matrix
    # t: Translation matrix 

    '''
    [IMPORTANT]
    '''
    # Loggers for error --> user forgets to put all the images
    if not b:
        print("Homography estimation failed.")
        exit()
    for cam in cameras:
        cam.R = cam.R.astype(np.float32)
        print('Here is the cam.R:', cam.R, '\n')
        print('Here is the cam.K:', cam.K, '\n')
        print('Here is the cam.t:', cam.t, '\n')
    
    print('Cameras is:', cameras)
    
    # Watch Cyrill Stachsis on Bundle Adjustment
    adjuster = BA_COST_CHOICES[args.ba]()
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

    # The blending adjustment does something to the matrix
    adjuster.setRefinementMask(refine_mask)
    b, cameras = adjuster.apply(features, p, cameras)

    print("b is:", b, '\n')
    print('cameras is:', cameras, '\n')

    if not b:
        print("Camera parameters adjusting failed.")
        exit()
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
    images_warped = []
    sizes = []

    # masks is basically an empty image the same size as the corresponding image
    masks = []
    # warping the masks obtained from the set of images
    masks_warped = []

    masks_white = list()
    masks_grey = list()
    masks_black = list()

    for i in range(0, num_images):
        um = cv.UMat(255 * np.ones((images[i].shape[0], images[i].shape[1]), np.uint8))
        masks.append(um)
        

    warper = cv.PyRotationWarper(warp_type, warped_image_scale * seam_work_aspect)  # warper could be nullptr?

    i = 0

    # We warp every single damn image with its corresponding matrix
    for idx in range(0, num_images):
        i += 1
        K = cameras[idx].K().astype(np.float32)
        swa = seam_work_aspect
        K[0, 0] *= swa
        K[0, 2] *= swa
        K[1, 1] *= swa
        K[1, 2] *= swa
        print('Here is K', K)
        corner, image_wp = warper.warp(images[idx], K, cameras[idx].R, cv.INTER_LANCZOS4, cv.BORDER_REFLECT)
        # cv.imshow('image' + str(i), image_wp)
        print('The corner is:', corner)
        # We are getting the x, y coordinates of the corner (not sure which corner) maybe bottom right
        # Apparently corners is for estimating the creation of the final panorama size with cv.detailResult
        # https://www.oreilly.com/library/view/opencv-4-with/9781789801811/f95e3dce-db68-417c-a975-9b06a0aff4b2.xhtml
        corners.append(corner)
        sizes.append((image_wp.shape[1], image_wp.shape[0]))
        images_warped.append(image_wp)
        p, mask_wp = warper.warp(masks[idx], K, cameras[idx].R, cv.INTER_NEAREST, cv.BORDER_REFLECT)
        # Hate them for randomly using p
        masks_warped.append(mask_wp.get())

    images_warped_f = []

    for img in images_warped:
        imgf = img.astype(np.float32)
        images_warped_f.append(imgf)

    compensator = get_compensator(args)
    compensator.feed(corners=corners, images=images_warped, masks=masks_warped)

    seam_finder = SEAM_FIND_CHOICES[args.seam]
    masks_warped = seam_finder.find(images_warped_f, corners, masks_warped)
    compose_scale = 1
    # Wait what, they did not use the corners just now
    corners = []
    sizes = []
    blender = None
    blender_white = None
    blender_grey = None
    blender_black = None
    timelapser = None
    # https://github.com/opencv/opencv/blob/master/samples/cpp/stitching_detailed.cpp#L725 ?

    alpha_channel_masks = []

    print('Cameras is:', cameras)

    for idx, name in enumerate(img_names):
        full_dir = DIR + name
        full_img = cv.imread(full_dir)
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
                sz = (int(round(full_img_sizes[i][0] * compose_scale)), int(round(full_img_sizes[i][1] * compose_scale)))
                # Seems like a redundant step to convert number type again
                K = cameras[i].K().astype(np.float32)
                # Estimate panorama size (finale)
                roi = warper.warpRoi(sz, K, cameras[i].R)
                # roi is literally a rectangle of interest (Corner Coordinate, Size) --> sufficient description
                # roi is to get the corners
                corners.append(roi[0:2])
                sizes.append(roi[2:4])
            print('CORNERS AFTER APPEND ROI IS:', corners)
        if abs(compose_scale - 1) > 1e-1:
            img = cv.resize(src=full_img, dsize=None, fx=compose_scale, fy=compose_scale,
                            interpolation=cv.INTER_LINEAR_EXACT)
        else:
            img = full_img
        _img_size = (img.shape[1], img.shape[0])
        K = cameras[idx].K().astype(np.float32)
        # cv.imwrite('img_{}.jpg'.format(idx), img)
        
        corner, image_warped = warper.warp(img, K, cameras[idx].R, cv.INTER_LANCZOS4, cv.BORDER_REFLECT_101) # was linear
        # cv.imwrite('image_warped_{}.jpg'.format(idx), image_warped) # Still looks like image

        white_mask = mask_maker(image_warped, mask_color_target = 'white')
        # white_corner, white_mask = warper.warp(white_mask, K, cameras[idx].R, cv.INTER_LINEAR, cv.BORDER_REFLECT)
        grey_mask = mask_maker(image_warped, mask_color_target = 'gray')
        # grey_corner, grey_mask = warper.warp(white_mask, K, cameras[idx].R, cv.INTER_LINEAR, cv.BORDER_REFLECT)
        black_mask = mask_maker(image_warped, mask_color_target = 'black')
        # black_corner, black_mask = warper.warp(white_mask, K, cameras[idx].R, cv.INTER_LINEAR, cv.BORDER_REFLECT)
        
        # print(white_corner)
        # print(grey_corner)
        # print(black_corner)


        masks_white.append(white_mask)
        masks_grey.append(grey_mask)
        masks_black.append(black_mask)

        mask = 255 * np.ones((img.shape[0], img.shape[1]), np.uint8)
        # cv.imwrite('mask_{}.jpg'.format(idx), mask) # Just a white background with same size as the imgs

        p, mask_warped = warper.warp(mask, K, cameras[idx].R, cv.INTER_NEAREST, cv.BORDER_CONSTANT)
        # cv.imwrite('mask_warped_{}.jpg'.format(idx), mask_warped) # Still white
        compensator.apply(idx, corners[idx], image_warped, mask_warped)
       
        # cv.imshow('Check before', image_warped)

        # COME ON LAH WHAT IS S?
        image_warped_s = image_warped.astype(np.int16)

        # cv.imshow('Check after', image_warped_s)

        # cv.imshow('black_mask', black_mask)

        white_mask = white_mask.astype(np.int16)
        grey_mask = grey_mask.astype(np.int16)
        black_mask = black_mask.astype(np.int16)

        # cv.imwrite('image_warped_s_{}.jpg'.format(idx), image_warped_s) # Still looks like image
        
        # Black and white starts here, masks_warped the culprit
        dilated_mask = cv.dilate(masks_warped[idx], None) # Looks like a mask (maybe we can mask our own mask here)
        # cv.imwrite('dilated_mask_{}.jpg'.format(idx), dilated_mask)
        
        seam_mask = cv.resize(dilated_mask, (mask_warped.shape[1], mask_warped.shape[0]), 0, 0, cv.INTER_LINEAR_EXACT)
        # cv.imwrite('seam_mask_{}.jpg'.format(idx), seam_mask)
        
        # No seam mask because we do not need any of that energy shyt
        mask_warped = cv.bitwise_and(seam_mask, mask_warped)
        # cv.imwrite('mask_warped_new_{}.jpg'.format(idx), mask_warped)
        
        if blender is None and not timelapse:
            blender = cv.detail.Blender_createDefault(cv.detail.Blender_NO)
            #canvas size
            dst_sz = cv.detail.resultRoi(corners=corners, sizes=sizes)
            #HERE IS THE FINAL CANVAS??????
            # cv.imshow('Final canvas', dst_sz)

            print('MEOWOWE', dst_sz) # SIZE OF THE CANVAS
            blend_width = np.sqrt(dst_sz[2] * dst_sz[3]) * blend_strength / 100
            print(blend_width)
            
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
            # cv.imshow('ma_tones', ma_tones)
            timelapser.process(image_warped_s, ma_tones, corners[idx])
            pos_s = img_names[idx].rfind("/")
            if pos_s == -1:
                fixed_file_name = "fixed_" + img_names[idx]
            else:
                fixed_file_name = img_names[idx][:pos_s + 1] + "fixed_" + img_names[idx][pos_s + 1:]
            cv.imwrite(fixed_file_name, timelapser.getDst())
        
        else:
            print('Meow2')
            # So the blender is able to store information 
            blender.feed(cv.UMat(image_warped_s), mask_warped, corners[idx])
            blender_white.feed(cv.UMat(white_mask), mask_warped, corners[idx])
            blender_grey.feed(cv.UMat(grey_mask), mask_warped, corners[idx])
            blender_black.feed(cv.UMat(black_mask), mask_warped, corners[idx])
    
    print('Corner after for loop', corners)
    
    if not timelapse:
        result = None
        result_mask = None

        result_white = None
        result_white_mask = None

        result_grey = None
        result_grey_mask = None

        result_black = None
        result_black_mask = None

        result, result_mask = blender.blend(result, result_mask) # From the feed comes out the stuff
        result_white, result_white_mask = blender_white.blend(result_white, result_white_mask)
        result_grey, result_grey_mask = blender_grey.blend(result_grey, result_grey_mask)
        result_black, result_black_mask = blender_black.blend(result_black, result_black_mask)
        # cv.imshow('result_mask', result_mask) # apparently the outline of the image (can fill in the gaps here!)
    
        # fill = np.where(result_mask[:,:] == 0)
        # result[fill] = 205
        # Make the mask here (Make a black mask, white mask and gray mask!)

        # cv.imwrite(DIR + result_name, result)
        # zoom_x = 1000.0 / result.shape[1]
        zoom_x = 1.0
        dst = cv.normalize(src=result, dst=None, alpha=255., norm_type=cv.NORM_MINMAX, dtype=cv.CV_8U)
        result_white = cv.normalize(src=result_white, dst=None, alpha=255., norm_type=cv.NORM_MINMAX, dtype=cv.CV_8U)
        result_grey = cv.normalize(src=result_grey, dst=None, alpha=255., norm_type=cv.NORM_MINMAX, dtype=cv.CV_8U)
        result_black = cv.normalize(src=result_black, dst=None, alpha=255., norm_type=cv.NORM_MINMAX, dtype=cv.CV_8U)

        dst = cv.resize(dst, dsize=None, fx=zoom_x, fy=zoom_x)
        # dst = imutils.resize(dst, width = 1000)

        dst = cv.cvtColor(dst, cv.COLOR_BGR2GRAY)
        result_white = cv.cvtColor(result_white, cv.COLOR_BGR2GRAY)
        # result_grey = cv.cvtColor(result_grey, cv.COLOR_BGR2GRAY)
        result_black = cv.cvtColor(result_black, cv.COLOR_BGR2GRAY)
        # cv.imshow('result_white', result_white)
        # cv.imshow('result_grey', result_grey)
        # cv.imshow('result_black', result_black)

        print('Check result_white', result_white[10,10])

     
        black = np.where(result_black[:,:] > 0)
        white = np.where(result_white[:,:] > 0)
        # grey = np.where(result_mask[:,:] > -1)

        # Build on top of each other
        dst[:,:] = 205 
        dst[white] = 255
        dst[black] = 0
            
    
        # dst = imutils.resize(dst, width = 1000)


        # print(dst[315, 100])
        print(dst.shape)

        cv.imwrite('result.jpg', dst)

        # After making the final image, we can use the PNG alpha channel mask to make all the gray 217 pixle value

        # cv.imshow(result_name, dst)
        END = time.time()
        print("Time taken to stitch the images: {} seconds".format(END-START), '\n')
        print('Number of CPUs used for stitching: ', multiprocessing.cpu_count(), '\n')
        print("Size of resulting stitched image is: ", dst.shape, '\n')
        cv.waitKey()

    print("#######################################################\nSTITCH IS COMPLETED, THANK YOU FOR YOUR PATRONAGE!!! :D\n#######################################################", '\n')


if __name__ == '__main__':
    print(__doc__)
    START = time.time()
    main()
    cv.destroyAllWindows()
    