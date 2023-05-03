# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "costmap_2d;geometry_msgs;nav_2d_msgs;nav_2d_utils;nav_core;nav_core2;nav_grid;nav_msgs;pluginlib;tf;visualization_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-llocal_planner_adapter;-lglobal_planner_adapter;-lcostmap_adapter;-lglobal_planner_adapter2".split(';') if "-llocal_planner_adapter;-lglobal_planner_adapter;-lcostmap_adapter;-lglobal_planner_adapter2" != "" else []
PROJECT_NAME = "nav_core_adapter"
PROJECT_SPACE_DIR = "/home/rllyryan/mir_ws/install"
PROJECT_VERSION = "0.3.0"
