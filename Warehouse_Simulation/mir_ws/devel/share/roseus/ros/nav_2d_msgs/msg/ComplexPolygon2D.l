;; Auto-generated. Do not edit!


(when (boundp 'nav_2d_msgs::ComplexPolygon2D)
  (if (not (find-package "NAV_2D_MSGS"))
    (make-package "NAV_2D_MSGS"))
  (shadow 'ComplexPolygon2D (find-package "NAV_2D_MSGS")))
(unless (find-package "NAV_2D_MSGS::COMPLEXPOLYGON2D")
  (make-package "NAV_2D_MSGS::COMPLEXPOLYGON2D"))

(in-package "ROS")
;;//! \htmlinclude ComplexPolygon2D.msg.html


(defclass nav_2d_msgs::ComplexPolygon2D
  :super ros::object
  :slots (_outer _inner ))

(defmethod nav_2d_msgs::ComplexPolygon2D
  (:init
   (&key
    ((:outer __outer) (instance nav_2d_msgs::Polygon2D :init))
    ((:inner __inner) ())
    )
   (send-super :init)
   (setq _outer __outer)
   (setq _inner __inner)
   self)
  (:outer
   (&rest __outer)
   (if (keywordp (car __outer))
       (send* _outer __outer)
     (progn
       (if __outer (setq _outer (car __outer)))
       _outer)))
  (:inner
   (&rest __inner)
   (if (keywordp (car __inner))
       (send* _inner __inner)
     (progn
       (if __inner (setq _inner (car __inner)))
       _inner)))
  (:serialization-length
   ()
   (+
    ;; nav_2d_msgs/Polygon2D _outer
    (send _outer :serialization-length)
    ;; nav_2d_msgs/Polygon2D[] _inner
    (apply #'+ (send-all _inner :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_2d_msgs/Polygon2D _outer
       (send _outer :serialize s)
     ;; nav_2d_msgs/Polygon2D[] _inner
     (write-long (length _inner) s)
     (dolist (elem _inner)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_2d_msgs/Polygon2D _outer
     (send _outer :deserialize buf ptr-) (incf ptr- (send _outer :serialization-length))
   ;; nav_2d_msgs/Polygon2D[] _inner
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _inner (let (r) (dotimes (i n) (push (instance nav_2d_msgs::Polygon2D :init) r)) r))
     (dolist (elem- _inner)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get nav_2d_msgs::ComplexPolygon2D :md5sum-) "f93841a14f7caf40d600ff8c62446616")
(setf (get nav_2d_msgs::ComplexPolygon2D :datatype-) "nav_2d_msgs/ComplexPolygon2D")
(setf (get nav_2d_msgs::ComplexPolygon2D :definition-)
      "# Representation for a non-simple polygon, i.e. one with holes
Polygon2D outer    # The outer perimeter
Polygon2D[] inner  # The perimeter of any inner holes

================================================================================
MSG: nav_2d_msgs/Polygon2D
Point2D[] points

================================================================================
MSG: nav_2d_msgs/Point2D
float64 x
float64 y

")



(provide :nav_2d_msgs/ComplexPolygon2D "f93841a14f7caf40d600ff8c62446616")


