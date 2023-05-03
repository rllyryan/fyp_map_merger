;; Auto-generated. Do not edit!


(when (boundp 'dwb_msgs::LocalPlanEvaluation)
  (if (not (find-package "DWB_MSGS"))
    (make-package "DWB_MSGS"))
  (shadow 'LocalPlanEvaluation (find-package "DWB_MSGS")))
(unless (find-package "DWB_MSGS::LOCALPLANEVALUATION")
  (make-package "DWB_MSGS::LOCALPLANEVALUATION"))

(in-package "ROS")
;;//! \htmlinclude LocalPlanEvaluation.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dwb_msgs::LocalPlanEvaluation
  :super ros::object
  :slots (_header _twists _best_index _worst_index ))

(defmethod dwb_msgs::LocalPlanEvaluation
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:twists __twists) ())
    ((:best_index __best_index) 0)
    ((:worst_index __worst_index) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _twists __twists)
   (setq _best_index (round __best_index))
   (setq _worst_index (round __worst_index))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:twists
   (&rest __twists)
   (if (keywordp (car __twists))
       (send* _twists __twists)
     (progn
       (if __twists (setq _twists (car __twists)))
       _twists)))
  (:best_index
   (&optional __best_index)
   (if __best_index (setq _best_index __best_index)) _best_index)
  (:worst_index
   (&optional __worst_index)
   (if __worst_index (setq _worst_index __worst_index)) _worst_index)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; dwb_msgs/TrajectoryScore[] _twists
    (apply #'+ (send-all _twists :serialization-length)) 4
    ;; uint16 _best_index
    2
    ;; uint16 _worst_index
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; dwb_msgs/TrajectoryScore[] _twists
     (write-long (length _twists) s)
     (dolist (elem _twists)
       (send elem :serialize s)
       )
     ;; uint16 _best_index
       (write-word _best_index s)
     ;; uint16 _worst_index
       (write-word _worst_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; dwb_msgs/TrajectoryScore[] _twists
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _twists (let (r) (dotimes (i n) (push (instance dwb_msgs::TrajectoryScore :init) r)) r))
     (dolist (elem- _twists)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint16 _best_index
     (setq _best_index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _worst_index
     (setq _worst_index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dwb_msgs::LocalPlanEvaluation :md5sum-) "d360642012ea44ee598913c70498aa4b")
(setf (get dwb_msgs::LocalPlanEvaluation :datatype-) "dwb_msgs/LocalPlanEvaluation")
(setf (get dwb_msgs::LocalPlanEvaluation :definition-)
      "# Full Scoring for running the local planner

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



(provide :dwb_msgs/LocalPlanEvaluation "d360642012ea44ee598913c70498aa4b")


