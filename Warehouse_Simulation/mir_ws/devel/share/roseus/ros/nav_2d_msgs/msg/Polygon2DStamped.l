;; Auto-generated. Do not edit!


(when (boundp 'nav_2d_msgs::Polygon2DStamped)
  (if (not (find-package "NAV_2D_MSGS"))
    (make-package "NAV_2D_MSGS"))
  (shadow 'Polygon2DStamped (find-package "NAV_2D_MSGS")))
(unless (find-package "NAV_2D_MSGS::POLYGON2DSTAMPED")
  (make-package "NAV_2D_MSGS::POLYGON2DSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude Polygon2DStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nav_2d_msgs::Polygon2DStamped
  :super ros::object
  :slots (_header _polygon ))

(defmethod nav_2d_msgs::Polygon2DStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:polygon __polygon) (instance nav_2d_msgs::Polygon2D :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _polygon __polygon)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; nav_2d_msgs/Polygon2D _polygon
    (send _polygon :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nav_2d_msgs/Polygon2D _polygon
       (send _polygon :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nav_2d_msgs/Polygon2D _polygon
     (send _polygon :deserialize buf ptr-) (incf ptr- (send _polygon :serialization-length))
   ;;
   self)
  )

(setf (get nav_2d_msgs::Polygon2DStamped :md5sum-) "c7d23ad8985ecc1a7be1fe0399ab384b")
(setf (get nav_2d_msgs::Polygon2DStamped :datatype-) "nav_2d_msgs/Polygon2DStamped")
(setf (get nav_2d_msgs::Polygon2DStamped :definition-)
      "std_msgs/Header header
Polygon2D polygon

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
MSG: nav_2d_msgs/Polygon2D
Point2D[] points

================================================================================
MSG: nav_2d_msgs/Point2D
float64 x
float64 y

")



(provide :nav_2d_msgs/Polygon2DStamped "c7d23ad8985ecc1a7be1fe0399ab384b")


