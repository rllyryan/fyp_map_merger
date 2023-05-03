;; Auto-generated. Do not edit!


(when (boundp 'dwb_msgs::DebugLocalPlan)
  (if (not (find-package "DWB_MSGS"))
    (make-package "DWB_MSGS"))
  (shadow 'DebugLocalPlan (find-package "DWB_MSGS")))
(unless (find-package "DWB_MSGS::DEBUGLOCALPLAN")
  (make-package "DWB_MSGS::DEBUGLOCALPLAN"))
(unless (find-package "DWB_MSGS::DEBUGLOCALPLANREQUEST")
  (make-package "DWB_MSGS::DEBUGLOCALPLANREQUEST"))
(unless (find-package "DWB_MSGS::DEBUGLOCALPLANRESPONSE")
  (make-package "DWB_MSGS::DEBUGLOCALPLANRESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_2D_MSGS"))
  (ros::roseus-add-msgs "nav_2d_msgs"))




(defclass dwb_msgs::DebugLocalPlanRequest
  :super ros::object
  :slots (_pose _velocity _global_plan _goal ))

(defmethod dwb_msgs::DebugLocalPlanRequest
  (:init
   (&key
    ((:pose __pose) (instance nav_2d_msgs::Pose2DStamped :init))
    ((:velocity __velocity) (instance nav_2d_msgs::Twist2D :init))
    ((:global_plan __global_plan) (instance nav_2d_msgs::Path2D :init))
    ((:goal __goal) (instance nav_2d_msgs::Pose2DStamped :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _velocity __velocity)
   (setq _global_plan __global_plan)
   (setq _goal __goal)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:global_plan
   (&rest __global_plan)
   (if (keywordp (car __global_plan))
       (send* _global_plan __global_plan)
     (progn
       (if __global_plan (setq _global_plan (car __global_plan)))
       _global_plan)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; nav_2d_msgs/Pose2DStamped _pose
    (send _pose :serialization-length)
    ;; nav_2d_msgs/Twist2D _velocity
    (send _velocity :serialization-length)
    ;; nav_2d_msgs/Path2D _global_plan
    (send _global_plan :serialization-length)
    ;; nav_2d_msgs/Pose2DStamped _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_2d_msgs/Pose2DStamped _pose
       (send _pose :serialize s)
     ;; nav_2d_msgs/Twist2D _velocity
       (send _velocity :serialize s)
     ;; nav_2d_msgs/Path2D _global_plan
       (send _global_plan :serialize s)
     ;; nav_2d_msgs/Pose2DStamped _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_2d_msgs/Pose2DStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; nav_2d_msgs/Twist2D _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; nav_2d_msgs/Path2D _global_plan
     (send _global_plan :deserialize buf ptr-) (incf ptr- (send _global_plan :serialization-length))
   ;; nav_2d_msgs/Pose2DStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass dwb_msgs::DebugLocalPlanResponse
  :super ros::object
  :slots (_results ))

(defmethod dwb_msgs::DebugLocalPlanResponse
  (:init
   (&key
    ((:results __results) (instance dwb_msgs::LocalPlanEvaluation :init))
    )
   (send-super :init)
   (setq _results __results)
   self)
  (:results
   (&rest __results)
   (if (keywordp (car __results))
       (send* _results __results)
     (progn
       (if __results (setq _results (car __results)))
       _results)))
  (:serialization-length
   ()
   (+
    ;; dwb_msgs/LocalPlanEvaluation _results
    (send _results :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dwb_msgs/LocalPlanEvaluation _results
       (send _results :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dwb_msgs/LocalPlanEvaluation _results
     (send _results :deserialize buf ptr-) (incf ptr- (send _results :serialization-length))
   ;;
   self)
  )

(defclass dwb_msgs::DebugLocalPlan
  :super ros::object
  :slots ())

(setf (get dwb_msgs::DebugLocalPlan :md5sum-) "5a95380a43b72a99a1559a74c97b8bdc")
(setf (get dwb_msgs::DebugLocalPlan :datatype-) "dwb_msgs/DebugLocalPlan")
(setf (get dwb_msgs::DebugLocalPlan :request) dwb_msgs::DebugLocalPlanRequest)
(setf (get dwb_msgs::DebugLocalPlan :response) dwb_msgs::DebugLocalPlanResponse)

(defmethod dwb_msgs::DebugLocalPlanRequest
  (:response () (instance dwb_msgs::DebugLocalPlanResponse :init)))

(setf (get dwb_msgs::DebugLocalPlanRequest :md5sum-) "5a95380a43b72a99a1559a74c97b8bdc")
(setf (get dwb_msgs::DebugLocalPlanRequest :datatype-) "dwb_msgs/DebugLocalPlanRequest")
(setf (get dwb_msgs::DebugLocalPlanRequest :definition-)
      "# For a given pose velocity and global_plan, run the local planner and return full results
nav_2d_msgs/Pose2DStamped pose
nav_2d_msgs/Twist2D velocity
nav_2d_msgs/Path2D global_plan
nav_2d_msgs/Pose2DStamped goal

================================================================================
MSG: nav_2d_msgs/Pose2DStamped
Header header
geometry_msgs/Pose2D pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta

================================================================================
MSG: nav_2d_msgs/Path2D
Header header
geometry_msgs/Pose2D[] poses
---
LocalPlanEvaluation results


================================================================================
MSG: dwb_msgs/LocalPlanEvaluation
# Full Scoring for running the local planner

# Header, used for timestamp
Header header
# All the trajectories evaluated and their scores
TrajectoryScore[] twists
# Convenience index of the best (lowest) score in the twists array
uint16 best_index
# Convenience index of the worst (highest) score in the twists array. Useful for scaling.
uint16 worst_index

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: dwb_msgs/TrajectoryScore
# Complete scoring for a given twist.

# The trajectory being scored
Trajectory2D traj
# The Scores for each of the critics employed
CriticScore[] scores
# Convenience member that totals the critic scores
float32 total

================================================================================
MSG: dwb_msgs/Trajectory2D
# For a given velocity command, the poses that the robot will go to in the allotted time.

# Input Velocity
nav_2d_msgs/Twist2D velocity

# Poses the robot will go to, given our kinematic model
geometry_msgs/Pose2D[] poses

# Time difference between the current pose and the poses in the trajectory.
# Parallel array to poses. Length should be the same.
duration[] time_offsets

================================================================================
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: dwb_msgs/CriticScore
# The result from one critic scoring a Twist.
# Name of the critic
string name
# Score for the critic, not multiplied by the scale
float32 raw_score
# Scale for the critic, multiplied by the raw_score and added to the total score
float32 scale
")

(setf (get dwb_msgs::DebugLocalPlanResponse :md5sum-) "5a95380a43b72a99a1559a74c97b8bdc")
(setf (get dwb_msgs::DebugLocalPlanResponse :datatype-) "dwb_msgs/DebugLocalPlanResponse")
(setf (get dwb_msgs::DebugLocalPlanResponse :definition-)
      "# For a given pose velocity and global_plan, run the local planner and return full results
nav_2d_msgs/Pose2DStamped pose
nav_2d_msgs/Twist2D velocity
nav_2d_msgs/Path2D global_plan
nav_2d_msgs/Pose2DStamped goal

================================================================================
MSG: nav_2d_msgs/Pose2DStamped
Header header
geometry_msgs/Pose2D pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta

================================================================================
MSG: nav_2d_msgs/Path2D
Header header
geometry_msgs/Pose2D[] poses
---
LocalPlanEvaluation results


================================================================================
MSG: dwb_msgs/LocalPlanEvaluation
# Full Scoring for running the local planner

# Header, used for timestamp
Header header
# All the trajectories evaluated and their scores
TrajectoryScore[] twists
# Convenience index of the best (lowest) score in the twists array
uint16 best_index
# Convenience index of the worst (highest) score in the twists array. Useful for scaling.
uint16 worst_index

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: dwb_msgs/TrajectoryScore
# Complete scoring for a given twist.

# The trajectory being scored
Trajectory2D traj
# The Scores for each of the critics employed
CriticScore[] scores
# Convenience member that totals the critic scores
float32 total

================================================================================
MSG: dwb_msgs/Trajectory2D
# For a given velocity command, the poses that the robot will go to in the allotted time.

# Input Velocity
nav_2d_msgs/Twist2D velocity

# Poses the robot will go to, given our kinematic model
geometry_msgs/Pose2D[] poses

# Time difference between the current pose and the poses in the trajectory.
# Parallel array to poses. Length should be the same.
duration[] time_offsets

================================================================================
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: dwb_msgs/CriticScore
# The result from one critic scoring a Twist.
# Name of the critic
string name
# Score for the critic, not multiplied by the scale
float32 raw_score
# Scale for the critic, multiplied by the raw_score and added to the total score
float32 scale
")



(provide :dwb_msgs/DebugLocalPlan "5a95380a43b72a99a1559a74c97b8bdc")


