# Content
This repository contains:
1) Map Merging Tool

This was created as a part of the deliverables for the Final Year Project (FYP) under the National University of Singapore (NUS) in AY2021/2022. The project was titled "Agnostic Robot Fleet Manager Optimiser: Fleet Management Connectivity and Map Merging".
## Prerequisites
Run a recursive installment of the `requirements.txt` file.
```bash
# At the root of the repository
pip3 install -r requirements.txt
```

## Map Merging Tool
There exists two final products:
1) Multi-Map Stitcher Class 
2) Pair-Map Stitcher Class

### Multi-Map Stitcher Class
This class was created to stitch **multiple** overlapping partial maps together regardless of the quantity and order of input.

<img src="https://raw.githubusercontent.com/syncware-ai/fyp_fleet_management/main/Github_Display/multi_map_merging.png" width="800">

The test file for this class can be found as shown below.
```bash
cd fyp_fleet_management/Map_Merging/Product/Multi_Map_Stitcher
python3 map_merger_plugin_test.py
```

The unique feature of this class is that it can switch which feature-detector-descriptor algorithm to be utilised for the run of the stitch. The selection is made when the object is first instantiated. Note that an array of images and their file names are to be provided at instantiation.
```python
import cv2 as cv
from map_merger_plugin import MultiMapMerger

# Load and populate the class with required inputs
# 1) selection_num - an integer that relates to the algorithm being utilised
# 2) list_of_image_names - an array of image names (basically the name of the image file)
# 3) list_of_images - an array of image (in numpy.ndarray format)
merger = MultiMapMerger(selection_num = 0, list_of_image_names = array_of_names, list_of_images = array_of_img)

# Set the process in motion
packed_information = merger.stitch()
(successful, error, merged_img) = packed_information

if successful:
    cv.imshow('Merged Image', merged_img)
    cv.waitKey(0)
else:
    print(error)
    sys.exit(0)
```
Here are the selection numbers for each algorithm incorporated into the code block.
```c
0 - SIFT
1 - BRISK
2 - ORB
3 - KAZE
4 - AKAZE
```

### Pair-Map Stitcher Class
This class was created to stitch **a pair** of overlapping partial maps together. The limitation is that images need to be provided in its true order. For example, the left image supplied must be the true left portion of the full merged image.

The test file for this class can be found as shown below.
```bash
cd fyp_fleet_management/Map_Merging/Product/Pair_Map_Stitcher
python3 pair_map_merger_plugin_test.py
```
The unique feature of this class is that it can switch which feature-detector-descriptor algorithm to be utilised for the run of the stitch. The selection is made when the object is first instantiated. Note that an array of images and their file names are to be provided at instantiation.
```python
import cv2 as cv
from pair_map_merger_plugin import Pair_Stitcher

# Load and populate the class with required inputs
# 1) selection_num - an integer that relates to the algorithm being utilised
# 2) list_of_image_names - an array of image names (basically the name of the image file)
# 3) list_of_images - an array of image (in numpy.ndarray format)
stitcher = Pair_Stitcher(list_of_images = array_of_img, list_of_image_names = array_of_names, selection_num = 5)

# Set the process in motion
result_parcel = stitcher.stitch()

# Unpack the information
(error_1, merge_order_1, error_2, merge_order_2) = result_parcel

if len(error_1) == 0:
    cv.imshow('Order 1', merge_order_1)

if len(error_2) == 0:
    cv.imshow('Order 2', merge_order_2)

cv.waitKey(0)
```
Here are the selection numbers for each algorithm incorporated into the code block.
```c
0 - SIFT
1 - BRISK
2 - SIFT-GeoDesc
3 - SIFT-ContextDesc
4 - ORB
5 - SURF (PATENTED AND NOT TO BE USED FOR COMMERCIAL PURPOSES)
```
## Warehouse Simulation
A warehouse world was created from the cloning of the small warehouse world by AWS Robomaker [https://github.com/aws-robotics/aws-robomaker-small-warehouse-world].

<img src="https://github.com/syncware-ai/fyp_fleet_management/blob/main/Github_Display/aws_warehouse.png" width="800">

The `mir_ws` can be cloned into your local machine, and can be found here:
```bash
cd fyp_fleet_management/Warehouse_Simulation/mir_ws
```
The spawning of the MiR robot into the enlarged AWS warehouse world is executed via the following command(s):
```bash
export GAZEBO_MODEL_PATH=~/mir_ws/src/mir_robot/mir_gazebo/models
roslaunch mir_gazebo mir_aws.launch
rosservice call /gazebo/unpause_physics
```
Mapping is executed by the following command:
```bash
rosservice call /gazebo/unpause_physics
roslaunch mir_navigation hector_mapping.launch
roslaunch mir_navigation move_base.xml with_virtual_walls:=false
rviz -d $(rospack find mir_navigation)/rviz/navigation.rviz
```

