# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "angles;dwb_local_planner;dynamic_reconfigure;nav_2d_msgs;nav_2d_utils;nav_core2;pluginlib;roscpp".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lsimple_goal_checker;-lstopped_goal_checker;-lstandard_traj_generator".split(';') if "-lsimple_goal_checker;-lstopped_goal_checker;-lstandard_traj_generator" != "" else []
PROJECT_NAME = "dwb_plugins"
PROJECT_SPACE_DIR = "/home/rllyryan/mir_ws/install"
PROJECT_VERSION = "0.3.0"
