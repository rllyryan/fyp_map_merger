;; Auto-generated. Do not edit!


(when (boundp 'dwb_msgs::GenerateTrajectory)
  (if (not (find-package "DWB_MSGS"))
    (make-package "DWB_MSGS"))
  (shadow 'GenerateTrajectory (find-package "DWB_MSGS")))
(unless (find-package "DWB_MSGS::GENERATETRAJECTORY")
  (make-package "DWB_MSGS::GENERATETRAJECTORY"))
(unless (find-package "DWB_MSGS::GENERATETRAJECTORYREQUEST")
  (make-package "DWB_MSGS::GENERATETRAJECTORYREQUEST"))
(unless (find-package "DWB_MSGS::GENERATETRAJECTORYRESPONSE")
  (make-package "DWB_MSGS::GENERATETRAJECTORYRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_2D_MSGS"))
  (ros::roseus-add-msgs "nav_2d_msgs"))




(defclass dwb_msgs::GenerateTrajectoryRequest
  :super ros::object
  :slots (_start_pose _start_vel _cmd_vel ))

(defmethod dwb_msgs::GenerateTrajectoryRequest
  (:init
   (&key
    ((:start_pose __start_pose) (instance geometry_msgs::Pose2D :init))
    ((:start_vel __start_vel) (instance nav_2d_msgs::Twist2D :init))
    ((:cmd_vel __cmd_vel) (instance nav_2d_msgs::Twist2D :init))
    )
   (send-super :init)
   (setq _start_pose __start_pose)
   (setq _start_vel __start_vel)
   (setq _cmd_vel __cmd_vel)
   self)
  (:start_pose
   (&rest __start_pose)
   (if (keywordp (car __start_pose))
       (send* _start_pose __start_pose)
     (progn
       (if __start_pose (setq _start_pose (car __start_pose)))
       _start_pose)))
  (:start_vel
   (&rest __start_vel)
   (if (keywordp (car __start_vel))
       (send* _start_vel __start_vel)
     (progn
       (if __start_vel (setq _start_vel (car __start_vel)))
       _start_vel)))
  (:cmd_vel
   (&rest __cmd_vel)
   (if (keywordp (car __cmd_vel))
       (send* _cmd_vel __cmd_vel)
     (progn
       (if __cmd_vel (setq _cmd_vel (car __cmd_vel)))
       _cmd_vel)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _start_pose
    (send _start_pose :serialization-length)
    ;; nav_2d_msgs/Twist2D _start_vel
    (send _start_vel :serialization-length)
    ;; nav_2d_msgs/Twist2D _cmd_vel
    (send _cmd_vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _start_pose
       (send _start_pose :serialize s)
     ;; nav_2d_msgs/Twist2D _start_vel
       (send _start_vel :serialize s)
     ;; nav_2d_msgs/Twist2D _cmd_vel
       (send _cmd_vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _start_pose
     (send _start_pose :deserialize buf ptr-) (incf ptr- (send _start_pose :serialization-length))
   ;; nav_2d_msgs/Twist2D _start_vel
     (send _start_vel :deserialize buf ptr-) (incf ptr- (send _start_vel :serialization-length))
   ;; nav_2d_msgs/Twist2D _cmd_vel
     (send _cmd_vel :deserialize buf ptr-) (incf ptr- (send _cmd_vel :serialization-length))
   ;;
   self)
  )

(defclass dwb_msgs::GenerateTrajectoryResponse
  :super ros::object
  :slots (_traj ))

(defmethod dwb_msgs::GenerateTrajectoryResponse
  (:init
   (&key
    ((:traj __traj) (instance dwb_msgs::Trajectory2D :init))
    )
   (send-super :init)
   (setq _traj __traj)
   self)
  (:traj
   (&rest __traj)
   (if (keywordp (car __traj))
       (send* _traj __traj)
     (progn
       (if __traj (setq _traj (car __traj)))
       _traj)))
  (:serialization-length
   ()
   (+
    ;; dwb_msgs/Trajectory2D _traj
    (send _traj :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dwb_msgs/Trajectory2D _traj
       (send _traj :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dwb_msgs/Trajectory2D _traj
     (send _traj :deserialize buf ptr-) (incf ptr- (send _traj :serialization-length))
   ;;
   self)
  )

(defclass dwb_msgs::GenerateTrajectory
  :super ros::object
  :slots ())

(setf (get dwb_msgs::GenerateTrajectory :md5sum-) "a53a5ac380b5d14cb0057919063c0b54")
(setf (get dwb_msgs::GenerateTrajectory :datatype-) "dwb_msgs/GenerateTrajectory")
(setf (get dwb_msgs::GenerateTrajectory :request) dwb_msgs::GenerateTrajectoryRequest)
(setf (get dwb_msgs::GenerateTrajectory :response) dwb_msgs::GenerateTrajectoryResponse)

(defmethod dwb_msgs::GenerateTrajectoryRequest
  (:response () (instance dwb_msgs::GenerateTrajectoryResponse :init)))

(setf (get dwb_msgs::GenerateTrajectoryRequest :md5sum-) "a53a5ac380b5d14cb0057919063c0b54")
(setf (get dwb_msgs::GenerateTrajectoryRequest :datatype-) "dwb_msgs/GenerateTrajectoryRequest")
(setf (get dwb_msgs::GenerateTrajectoryRequest :definition-)
      "# For a given start pose, velocity and desired velocity, generate which poses will be visited
geometry_msgs/Pose2D start_pose
nav_2d_msgs/Twist2D start_vel
nav_2d_msgs/Twist2D cmd_vel

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
---
Trajectory2D traj


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
")

(setf (get dwb_msgs::GenerateTrajectoryResponse :md5sum-) "a53a5ac380b5d14cb0057919063c0b54")
(setf (get dwb_msgs::GenerateTrajectoryResponse :datatype-) "dwb_msgs/GenerateTrajectoryResponse")
(setf (get dwb_msgs::GenerateTrajectoryResponse :definition-)
      "# For a given start pose, velocity and desired velocity, generate which poses will be visited
geometry_msgs/Pose2D start_pose
nav_2d_msgs/Twist2D start_vel
nav_2d_msgs/Twist2D cmd_vel

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
---
Trajectory2D traj


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
")



(provide :dwb_msgs/GenerateTrajectory "a53a5ac380b5d14cb0057919063c0b54")


