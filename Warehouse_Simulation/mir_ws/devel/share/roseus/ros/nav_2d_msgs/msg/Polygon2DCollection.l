;; Auto-generated. Do not edit!


(when (boundp 'nav_2d_msgs::Polygon2DCollection)
  (if (not (find-package "NAV_2D_MSGS"))
    (make-package "NAV_2D_MSGS"))
  (shadow 'Polygon2DCollection (find-package "NAV_2D_MSGS")))
(unless (find-package "NAV_2D_MSGS::POLYGON2DCOLLECTION")
  (make-package "NAV_2D_MSGS::POLYGON2DCOLLECTION"))

(in-package "ROS")
;;//! \htmlinclude Polygon2DCollection.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nav_2d_msgs::Polygon2DCollection
  :super ros::object
  :slots (_header _polygons _colors ))

(defmethod nav_2d_msgs::Polygon2DCollection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:polygons __polygons) ())
    ((:colors __colors) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _polygons __polygons)
   (setq _colors __colors)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:polygons
   (&rest __polygons)
   (if (keywordp (car __polygons))
       (send* _polygons __polygons)
     (progn
       (if __polygons (setq _polygons (car __polygons)))
       _polygons)))
  (:colors
   (&rest __colors)
   (if (keywordp (car __colors))
       (send* _colors __colors)
     (progn
       (if __colors (setq _colors (car __colors)))
       _colors)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; nav_2d_msgs/ComplexPolygon2D[] _polygons
    (apply #'+ (send-all _polygons :serialization-length)) 4
    ;; std_msgs/ColorRGBA[] _colors
    (apply #'+ (send-all _colors :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nav_2d_msgs/ComplexPolygon2D[] _polygons
     (write-long (length _polygons) s)
     (dolist (elem _polygons)
       (send elem :serialize s)
       )
     ;; std_msgs/ColorRGBA[] _colors
     (write-long (length _colors) s)
     (dolist (elem _colors)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nav_2d_msgs/ComplexPolygon2D[] _polygons
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygons (let (r) (dotimes (i n) (push (instance nav_2d_msgs::ComplexPolygon2D :init) r)) r))
     (dolist (elem- _polygons)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/ColorRGBA[] _colors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _colors (let (r) (dotimes (i n) (push (instance std_msgs::ColorRGBA :init) r)) r))
     (dolist (elem- _colors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get nav_2d_msgs::Polygon2DCollection :md5sum-) "a0186b831cfbcfeafd72a58884a4efe9")
(setf (get nav_2d_msgs::Polygon2DCollection :datatype-) "nav_2d_msgs/Polygon2DCollection")
(setf (get nav_2d_msgs::Polygon2DCollection :definition-)
      "# Primarily used for visualization
# Colors are optional
std_msgs/Header header
ComplexPolygon2D[] polygons
std_msgs/ColorRGBA[] colors

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
MSG: nav_2d_msgs/ComplexPolygon2D
# Representation for a non-simple polygon, i.e. one with holes
Polygon2D outer    # The outer perimeter
Polygon2D[] inner  # The perimeter of any inner holes

================================================================================
MSG: nav_2d_msgs/Polygon2D
Point2D[] points

================================================================================
MSG: nav_2d_msgs/Point2D
float64 x
float64 y

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :nav_2d_msgs/Polygon2DCollection "a0186b831cfbcfeafd72a58884a4efe9")


