;; Auto-generated. Do not edit!


(when (boundp 'dwb_msgs::CriticScore)
  (if (not (find-package "DWB_MSGS"))
    (make-package "DWB_MSGS"))
  (shadow 'CriticScore (find-package "DWB_MSGS")))
(unless (find-package "DWB_MSGS::CRITICSCORE")
  (make-package "DWB_MSGS::CRITICSCORE"))

(in-package "ROS")
;;//! \htmlinclude CriticScore.msg.html


(defclass dwb_msgs::CriticScore
  :super ros::object
  :slots (_name _raw_score _scale ))

(defmethod dwb_msgs::CriticScore
  (:init
   (&key
    ((:name __name) "")
    ((:raw_score __raw_score) 0.0)
    ((:scale __scale) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _raw_score (float __raw_score))
   (setq _scale (float __scale))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:raw_score
   (&optional __raw_score)
   (if __raw_score (setq _raw_score __raw_score)) _raw_score)
  (:scale
   (&optional __scale)
   (if __scale (setq _scale __scale)) _scale)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32 _raw_score
    4
    ;; float32 _scale
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _raw_score
       (sys::poke _raw_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _scale
       (sys::poke _scale (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _raw_score
     (setq _raw_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _scale
     (setq _scale (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dwb_msgs::CriticScore :md5sum-) "442332720f7b0ede3653c34ceeb74662")
(setf (get dwb_msgs::CriticScore :datatype-) "dwb_msgs/CriticScore")
(setf (get dwb_msgs::CriticScore :definition-)
      "# The result from one critic scoring a Twist.
# Name of the critic
string name
# Score for the critic, not multiplied by the scale
float32 raw_score
# Scale for the critic, multiplied by the raw_score and added to the total score
float32 scale

")



(provide :dwb_msgs/CriticScore "442332720f7b0ede3653c34ceeb74662")


