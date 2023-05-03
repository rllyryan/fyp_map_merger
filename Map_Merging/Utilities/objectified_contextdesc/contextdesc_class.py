from threading import RLock

import sys
import os
import cv2
import numpy as np

# from https://stackoverflow.com/questions/56820327/the-name-tf-session-is-deprecated-please-use-tf-compat-v1-session-instead
import tensorflow.compat.v1 as tf

# from https://kobkrit.com/using-allow-growth-memory-option-in-tensorflow-and-keras-dc8c8081bc96 to cope with the following error:
# "[...tensorflow/stream_executor/cuda/cuda_dnn.cc:329] Could not create cudnn handle: CUDNN_STATUS_INTERNAL_ERROR"
tf_config = tf.ConfigProto()
tf_config.gpu_options.allow_growth = True

# CURDIR = os.path.dirname(__file__)
# sys.path.append(os.path.abspath(os.path.join(CURDIR, '..')))

#from contextdesc.models import get_model
from .models.reg_model import RegModel 
from .models.loc_model import LocModel 
from .models.aug_model import AugModel 

from .contextdesc_utils.tf import set_tf_logging
from .contextdesc_utils.opencvhelper import MatcherWrapper

import warnings # to disable tensorflow-numpy warnings: from https://github.com/tensorflow/tensorflow/issues/30427
warnings.filterwarnings('ignore', category=FutureWarning)
        

class ContextDescFeatures2D: 
    # To quantize the features or not, if set to True then you have a binary descriptor
    quantize = False

    # To decide whether you want to have loggers to appear during the execution of the script
    verbose_flag = True

    def __init__(self, num_features=10000, n_sample=2048, dense_desc=False, model_type='pb', do_tf_logging=False):  

        print('========== Using ContextDescFeatures2D ==========') 
        
        self.lock = RLock()
        
        set_tf_logging(do_tf_logging)
        
        self.num_features = num_features
        self.n_sample = n_sample
        self.model_type = model_type
        self.dense_desc = dense_desc
        self.quantize = self.quantize
        
        self.loc_model_path = '../../Utilities/objectified_contextdesc/pretrained/contextdesc++'
        self.reg_model_path = '../../Utilities/objectified_contextdesc/pretrained/retrieval_model'
            
        if self.model_type == 'pb':
            reg_model_path = os.path.join(self.reg_model_path, 'reg.pb')
            loc_model_path = os.path.join(self.loc_model_path, 'loc.pb')
            aug_model_path = os.path.join(self.loc_model_path, 'aug.pb')
        elif self.model_type == 'ckpt':
            reg_model_path = os.path.join(self.reg_model_path, 'model.ckpt-550000')
            loc_model_path = os.path.join(self.loc_model_path, 'model.ckpt-400000')
            aug_model_path = os.path.join(self.loc_model_path, 'model.ckpt-400000')
        else:
            raise NotImplementedError
        
        self.keypoint_size = 10  # just a representative size for visualization and in order to convert extracted points to cv2.KeyPoint        

        self.pts = []
        self.kps = []        
        self.des = []
        self.scales = []
        self.scores = []        
        self.frame = None 
        
        print('======> Loading pre-trained network')
        self.ref_model = RegModel(reg_model_path) #get_model('reg_model')(reg_model_path)  #RegModel(reg_model_path)
        self.loc_model = LocModel(loc_model_path, **{'sift_desc': False,             # compute or not SIFT descriptor (we do not need them here!)
                                                    'n_feature': self.num_features,                                                     
                                                    'n_sample': self.n_sample,
                                                    'peak_thld': 0.04,
                                                    'dense_desc': self.dense_desc,
                                                    'upright': False})       
        self.aug_model = AugModel(aug_model_path, **{'quantz': self.quantize})         
        print('======> Successfully loaded pre-trained network')
    
            
    def __del__(self): 
        with self.lock:              
            self.ref_model.close()
            self.loc_model.close()
            self.aug_model.close()                
                
                
    def prep_img(self,img):
        rgb_list = []
        gray_list = []
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)[..., np.newaxis]
        img = img[..., ::-1]
        rgb_list.append(img)
        gray_list.append(gray)
        return rgb_list, gray_list                


    # extract regional features
    def extract_regional_features(self,rgb_list):
        reg_feat_list = []
        #model = get_model('reg_model')(model_path)
        for _, val in enumerate(rgb_list):
            reg_feat = self.ref_model.run_test_data(val)
            reg_feat_list.append(reg_feat)
        #model.close()            
        return reg_feat_list

    
    # extract local features and keypoint matchability
    def extract_local_features(self,gray_list):
        cv_kpts_list = []
        loc_info_list = []
        loc_feat_list = []
        sift_feat_list = []
        # model = get_model('loc_model')(model_path, **{'sift_desc': True,
        #                                             'n_sample': FLAGS.n_sample,
        #                                             'peak_thld': 0.04,
        #                                             'dense_desc': FLAGS.dense_desc,
        #                                             'upright': False})        
        for _, val in enumerate(gray_list):
            loc_feat, kpt_mb, normalized_xy, cv_kpts, sift_desc = self.loc_model.run_test_data(val)
            raw_kpts = [np.array((i.pt[0], i.pt[1], i.size, i.angle, i.response)) for i in cv_kpts]
            raw_kpts = np.stack(raw_kpts, axis=0)
            loc_info = np.concatenate((raw_kpts, normalized_xy, loc_feat, kpt_mb), axis=-1)
            cv_kpts_list.append(cv_kpts)
            loc_info_list.append(loc_info)
            sift_feat_list.append(sift_desc)
            loc_feat_list.append(loc_feat / np.linalg.norm(loc_feat, axis=-1, keepdims=True))
        #model.close()
        return cv_kpts_list, loc_info_list, loc_feat_list, sift_feat_list

    
    # extract augmented features
    def extract_augmented_features(self,reg_feat_list, loc_info_list):
        aug_feat_list = []
        #model = get_model('aug_model')(model_path, **{'quantz': False})
        assert len(reg_feat_list) == len(loc_info_list)
        for idx, _ in enumerate(reg_feat_list):
            aug_feat, _ = self.aug_model.run_test_data([reg_feat_list[idx], loc_info_list[idx]])
            aug_feat_list.append(aug_feat)
        #model.close()
        return aug_feat_list
        
        
    def compute_kps_des(self, frame):
        with self.lock:         
            rgb_list, gray_list = self.prep_img(frame)
            # extract regional features.
            reg_feat_list = self.extract_regional_features(rgb_list)
            # extract local features and keypoint matchability.
            cv_kpts_list, loc_info_list, loc_feat_list, sift_feat_list = self.extract_local_features(gray_list)
            # extract augmented features.
            aug_feat_list = self.extract_augmented_features(reg_feat_list,loc_info_list)        
            
            self.kps = cv_kpts_list[0]
            self.des = aug_feat_list[0]
            
            return self.kps, self.des   
        
           
    def detectAndCompute(self, img, mask=None):  #mask is a fake input  
        with self.lock: 
            self.frame = img        
            self.kps, self.des = self.compute_kps_des(img)            
            if self.verbose_flag:
                print('detector: CONTEXTDESC, descriptor: CONTEXTDESC, #features: ', len(self.kps), ', frame res: ', img.shape[0:2])                  
            
            # opencv_kps = self.

            return self.kps, self.des
    

    # Convert matrix of pts into list of keypoints
    # Not used because the keypoints are detected by SIFT which produces cv2.keyPoints
    def convert_pts_to_keypoints(self, pts, scores, sizes): 
        assert(len(pts)==len(scores))
        kps = []
        if pts is not None: 
            # convert matrix [Nx2] of pts into list of keypoints  
            kps = [ cv2.KeyPoint(p[0], p[1], _size=sizes[i], _response=scores[i]) for i,p in enumerate(pts) ]                      
        return kps     