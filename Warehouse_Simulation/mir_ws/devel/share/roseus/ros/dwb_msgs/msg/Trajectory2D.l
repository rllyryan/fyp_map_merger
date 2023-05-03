;; Auto-generated. Do not edit!


(when (boundp 'dwb_msgs::Trajectory2D)
  (if (not (find-package "DWB_MSGS"))
    (make-package "DWB_MSGS"))
  (shadow 'Trajectory2D (find-package "DWB_MSGS")))
(unless (find-package "DWB_MSGS::TRAJECTORY2D")
  (make-package "DWB_MSGS::TRAJECTORY2D"))

(in-package "ROS")
;;//! \htmlinclude Trajectory2D.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_2D_MSGS"))
  (ros::roseus-add-msgs "nav_2d_msgs"))


(defclass dwb_msgs::Trajectory2D
  :super ros::object
  :slots (_velocity _poses _time_offsets ))

(defmethod dwb_msgs::Trajectory2D
  (:init
   (&key
    ((:velocity __velocity) (instance nav_2d_msgs::Twist2D :init))
    ((:poses __poses) ())
    ((:time_offsets __time_offsets) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    )
   (send-super :init)
   (setq _velocity __velocity)
   (setq _poses __poses)
   (setq _time_offsets __time_offsets)
   self)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:time_offsets
   (&optional __time_offsets)
   (if __time_offsets (setq _time_offsets __time_offsets)) _time_offsets)
  (:serialization-length
   ()
   (+
    ;; nav_2d_msgs/Twist2D _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Pose2D[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ;; duration[] _time_offsets
    (* 8    (length _time_offsets)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_2d_msgs/Twist2D _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Pose2D[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; duration[] _time_offsets
     (write-long (length _time_offsets) s)
     (dotimes (i (length _time_offsets))
       (write-long (send (elt _time_offsets i) :sec) s) (write-long (send (elt _time_offsets i) :nsec) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_2d_msgs/Twist2D _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Pose2D[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; duration[] _time_offsets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time_offsets (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _time_offsets)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get dwb_msgs::Trajectory2D :md5sum-) "cabdc5bddc0dd1dcdc6b8f29fcb7ebcb")
(setf (get dwb_msgs::Trajectory2D :datatype-) "dwb_msgs/Trajectory2D")
(setf (get dwb_msgs::Trajectory2D :definition-)
      "# For a given velocity command, the poses that the robot will go to in the allotted time.

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



(provide :dwb_msgs/Trajectory2D "cabdc5bddc0dd1dcdc6b8f29fcb7ebcb")


