#!/usr/bin/env python3
"""
Copyright 2020, Zixin Luo, HKUST.
Image matching example.
"""
import yaml
import cv2
import numpy as np
import tensorflow.compat.v1 as tf
import matplotlib.pyplot as plt

from colorama import Style, Fore

import os
import sys

# To disable tensorflow-numpy warnings: from https://github.com/tensorflow/tensorflow/issues/30427
import warnings 
warnings.filterwarnings('ignore', category=FutureWarning)

tf.disable_eager_execution()

# from .objectified_aslfeat.aslfeat_utils.opencvhelper import MatcherWrapper

from .models import get_model
# from .models.base_model import BaseModel
from .models.feat_model import FeatModel


class ASLFeatFeatures2D:

    def __init__(self):

        print('========== Using ASLFeatFeatures2D ==========') 

        # For the case if we want to use the in-built matching method
        self.flag_get_matches = False
        tf.reset_default_graph()
        with open('/home/rllyryan/Documents/GitHub/FYP_AY21-22_Ryan/Map_Merging/Utilities/objectified_aslfeat/configs/matching_eval.yaml', 'r') as f:
            self.config = yaml.load(f, Loader=yaml.FullLoader)
            # print(self.config)
        
        self.model_path = self.config['model_path']
        # print(self.model_path)
        self.max_dimensions = self.config['net']['max_dim']

        print('======> Loading pre-trained network',Fore.LIGHTYELLOW_EX, Style.BRIGHT)
        
        # self.model = get_model('feat_model')(self.model_path, **self.config['net']) # ==> FeatModel(...)
        # self.base_model = BaseModel(self.model_path, **self.config)
        self.model = FeatModel(self.model_path, **self.config['net'])
        
        print('======> Successfully loaded pre-trained network')
    
    def detectAndCompute(self, img, mask = None):
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)[..., np.newaxis]
        des, matrix_kps, scores = self.model.run_test_data(gray)

        keyPoints_kps = self.convert_pts_to_keypoints(matrix_kps, scores)

        return keyPoints_kps, des
    
    def convert_pts_to_keypoints(self, pts, scores, sizes = 10): 

        assert(len(pts)==len(scores))
        
        opencv_kps = []
        
        if pts is not None: 
            # convert matrix [Nx2] of pts into list of keypoints  
            # opencv_kps = [ cv2.KeyPoint(p[0], p[1], _size=sizes[i], _response=scores[i]) for i,p in enumerate(pts) ]
            opencv_kps = [ cv2.KeyPoint(p[0], p[1], size = 10, response=scores[i]) for i,p in enumerate(pts) ]
            opencv_kps = tuple(opencv_kps)               
        
        return opencv_kps 






