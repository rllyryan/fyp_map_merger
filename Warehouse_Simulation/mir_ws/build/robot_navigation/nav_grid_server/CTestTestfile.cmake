# CMake generated Testfile for 
# Source directory: /home/rllyryan/mir_ws/src/robot_navigation/nav_grid_server
# Build directory: /home/rllyryan/mir_ws/build/robot_navigation/nav_grid_server
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_nav_grid_server_gtest_map_server_comparison "/home/rllyryan/mir_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/rllyryan/mir_ws/build/test_results/nav_grid_server/gtest-map_server_comparison.xml" "--return-code" "/home/rllyryan/mir_ws/devel/lib/nav_grid_server/map_server_comparison --gtest_output=xml:/home/rllyryan/mir_ws/build/test_results/nav_grid_server/gtest-map_server_comparison.xml")
set_tests_properties(_ctest_nav_grid_server_gtest_map_server_comparison PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/rllyryan/mir_ws/src/robot_navigation/nav_grid_server/CMakeLists.txt;42;catkin_add_gtest;/home/rllyryan/mir_ws/src/robot_navigation/nav_grid_server/CMakeLists.txt;0;")
add_test(_ctest_nav_grid_server_roslint_package "/home/rllyryan/mir_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/rllyryan/mir_ws/build/test_results/nav_grid_server/roslint-nav_grid_server.xml" "--working-dir" "/home/rllyryan/mir_ws/build/robot_navigation/nav_grid_server" "--return-code" "/opt/ros/noetic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/rllyryan/mir_ws/build/test_results/nav_grid_server/roslint-nav_grid_server.xml make roslint_nav_grid_server")
set_tests_properties(_ctest_nav_grid_server_roslint_package PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslint/cmake/roslint-extras.cmake;67;catkin_run_tests_target;/home/rllyryan/mir_ws/src/robot_navigation/nav_grid_server/CMakeLists.txt;46;roslint_add_test;/home/rllyryan/mir_ws/src/robot_navigation/nav_grid_server/CMakeLists.txt;0;")
