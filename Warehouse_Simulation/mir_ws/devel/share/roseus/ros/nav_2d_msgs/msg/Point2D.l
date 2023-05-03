;; Auto-generated. Do not edit!


(when (boundp 'nav_2d_msgs::Point2D)
  (if (not (find-package "NAV_2D_MSGS"))
    (make-package "NAV_2D_MSGS"))
  (shadow 'Point2D (find-package "NAV_2D_MSGS")))
(unless (find-package "NAV_2D_MSGS::POINT2D")
  (make-package "NAV_2D_MSGS::POINT2D"))

(in-package "ROS")
;;//! \htmlinclude Point2D.msg.html


(defclass nav_2d_msgs::Point2D
  :super ros::object
  :slots (_x _y ))

(defmethod nav_2d_msgs::Point2D
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get nav_2d_msgs::Point2D :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get nav_2d_msgs::Point2D :datatype-) "nav_2d_msgs/Point2D")
(setf (get nav_2d_msgs::Point2D :definition-)
      "float64 x
float64 y

")



(provide :nav_2d_msgs/Point2D "209f516d3eb691f0663e25cb750d67c1")


