;; Auto-generated. Do not edit!


(when (boundp 'nav_2d_msgs::Twist2DStamped)
  (if (not (find-package "NAV_2D_MSGS"))
    (make-package "NAV_2D_MSGS"))
  (shadow 'Twist2DStamped (find-package "NAV_2D_MSGS")))
(unless (find-package "NAV_2D_MSGS::TWIST2DSTAMPED")
  (make-package "NAV_2D_MSGS::TWIST2DSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude Twist2DStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nav_2d_msgs::Twist2DStamped
  :super ros::object
  :slots (_header _velocity ))

(defmethod nav_2d_msgs::Twist2DStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:velocity __velocity) (instance nav_2d_msgs::Twist2D :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _velocity __velocity)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; nav_2d_msgs/Twist2D _velocity
    (send _velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nav_2d_msgs/Twist2D _velocity
       (send _velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nav_2d_msgs/Twist2D _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;;
   self)
  )

(setf (get nav_2d_msgs::Twist2DStamped :md5sum-) "dd276ca6100434e23de2f104f6c317c2")
(setf (get nav_2d_msgs::Twist2DStamped :datatype-) "nav_2d_msgs/Twist2DStamped")
(setf (get nav_2d_msgs::Twist2DStamped :definition-)
      "std_msgs/Header header
Twist2D velocity

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
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta

")



(provide :nav_2d_msgs/Twist2DStamped "dd276ca6100434e23de2f104f6c317c2")


