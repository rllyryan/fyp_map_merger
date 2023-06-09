#!/usr/bin/env python3
"""
Copyright 2019, Zixin Luo, HKUST.
Image matching example.
"""
import os
import cv2
import numpy as np
import tensorflow.compat.v1 as tf
import matplotlib.pyplot as plt
import imutils
from PIL import Image as im

from utils.opencvhelper import MatcherWrapper

from models import get_model


FLAGS = tf.app.flags.FLAGS

tf.app.flags.DEFINE_string('loc_model', 'pretrained/contextdesc++',
                           """Path to the local feature and augmentation model.""")
tf.app.flags.DEFINE_string('reg_model', 'pretrained/retrieval_model',
                           """Path to the regional feature model.""")
tf.app.flags.DEFINE_string('img1_path', 'imgs/level5_hokuyo_crop1.jpg',
                           """Path to the first image.""")
tf.app.flags.DEFINE_string('img2_path', 'imgs/level5_hokuyo_crop2.jpg',
                           """Path to the second image.""")
tf.app.flags.DEFINE_integer('n_sample', 2048,
                            """Maximum number of keypoints. Sampled by octave.""")
# model options
tf.app.flags.DEFINE_string('model_type', 'pb',
                           """Pre-trained model type.""")
tf.app.flags.DEFINE_boolean('dense_desc', False,
                            """Whether to use dense descriptor model.""")
# matching options
tf.app.flags.DEFINE_boolean('ratio_test', True,
                            """Whether to apply ratio test in matching.""")
tf.app.flags.DEFINE_boolean('cross_check', True,
                            """Whether to apply cross check in matching.""")


def load_imgs(img_paths):
    rgb_list = []
    gray_list = []
    for img_path in img_paths:
        img = cv2.imread(img_path)
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)[..., np.newaxis]
        img = img[..., ::-1]
        rgb_list.append(img)
        gray_list.append(gray)
    return rgb_list, gray_list


def extract_regional_features(rgb_list, model_path):
    reg_feat_list = []
    model = get_model('reg_model')(model_path)
    for _, val in enumerate(rgb_list):
        reg_feat = model.run_test_data(val)
        reg_feat_list.append(reg_feat)
    model.close()
    return reg_feat_list


def extract_local_features(gray_list, model_path):
    cv_kpts_list = []
    loc_info_list = []
    loc_feat_list = []
    sift_feat_list = []
    model = get_model('loc_model')(model_path, **{'sift_desc': True,
                                                  'n_sample': FLAGS.n_sample,
                                                  'peak_thld': 0.04,
                                                  'dense_desc': FLAGS.dense_desc,
                                                  'upright': False})
    for _, val in enumerate(gray_list):
        loc_feat, kpt_mb, normalized_xy, cv_kpts, sift_desc = model.run_test_data(val)
        raw_kpts = [np.array((i.pt[0], i.pt[1], i.size, i.angle, i.response)) for i in cv_kpts]
        raw_kpts = np.stack(raw_kpts, axis=0)
        loc_info = np.concatenate((raw_kpts, normalized_xy, loc_feat, kpt_mb), axis=-1)
        cv_kpts_list.append(cv_kpts)
        loc_info_list.append(loc_info)
        sift_feat_list.append(sift_desc)
        loc_feat_list.append(loc_feat / np.linalg.norm(loc_feat, axis=-1, keepdims=True))
    model.close()
    return cv_kpts_list, loc_info_list, loc_feat_list, sift_feat_list


def extract_augmented_features(reg_feat_list, loc_info_list, model_path):
    aug_feat_list = []
    model = get_model('aug_model')(model_path, **{'quantz': False})
    assert len(reg_feat_list) == len(loc_info_list)
    for idx, _ in enumerate(reg_feat_list):
        aug_feat, _ = model.run_test_data([reg_feat_list[idx], loc_info_list[idx]])
        aug_feat_list.append(aug_feat)
    model.close()
    return aug_feat_list


def main(argv=None):  # pylint: disable=unused-argument
    """Program entrance."""
    if FLAGS.model_type == 'pb':
        reg_model_path = os.path.join(FLAGS.reg_model, 'reg.pb')
        loc_model_path = os.path.join(FLAGS.loc_model, 'loc.pb')
        aug_model_path = os.path.join(FLAGS.loc_model, 'aug.pb')
    elif FLAGS.model_type == 'ckpt':
        reg_model_path = os.path.join(FLAGS.reg_model, 'model.ckpt-550000')
        loc_model_path = os.path.join(FLAGS.loc_model, 'model.ckpt-400000')
        aug_model_path = os.path.join(FLAGS.loc_model, 'model.ckpt-400000')
    else:
        raise NotImplementedError

    img_paths = [FLAGS.img1_path, FLAGS.img2_path]
    # load testing images.
    rgb_list, gray_list = load_imgs(img_paths)
    # extract regional features.
    reg_feat_list = extract_regional_features(rgb_list, reg_model_path)
    # extract local features and keypoint matchability.
    cv_kpts_list, loc_info_list, loc_feat_list, sift_feat_list = extract_local_features(
        gray_list, loc_model_path)
    
    # extract augmented features.
    aug_feat_list = extract_augmented_features(reg_feat_list, loc_info_list, aug_model_path)
    print(aug_feat_list)

    # feature matching and draw matches.
    matcher = MatcherWrapper()
    sift_match, sift_mask = matcher.get_matches(
        sift_feat_list[0], sift_feat_list[1], cv_kpts_list[0], cv_kpts_list[1],
        ratio=0.8 if FLAGS.ratio_test else None, cross_check=FLAGS.cross_check,
        err_thld=3, ransac=True, info='SIFT feautre')

    base_match, base_mask = matcher.get_matches(
        loc_feat_list[0], loc_feat_list[1], cv_kpts_list[0], cv_kpts_list[1],
        ratio=0.89 if FLAGS.ratio_test else None, cross_check=FLAGS.cross_check,
        err_thld=3, ransac=True, info='Raw local feature')

    aug_match, aug_mask = matcher.get_matches(
        aug_feat_list[0], aug_feat_list[1], cv_kpts_list[0], cv_kpts_list[1],
        ratio=0.75 if FLAGS.ratio_test else None, cross_check=FLAGS.cross_check,
        err_thld=3, ransac=True, info='Augmented local feature')
    
    # print('aug_match is: ', aug_match, '\n')
    # print('aug_match: ', aug_match[0].distance)

    sift_disp = matcher.draw_matches(rgb_list[0], cv_kpts_list[0], rgb_list[1], cv_kpts_list[1], sift_match, sift_mask)
    base_disp = matcher.draw_matches(rgb_list[0], cv_kpts_list[0], rgb_list[1], cv_kpts_list[1], base_match, base_mask)
    aug_disp = matcher.draw_matches(rgb_list[0], cv_kpts_list[0], rgb_list[1], cv_kpts_list[1], aug_match, aug_mask)

    rows, cols = sift_disp.shape[0:2]
    white = (np.ones((int(rows / 50), cols, 3)) * 255).astype(np.uint8)
    disp = np.concatenate([sift_disp, white, aug_disp], axis=0)
    disp = imutils.resize(disp, width = 1000)
    data = im.fromarray(disp)
    data.save('combine.jpg')
    cv2.imshow('disp', disp)
    # plt.xticks([])
    # plt.yticks([])
    # plt.imshow(disp)
    # plt.show()
    cv2.waitKey(0)


if __name__ == '__main__':
    tf.compat.v1.app.run()
