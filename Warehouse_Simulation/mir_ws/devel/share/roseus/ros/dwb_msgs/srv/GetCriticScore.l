;; Auto-generated. Do not edit!


(when (boundp 'dwb_msgs::GetCriticScore)
  (if (not (find-package "DWB_MSGS"))
    (make-package "DWB_MSGS"))
  (shadow 'GetCriticScore (find-package "DWB_MSGS")))
(unless (find-package "DWB_MSGS::GETCRITICSCORE")
  (make-package "DWB_MSGS::GETCRITICSCORE"))
(unless (find-package "DWB_MSGS::GETCRITICSCOREREQUEST")
  (make-package "DWB_MSGS::GETCRITICSCOREREQUEST"))
(unless (find-package "DWB_MSGS::GETCRITICSCORERESPONSE")
  (make-package "DWB_MSGS::GETCRITICSCORERESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_2D_MSGS"))
  (ros::roseus-add-msgs "nav_2d_msgs"))




(defclass dwb_msgs::GetCriticScoreRequest
  :super ros::object
  :slots (_pose _velocity _global_plan _goal _traj _critic_name ))

(defmethod dwb_msgs::GetCriticScoreRequest
  (:init
   (&key
    ((:pose __pose) (instance nav_2d_msgs::Pose2DStamped :init))
    ((:velocity __velocity) (instance nav_2d_msgs::Twist2D :init))
    ((:global_plan __global_plan) (instance nav_2d_msgs::Path2D :init))
    ((:goal __goal) (instance nav_2d_msgs::Pose2DStamped :init))
    ((:traj __traj) (instance dwb_msgs::Trajectory2D :init))
    ((:critic_name __critic_name) "")
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _velocity __velocity)
   (setq _global_plan __global_plan)
   (setq _goal __goal)
   (setq _traj __traj)
   (setq _critic_name (string __critic_name))
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
  (:traj
   (&rest __traj)
   (if (keywordp (car __traj))
       (send* _traj __traj)
     (progn
       (if __traj (setq _traj (car __traj)))
       _traj)))
  (:critic_name
   (&optional __critic_name)
   (if __critic_name (setq _critic_name __critic_name)) _critic_name)
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
    ;; dwb_msgs/Trajectory2D _traj
    (send _traj :serialization-length)
    ;; string _critic_name
    4 (length _critic_name)
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
     ;; dwb_msgs/Trajectory2D _traj
       (send _traj :serialize s)
     ;; string _critic_name
       (write-long (length _critic_name) s) (princ _critic_name s)
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
   ;; dwb_msgs/Trajectory2D _traj
     (send _traj :deserialize buf ptr-) (incf ptr- (send _traj :serialization-length))
   ;; string _critic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _critic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dwb_msgs::GetCriticScoreResponse
  :super ros::object
  :slots (_score ))

(defmethod dwb_msgs::GetCriticScoreResponse
  (:init
   (&key
    ((:score __score) (instance dwb_msgs::CriticScore :init))
    )
   (send-super :init)
   (setq _score __score)
   self)
  (:score
   (&rest __score)
   (if (keywordp (car __score))
       (send* _score __score)
     (progn
       (if __score (setq _score (car __score)))
       _score)))
  (:serialization-length
   ()
   (+
    ;; dwb_msgs/CriticScore _score
    (send _score :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dwb_msgs/CriticScore _score
       (send _score :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dwb_msgs/CriticScore _score
     (send _score :deserialize buf ptr-) (incf ptr- (send _score :serialization-length))
   ;;
   self)
  )

(defclass dwb_msgs::GetCriticScore
  :super ros::object
  :slots ())

(setf (get dwb_msgs::GetCriticScore :md5sum-) "b1f1b575d22e5c30bc2da24ae85dfca1")
(setf (get dwb_msgs::GetCriticScore :datatype-) "dwb_msgs/GetCriticScore")
(setf (get dwb_msgs::GetCriticScore :request) dwb_msgs::GetCriticScoreRequest)
(setf (get dwb_msgs::GetCriticScore :response) dwb_msgs::GetCriticScoreResponse)

(defmethod dwb_msgs::GetCriticScoreRequest
  (:response () (instance dwb_msgs::GetCriticScoreResponse :init)))

(setf (get dwb_msgs::GetCriticScoreRequest :md5sum-) "b1f1b575d22e5c30bc2da24ae85dfca1")
(setf (get dwb_msgs::GetCriticScoreRequest :datatype-) "dwb_msgs/GetCriticScoreRequest")
(setf (get dwb_msgs::GetCriticScoreRequest :definition-)
      "nav_2d_msgs/Pose2DStamped pose
nav_2d_msgs/Twist2D velocity
nav_2d_msgs/Path2D global_plan
nav_2d_msgs/Pose2DStamped goal
Trajectory2D traj
string critic_name

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
---
CriticScore score


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

(setf (get dwb_msgs::GetCriticScoreResponse :md5sum-) "b1f1b575d22e5c30bc2da24ae85dfca1")
(setf (get dwb_msgs::GetCriticScoreResponse :datatype-) "dwb_msgs/GetCriticScoreResponse")
(setf (get dwb_msgs::GetCriticScoreResponse :definition-)
      "nav_2d_msgs/Pose2DStamped pose
nav_2d_msgs/Twist2D velocity
nav_2d_msgs/Path2D global_plan
nav_2d_msgs/Pose2DStamped goal
Trajectory2D traj
string critic_name

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
---
CriticScore score


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



(provide :dwb_msgs/GetCriticScore "b1f1b575d22e5c30bc2da24ae85dfca1")


