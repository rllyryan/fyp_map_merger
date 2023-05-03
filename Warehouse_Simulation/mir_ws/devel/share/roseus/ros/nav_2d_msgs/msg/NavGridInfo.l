;; Auto-generated. Do not edit!


(when (boundp 'nav_2d_msgs::NavGridInfo)
  (if (not (find-package "NAV_2D_MSGS"))
    (make-package "NAV_2D_MSGS"))
  (shadow 'NavGridInfo (find-package "NAV_2D_MSGS")))
(unless (find-package "NAV_2D_MSGS::NAVGRIDINFO")
  (make-package "NAV_2D_MSGS::NAVGRIDINFO"))

(in-package "ROS")
;;//! \htmlinclude NavGridInfo.msg.html


(defclass nav_2d_msgs::NavGridInfo
  :super ros::object
  :slots (_width _height _resolution _frame_id _origin_x _origin_y ))

(defmethod nav_2d_msgs::NavGridInfo
  (:init
   (&key
    ((:width __width) 0)
    ((:height __height) 0)
    ((:resolution __resolution) 0.0)
    ((:frame_id __frame_id) "")
    ((:origin_x __origin_x) 0.0)
    ((:origin_y __origin_y) 0.0)
    )
   (send-super :init)
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _resolution (float __resolution))
   (setq _frame_id (string __frame_id))
   (setq _origin_x (float __origin_x))
   (setq _origin_y (float __origin_y))
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:origin_x
   (&optional __origin_x)
   (if __origin_x (setq _origin_x __origin_x)) _origin_x)
  (:origin_y
   (&optional __origin_y)
   (if __origin_y (setq _origin_y __origin_y)) _origin_y)
  (:serialization-length
   ()
   (+
    ;; uint32 _width
    4
    ;; uint32 _height
    4
    ;; float64 _resolution
    8
    ;; string _frame_id
    4 (length _frame_id)
    ;; float64 _origin_x
    8
    ;; float64 _origin_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _width
       (write-long _width s)
     ;; uint32 _height
       (write-long _height s)
     ;; float64 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; float64 _origin_x
       (sys::poke _origin_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _origin_y
       (sys::poke _origin_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _resolution
     (setq _resolution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _origin_x
     (setq _origin_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _origin_y
     (setq _origin_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get nav_2d_msgs::NavGridInfo :md5sum-) "061e7a10093a3d95bf6b212dff9d9715")
(setf (get nav_2d_msgs::NavGridInfo :datatype-) "nav_2d_msgs/NavGridInfo")
(setf (get nav_2d_msgs::NavGridInfo :definition-)
      "uint32 width
uint32 height
float64 resolution
string frame_id
float64 origin_x
float64 origin_y

")



(provide :nav_2d_msgs/NavGridInfo "061e7a10093a3d95bf6b212dff9d9715")


