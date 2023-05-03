;; Auto-generated. Do not edit!


(when (boundp 'dwb_msgs::GenerateTwists)
  (if (not (find-package "DWB_MSGS"))
    (make-package "DWB_MSGS"))
  (shadow 'GenerateTwists (find-package "DWB_MSGS")))
(unless (find-package "DWB_MSGS::GENERATETWISTS")
  (make-package "DWB_MSGS::GENERATETWISTS"))
(unless (find-package "DWB_MSGS::GENERATETWISTSREQUEST")
  (make-package "DWB_MSGS::GENERATETWISTSREQUEST"))
(unless (find-package "DWB_MSGS::GENERATETWISTSRESPONSE")
  (make-package "DWB_MSGS::GENERATETWISTSRESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_2D_MSGS"))
  (ros::roseus-add-msgs "nav_2d_msgs"))


(if (not (find-package "NAV_2D_MSGS"))
  (ros::roseus-add-msgs "nav_2d_msgs"))


(defclass dwb_msgs::GenerateTwistsRequest
  :super ros::object
  :slots (_current_vel ))

(defmethod dwb_msgs::GenerateTwistsRequest
  (:init
   (&key
    ((:current_vel __current_vel) (instance nav_2d_msgs::Twist2D :init))
    )
   (send-super :init)
   (setq _current_vel __current_vel)
   self)
  (:current_vel
   (&rest __current_vel)
   (if (keywordp (car __current_vel))
       (send* _current_vel __current_vel)
     (progn
       (if __current_vel (setq _current_vel (car __current_vel)))
       _current_vel)))
  (:serialization-length
   ()
   (+
    ;; nav_2d_msgs/Twist2D _current_vel
    (send _current_vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_2d_msgs/Twist2D _current_vel
       (send _current_vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_2d_msgs/Twist2D _current_vel
     (send _current_vel :deserialize buf ptr-) (incf ptr- (send _current_vel :serialization-length))
   ;;
   self)
  )

(defclass dwb_msgs::GenerateTwistsResponse
  :super ros::object
  :slots (_twists ))

(defmethod dwb_msgs::GenerateTwistsResponse
  (:init
   (&key
    ((:twists __twists) ())
    )
   (send-super :init)
   (setq _twists __twists)
   self)
  (:twists
   (&rest __twists)
   (if (keywordp (car __twists))
       (send* _twists __twists)
     (progn
       (if __twists (setq _twists (car __twists)))
       _twists)))
  (:serialization-length
   ()
   (+
    ;; nav_2d_msgs/Twist2D[] _twists
    (apply #'+ (send-all _twists :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_2d_msgs/Twist2D[] _twists
     (write-long (length _twists) s)
     (dolist (elem _twists)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_2d_msgs/Twist2D[] _twists
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _twists (let (r) (dotimes (i n) (push (instance nav_2d_msgs::Twist2D :init) r)) r))
     (dolist (elem- _twists)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass dwb_msgs::GenerateTwists
  :super ros::object
  :slots ())

(setf (get dwb_msgs::GenerateTwists :md5sum-) "01d3946b46f84a3da34b725f25f3768a")
(setf (get dwb_msgs::GenerateTwists :datatype-) "dwb_msgs/GenerateTwists")
(setf (get dwb_msgs::GenerateTwists :request) dwb_msgs::GenerateTwistsRequest)
(setf (get dwb_msgs::GenerateTwists :response) dwb_msgs::GenerateTwistsResponse)

(defmethod dwb_msgs::GenerateTwistsRequest
  (:response () (instance dwb_msgs::GenerateTwistsResponse :init)))

(setf (get dwb_msgs::GenerateTwistsRequest :md5sum-) "01d3946b46f84a3da34b725f25f3768a")
(setf (get dwb_msgs::GenerateTwistsRequest :datatype-) "dwb_msgs/GenerateTwistsRequest")
(setf (get dwb_msgs::GenerateTwistsRequest :definition-)
      "# For a given velocity, generate which twist commands will be evaluated
nav_2d_msgs/Twist2D current_vel

================================================================================
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta
---
nav_2d_msgs/Twist2D[] twists


================================================================================
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta
")

(setf (get dwb_msgs::GenerateTwistsResponse :md5sum-) "01d3946b46f84a3da34b725f25f3768a")
(setf (get dwb_msgs::GenerateTwistsResponse :datatype-) "dwb_msgs/GenerateTwistsResponse")
(setf (get dwb_msgs::GenerateTwistsResponse :definition-)
      "# For a given velocity, generate which twist commands will be evaluated
nav_2d_msgs/Twist2D current_vel

================================================================================
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta
---
nav_2d_msgs/Twist2D[] twists


================================================================================
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta
")



(provide :dwb_msgs/GenerateTwists "01d3946b46f84a3da34b725f25f3768a")


