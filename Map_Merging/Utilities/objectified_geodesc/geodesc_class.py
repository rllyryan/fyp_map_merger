from __future__ import print_function

import os
import sys
import time
import math


import numpy as np
import cv2

from colorama import Fore, Style

from .geodesc_utils.tf import load_frozen_model, set_tf_logging
from .geodesc_utils.opencvhelper import SiftWrapper, MatcherWrapper

from threading import Thread
from multiprocessing import Queue # from queue import Queue

# To disable tensorflow-numpy warnings: from https://github.com/tensorflow/tensorflow/issues/30427
import warnings 
warnings.filterwarnings('ignore', category=FutureWarning)

# from https://stackoverflow.com/questions/56820327/the-name-tf-session-is-deprecated-please-use-tf-compat-v1-session-instead
import tensorflow.compat.v1 as tf

# from https://kobkrit.com/using-allow-growth-memory-option-in-tensorflow-and-keras-dc8c8081bc96 to cope with the following error:
# "[...tensorflow/stream_executor/cuda/cuda_dnn.cc:329] Could not create cudnn handle: CUDNN_STATUS_INTERNAL_ERROR"
tf_config = tf.ConfigProto()
tf_config.gpu_options.allow_growth = True

##################################################################################################
##################################### ---------------- ###########################################
##################################### CLASS DEFINITION ###########################################
##################################### ---------------- ###########################################
##################################################################################################
class GeodescFeatures2D:

    # To quantize the features or not, if set to True then you have a binary descriptor
    quantize = False

    # To decide whether you want to have loggers to appear during the execution of the script
    verbose_flag = True

    # Model path (use print statement below to check where os.path.exists() searches)
    # print(os.getcwd()) 
    model_path = '../../Utilities/objectified_geodesc/model/geodesc.pb'

    SIFT_configurations = {
                            'max_kpt_num': 2048,    # Maximum number of keypoints. Sampled by octave
                            'batch_size': 512,      # Inference batch size
                            'pyr_off': False,       # Whether to construct image pyramid
                            'half_sigma': True,     # Whether to halve the sigma value of SIFT when constructing the pyramid
                            'ori_off': False        # Whether to use the orientation estimated from SIFT
                          }

    def __init__(self, do_tf_logging = False):

        print('========== Using GeodescFeatures2D ==========', Fore.LIGHTYELLOW_EX, Style.BRIGHT)

        # The variable magnification_factor is how many times the original
        # keypoint scale is enlarged to generate a patch from a keypoint
        self.magnification_factor = 3

        # Process all patches at once
        self.process_all = True 

        # Instantiate and detailedly-configure the SIFT object (as done in the original github 
        # https://github.com/lzx551402/geodesc)
        self.SIFTWRAPPER = SiftWrapper(n_sample = self.SIFT_configurations['max_kpt_num'])
        self.SIFTWRAPPER.half_sigma = self.SIFT_configurations['half_sigma']
        self.SIFTWRAPPER.pyr_off = self.SIFT_configurations['pyr_off']
        self.SIFTWRAPPER.ori_off = self.SIFT_configurations['ori_off']
        self.SIFTWRAPPER.create()

        set_tf_logging(do_tf_logging)

        # Create deep feature extrator
        print('=====> Loading pre-trained network')
        self.graph = load_frozen_model(self.model_path, print_nodes=False)
        print('=====> Successfully loaded pre-trained network')

    def process_patches(self, patches): 
        num_patch = patches.shape[0]
        if num_patch % self.SIFT_configurations['batch_size'] > 0:
            loop_num = int(np.floor(float(num_patch) / float(self.SIFT_configurations['batch_size'])))
        else:
            loop_num = int(num_patch / self.SIFT_configurations['batch_size'] - 1)

        with tf.Session(graph=self.graph, config=tf_config) as sess:   
            def _worker(patch_queue, sess, des):
                """The worker thread."""
                while True:
                    patch_data = patch_queue.get()
                    if patch_data is None:
                        return
                    feat = sess.run("squeeze_1:0", feed_dict={"input:0": np.expand_dims(patch_data, -1)})
                    des.append(feat)

            des = []
            patch_queue = Queue()
            worker_thread = Thread(target=_worker, args=(patch_queue, sess, des))
            worker_thread.daemon = True
            worker_thread.start()

            start = time.time()

            # enqueue
            if not self.process_all:            
                for i in range(loop_num + 1):
                    if i < loop_num:
                        patch_queue.put(patches[i * self.SIFT_configurations['batch_size']: (i + 1) * self.SIFT_configurations['batch_size']])
                    else:
                        patch_queue.put(patches[i * self.SIFT_configurations['batch_size']:])
            else: 
                patch_queue.put(patches)
            # poison pill
            patch_queue.put(None)
            # wait for extraction.
            worker_thread.join()

            end = time.time()

            if self.verbose_flag:            
                print('Time cost in feature extraction', end - start)
            else:
                pass

            des = np.concatenate(des, axis=0)
            # quantize output features
            des = (des * 128 + 128).astype(np.uint8) if self.quantize else des
            return des
    

    def detectAndCompute(self, img, mask = None):

        # Already converted to grayscale image in the stitcher class
        gray_img = cv2.cvtColor(img, cv2.COLOR_RGB2GRAY)
        # gray_img = img

        start = time.time()
        npy_kpts, cv_kpts = self.SIFTWRAPPER.detect(gray_img)
        end = time.time()
        print('Time cost in keypoint detection is: {:.5f}'.format(end - start))

        start = time.time()
        self.SIFTWRAPPER.build_pyramid(gray_img)
        end = time.time()
        print('Time cost in scale space construction is: {:.5f}'.format(end - start))

        start = time.time()
        all_patches = self.SIFTWRAPPER.get_patches(cv_kpts)
        end = time.time()
        print('Time cost in patch cropping is: {:.5f}'.format(end - start))
    
        des = self.process_patches(all_patches)

        if self.verbose_flag:
            print('Descriptor: GEODESC, #features: ', len(cv_kpts), ', img res: ', img.shape[0:2])                           
        
        return cv_kpts, des