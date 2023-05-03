# Install script for directory: /home/rllyryan/mir_ws/src/mir_robot/mir_navigation

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/rllyryan/mir_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/rllyryan/mir_ws/build/mir_robot/mir_navigation/catkin_generated/installspace/mir_navigation.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mir_navigation/cmake" TYPE FILE FILES
    "/home/rllyryan/mir_ws/build/mir_robot/mir_navigation/catkin_generated/installspace/mir_navigationConfig.cmake"
    "/home/rllyryan/mir_ws/build/mir_robot/mir_navigation/catkin_generated/installspace/mir_navigationConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mir_navigation" TYPE FILE FILES "/home/rllyryan/mir_ws/src/mir_robot/mir_navigation/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mir_navigation" TYPE PROGRAM FILES
    "/home/rllyryan/mir_ws/src/mir_robot/mir_navigation/mprim/genmprim_unicycle_highcost_5cm.py"
    "/home/rllyryan/mir_ws/src/mir_robot/mir_navigation/nodes/acc_finder.py"
    "/home/rllyryan/mir_ws/src/mir_robot/mir_navigation/nodes/min_max_finder.py"
    "/home/rllyryan/mir_ws/src/mir_robot/mir_navigation/scripts/plot_mprim.py"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mir_navigation" TYPE DIRECTORY FILES
    "/home/rllyryan/mir_ws/src/mir_robot/mir_navigation/config"
    "/home/rllyryan/mir_ws/src/mir_robot/mir_navigation/launch"
    "/home/rllyryan/mir_ws/src/mir_robot/mir_navigation/mprim"
    "/home/rllyryan/mir_ws/src/mir_robot/mir_navigation/rviz"
    )
endif()

