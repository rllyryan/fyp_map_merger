;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::EncoderTestEntry)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'EncoderTestEntry (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::ENCODERTESTENTRY")
  (make-package "MIR_MSGS::ENCODERTESTENTRY"))

(in-package "ROS")
;;//! \htmlinclude EncoderTestEntry.msg.html


(defclass mir_msgs::EncoderTestEntry
  :super ros::object
  :slots (_command_velocity _command_distance _left_dist _right_dist _suggested_direction _user_direction ))

(defmethod mir_msgs::EncoderTestEntry
  (:init
   (&key
    ((:command_velocity __command_velocity) 0.0)
    ((:command_distance __command_distance) 0.0)
    ((:left_dist __left_dist) 0.0)
    ((:right_dist __right_dist) 0.0)
    ((:suggested_direction __suggested_direction) "")
    ((:user_direction __user_direction) "")
    )
   (send-super :init)
   (setq _command_velocity (float __command_velocity))
   (setq _command_distance (float __command_distance))
   (setq _left_dist (float __left_dist))
   (setq _right_dist (float __right_dist))
   (setq _suggested_direction (string __suggested_direction))
   (setq _user_direction (string __user_direction))
   self)
  (:command_velocity
   (&optional __command_velocity)
   (if __command_velocity (setq _command_velocity __command_velocity)) _command_velocity)
  (:command_distance
   (&optional __command_distance)
   (if __command_distance (setq _command_distance __command_distance)) _command_distance)
  (:left_dist
   (&optional __left_dist)
   (if __left_dist (setq _left_dist __left_dist)) _left_dist)
  (:right_dist
   (&optional __right_dist)
   (if __right_dist (setq _right_dist __right_dist)) _right_dist)
  (:suggested_direction
   (&optional __suggested_direction)
   (if __suggested_direction (setq _suggested_direction __suggested_direction)) _suggested_direction)
  (:user_direction
   (&optional __user_direction)
   (if __user_direction (setq _user_direction __user_direction)) _user_direction)
  (:serialization-length
   ()
   (+
    ;; float64 _command_velocity
    8
    ;; float64 _command_distance
    8
    ;; float64 _left_dist
    8
    ;; float64 _right_dist
    8
    ;; string _suggested_direction
    4 (length _suggested_direction)
    ;; string _user_direction
    4 (length _user_direction)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _command_velocity
       (sys::poke _command_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _command_distance
       (sys::poke _command_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _left_dist
       (sys::poke _left_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_dist
       (sys::poke _right_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _suggested_direction
       (write-long (length _suggested_direction) s) (princ _suggested_direction s)
     ;; string _user_direction
       (write-long (length _user_direction) s) (princ _user_direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _command_velocity
     (setq _command_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _command_distance
     (setq _command_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _left_dist
     (setq _left_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_dist
     (setq _right_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _suggested_direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _suggested_direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _user_direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user_direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mir_msgs::EncoderTestEntry :md5sum-) "cfe8d446cf8b8eaf478f3a59f1f6abdd")
(setf (get mir_msgs::EncoderTestEntry :datatype-) "mir_msgs/EncoderTestEntry")
(setf (get mir_msgs::EncoderTestEntry :definition-)
      "float64 command_velocity
float64 command_distance
float64 left_dist
float64 right_dist
string suggested_direction
string user_direction

")



(provide :mir_msgs/EncoderTestEntry "cfe8d446cf8b8eaf478f3a59f1f6abdd")


