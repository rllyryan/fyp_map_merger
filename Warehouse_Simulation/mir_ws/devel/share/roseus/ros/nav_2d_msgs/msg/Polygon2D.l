;; Auto-generated. Do not edit!


(when (boundp 'nav_2d_msgs::Polygon2D)
  (if (not (find-package "NAV_2D_MSGS"))
    (make-package "NAV_2D_MSGS"))
  (shadow 'Polygon2D (find-package "NAV_2D_MSGS")))
(unless (find-package "NAV_2D_MSGS::POLYGON2D")
  (make-package "NAV_2D_MSGS::POLYGON2D"))

(in-package "ROS")
;;//! \htmlinclude Polygon2D.msg.html


(defclass nav_2d_msgs::Polygon2D
  :super ros::object
  :slots (_points ))

(defmethod nav_2d_msgs::Polygon2D
  (:init
   (&key
    ((:points __points) ())
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; nav_2d_msgs/Point2D[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_2d_msgs/Point2D[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_2d_msgs/Point2D[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance nav_2d_msgs::Point2D :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get nav_2d_msgs::Polygon2D :md5sum-) "8f02263beef99aa03117a577a3eb879d")
(setf (get nav_2d_msgs::Polygon2D :datatype-) "nav_2d_msgs/Polygon2D")
(setf (get nav_2d_msgs::Polygon2D :definition-)
      "Point2D[] points

================================================================================
MSG: nav_2d_msgs/Point2D
float64 x
float64 y

")



(provide :nav_2d_msgs/Polygon2D "8f02263beef99aa03117a577a3eb879d")


