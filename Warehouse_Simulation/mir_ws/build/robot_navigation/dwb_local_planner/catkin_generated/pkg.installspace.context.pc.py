# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "dwb_msgs;geometry_msgs;nav_2d_msgs;nav_2d_utils;nav_core2;nav_msgs;pluginlib;roscpp;sensor_msgs;tf;visualization_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ldwb_local_planner;-ldebug_dwb_local_planner;-ltrajectory_utils".split(';') if "-ldwb_local_planner;-ldebug_dwb_local_planner;-ltrajectory_utils" != "" else []
PROJECT_NAME = "dwb_local_planner"
PROJECT_SPACE_DIR = "/home/rllyryan/mir_ws/install"
PROJECT_VERSION = "0.3.0"
