;; Auto-generated. Do not edit!


(when (boundp 'nav_2d_msgs::UIntBounds)
  (if (not (find-package "NAV_2D_MSGS"))
    (make-package "NAV_2D_MSGS"))
  (shadow 'UIntBounds (find-package "NAV_2D_MSGS")))
(unless (find-package "NAV_2D_MSGS::UINTBOUNDS")
  (make-package "NAV_2D_MSGS::UINTBOUNDS"))

(in-package "ROS")
;;//! \htmlinclude UIntBounds.msg.html


(defclass nav_2d_msgs::UIntBounds
  :super ros::object
  :slots (_min_x _min_y _max_x _max_y ))

(defmethod nav_2d_msgs::UIntBounds
  (:init
   (&key
    ((:min_x __min_x) 0)
    ((:min_y __min_y) 0)
    ((:max_x __max_x) 0)
    ((:max_y __max_y) 0)
    )
   (send-super :init)
   (setq _min_x (round __min_x))
   (setq _min_y (round __min_y))
   (setq _max_x (round __max_x))
   (setq _max_y (round __max_y))
   self)
  (:min_x
   (&optional __min_x)
   (if __min_x (setq _min_x __min_x)) _min_x)
  (:min_y
   (&optional __min_y)
   (if __min_y (setq _min_y __min_y)) _min_y)
  (:max_x
   (&optional __max_x)
   (if __max_x (setq _max_x __max_x)) _max_x)
  (:max_y
   (&optional __max_y)
   (if __max_y (setq _max_y __max_y)) _max_y)
  (:serialization-length
   ()
   (+
    ;; uint32 _min_x
    4
    ;; uint32 _min_y
    4
    ;; uint32 _max_x
    4
    ;; uint32 _max_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _min_x
       (write-long _min_x s)
     ;; uint32 _min_y
       (write-long _min_y s)
     ;; uint32 _max_x
       (write-long _max_x s)
     ;; uint32 _max_y
       (write-long _max_y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _min_x
     (setq _min_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _min_y
     (setq _min_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _max_x
     (setq _max_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _max_y
     (setq _max_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get nav_2d_msgs::UIntBounds :md5sum-) "32cc77a889ecfebef439f3192db73e63")
(setf (get nav_2d_msgs::UIntBounds :datatype-) "nav_2d_msgs/UIntBounds")
(setf (get nav_2d_msgs::UIntBounds :definition-)
      "# Bounds are inclusive
uint32 min_x
uint32 min_y
uint32 max_x
uint32 max_y

")



(provide :nav_2d_msgs/UIntBounds "32cc77a889ecfebef439f3192db73e63")


