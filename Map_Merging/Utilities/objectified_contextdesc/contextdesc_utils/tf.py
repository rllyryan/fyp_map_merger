#!/usr/bin/env python3
"""
Copyright 2018, Zixin Luo, HKUST.
TensorFlow utilities.
"""

import os
from colorama import Fore, Back, Style

import tensorflow as tf


def load_frozen_model(pb_path, prefix='', print_nodes=False):
    """Load frozen model (.pb file) for testing.
    After restoring the model, operators can be accessed by
    graph.get_tensor_by_name('<prefix>/<op_name>')
    Args:
        pb_path: the path of frozen model.
        prefix: prefix added to the operator name.
        print_nodes: whether to print node names.
    Returns:
        graph: tensorflow graph definition.
    """
    if os.path.exists(pb_path):
        with tf.io.gfile.GFile(pb_path, "rb") as f:
            graph_def = tf.compat.v1.GraphDef()
            graph_def.ParseFromString(f.read())
        with tf.Graph().as_default() as graph:
            tf.import_graph_def(
                graph_def,
                name=prefix
            )
            if print_nodes:
                for op in graph.get_operations():
                    print(op.name)
            return graph
    else:
        print('Model file does not exist', pb_path)
        exit(-1)


def recoverer(sess, model_path, meta_graph_path=None):
    """
    Recovery parameters from a pretrained model.
    Args:
        sess: The tensorflow session instance.
        model_path: Checkpoint file path.
    Returns:
        Nothing
    """
    if meta_graph_path is None:
        restore_var = tf.compat.v1.global_variables()
        restorer = tf.compat.v1.train.Saver(restore_var)
    else:
        restorer = tf.train.import_meta_graph(meta_graph_path)
    restorer.restore(sess, model_path)

# from https://stackoverflow.com/questions/35911252/disable-tensorflow-debugging-information
# 0 = all messages are logged (default behavior)
# 1 = INFO messages are not printed
# 2 = INFO and WARNING messages are not printed
# 3 = INFO, WARNING, and ERROR messages are not printed
def set_tf_logging(logging_flag):
    print(Fore.LIGHTYELLOW_EX, Style.BRIGHT,'Note: Setting tf_logging to: {}'.format(logging_flag))
    if logging_flag:
        os.environ["TF_CPP_MIN_LOG_LEVEL"] = "0"
        tf.get_logger().setLevel("INFO")
    else:
        os.environ["TF_CPP_MIN_LOG_LEVEL"] = "3"
        tf.get_logger().setLevel("ERROR")