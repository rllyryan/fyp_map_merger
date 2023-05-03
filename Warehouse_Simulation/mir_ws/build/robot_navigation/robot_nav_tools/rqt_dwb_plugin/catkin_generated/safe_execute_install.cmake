execute_process(COMMAND "/home/rllyryan/mir_ws/build/robot_navigation/robot_nav_tools/rqt_dwb_plugin/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/rllyryan/mir_ws/build/robot_navigation/robot_nav_tools/rqt_dwb_plugin/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
