# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "color_util;geometry_msgs;nav_2d_msgs;nav_2d_utils;nav_core2;nav_grid;nav_grid_iterators;nav_grid_pub_sub;nav_msgs;pluginlib;roscpp;rviz;std_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrobot_nav_rviz_plugins;-lbasic_palettes;-lrnrp_utils".split(';') if "-lrobot_nav_rviz_plugins;-lbasic_palettes;-lrnrp_utils" != "" else []
PROJECT_NAME = "robot_nav_rviz_plugins"
PROJECT_SPACE_DIR = "/home/rllyryan/mir_ws/install"
PROJECT_VERSION = "0.3.0"
