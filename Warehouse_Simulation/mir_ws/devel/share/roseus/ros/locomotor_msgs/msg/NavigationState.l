;; Auto-generated. Do not edit!


(when (boundp 'locomotor_msgs::NavigationState)
  (if (not (find-package "LOCOMOTOR_MSGS"))
    (make-package "LOCOMOTOR_MSGS"))
  (shadow 'NavigationState (find-package "LOCOMOTOR_MSGS")))
(unless (find-package "LOCOMOTOR_MSGS::NAVIGATIONSTATE")
  (make-package "LOCOMOTOR_MSGS::NAVIGATIONSTATE"))

(in-package "ROS")
;;//! \htmlinclude NavigationState.msg.html
(if (not (find-package "NAV_2D_MSGS"))
  (ros::roseus-add-msgs "nav_2d_msgs"))


(defclass locomotor_msgs::NavigationState
  :super ros::object
  :slots (_global_pose _local_pose _goal _current_velocity _command_velocity _global_plan ))

(defmethod locomotor_msgs::NavigationState
  (:init
   (&key
    ((:global_pose __global_pose) (instance nav_2d_msgs::Pose2DStamped :init))
    ((:local_pose __local_pose) (instance nav_2d_msgs::Pose2DStamped :init))
    ((:goal __goal) (instance nav_2d_msgs::Pose2DStamped :init))
    ((:current_velocity __current_velocity) (instance nav_2d_msgs::Twist2DStamped :init))
    ((:command_velocity __command_velocity) (instance nav_2d_msgs::Twist2DStamped :init))
    ((:global_plan __global_plan) (instance nav_2d_msgs::Path2D :init))
    )
   (send-super :init)
   (setq _global_pose __global_pose)
   (setq _local_pose __local_pose)
   (setq _goal __goal)
   (setq _current_velocity __current_velocity)
   (setq _command_velocity __command_velocity)
   (setq _global_plan __global_plan)
   self)
  (:global_pose
   (&rest __global_pose)
   (if (keywordp (car __global_pose))
       (send* _global_pose __global_pose)
     (progn
       (if __global_pose (setq _global_pose (car __global_pose)))
       _global_pose)))
  (:local_pose
   (&rest __local_pose)
   (if (keywordp (car __local_pose))
       (send* _local_pose __local_pose)
     (progn
       (if __local_pose (setq _local_pose (car __local_pose)))
       _local_pose)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:current_velocity
   (&rest __current_velocity)
   (if (keywordp (car __current_velocity))
       (send* _current_velocity __current_velocity)
     (progn
       (if __current_velocity (setq _current_velocity (car __current_velocity)))
       _current_velocity)))
  (:command_velocity
   (&rest __command_velocity)
   (if (keywordp (car __command_velocity))
       (send* _command_velocity __command_velocity)
     (progn
       (if __command_velocity (setq _command_velocity (car __command_velocity)))
       _command_velocity)))
  (:global_plan
   (&rest __global_plan)
   (if (keywordp (car __global_plan))
       (send* _global_plan __global_plan)
     (progn
       (if __global_plan (setq _global_plan (car __global_plan)))
       _global_plan)))
  (:serialization-length
   ()
   (+
    ;; nav_2d_msgs/Pose2DStamped _global_pose
    (send _global_pose :serialization-length)
    ;; nav_2d_msgs/Pose2DStamped _local_pose
    (send _local_pose :serialization-length)
    ;; nav_2d_msgs/Pose2DStamped _goal
    (send _goal :serialization-length)
    ;; nav_2d_msgs/Twist2DStamped _current_velocity
    (send _current_velocity :serialization-length)
    ;; nav_2d_msgs/Twist2DStamped _command_velocity
    (send _command_velocity :serialization-length)
    ;; nav_2d_msgs/Path2D _global_plan
    (send _global_plan :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_2d_msgs/Pose2DStamped _global_pose
       (send _global_pose :serialize s)
     ;; nav_2d_msgs/Pose2DStamped _local_pose
       (send _local_pose :serialize s)
     ;; nav_2d_msgs/Pose2DStamped _goal
       (send _goal :serialize s)
     ;; nav_2d_msgs/Twist2DStamped _current_velocity
       (send _current_velocity :serialize s)
     ;; nav_2d_msgs/Twist2DStamped _command_velocity
       (send _command_velocity :serialize s)
     ;; nav_2d_msgs/Path2D _global_plan
       (send _global_plan :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_2d_msgs/Pose2DStamped _global_pose
     (send _global_pose :deserialize buf ptr-) (incf ptr- (send _global_pose :serialization-length))
   ;; nav_2d_msgs/Pose2DStamped _local_pose
     (send _local_pose :deserialize buf ptr-) (incf ptr- (send _local_pose :serialization-length))
   ;; nav_2d_msgs/Pose2DStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; nav_2d_msgs/Twist2DStamped _current_velocity
     (send _current_velocity :deserialize buf ptr-) (incf ptr- (send _current_velocity :serialization-length))
   ;; nav_2d_msgs/Twist2DStamped _command_velocity
     (send _command_velocity :deserialize buf ptr-) (incf ptr- (send _command_velocity :serialization-length))
   ;; nav_2d_msgs/Path2D _global_plan
     (send _global_plan :deserialize buf ptr-) (incf ptr- (send _global_plan :serialization-length))
   ;;
   self)
  )

(setf (get locomotor_msgs::NavigationState :md5sum-) "3518ca42eb49bbf8de6cf123dcd80e4a")
(setf (get locomotor_msgs::NavigationState :datatype-) "locomotor_msgs/NavigationState")
(setf (get locomotor_msgs::NavigationState :definition-)
      "nav_2d_msgs/Pose2DStamped global_pose
nav_2d_msgs/Pose2DStamped local_pose
nav_2d_msgs/Pose2DStamped goal
nav_2d_msgs/Twist2DStamped current_velocity
nav_2d_msgs/Twist2DStamped command_velocity
nav_2d_msgs/Path2D global_plan

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
MSG: nav_2d_msgs/Twist2DStamped
std_msgs/Header header
Twist2D velocity

================================================================================
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta

================================================================================
MSG: nav_2d_msgs/Path2D
Header header
geometry_msgs/Pose2D[] poses

")



(provide :locomotor_msgs/NavigationState "3518ca42eb49bbf8de6cf123dcd80e4a")


