;; Auto-generated. Do not edit!


(when (boundp 'nav_2d_msgs::NavGridOfDoublesUpdate)
  (if (not (find-package "NAV_2D_MSGS"))
    (make-package "NAV_2D_MSGS"))
  (shadow 'NavGridOfDoublesUpdate (find-package "NAV_2D_MSGS")))
(unless (find-package "NAV_2D_MSGS::NAVGRIDOFDOUBLESUPDATE")
  (make-package "NAV_2D_MSGS::NAVGRIDOFDOUBLESUPDATE"))

(in-package "ROS")
;;//! \htmlinclude NavGridOfDoublesUpdate.msg.html


(defclass nav_2d_msgs::NavGridOfDoublesUpdate
  :super ros::object
  :slots (_stamp _bounds _data ))

(defmethod nav_2d_msgs::NavGridOfDoublesUpdate
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:bounds __bounds) (instance nav_2d_msgs::UIntBounds :init))
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _bounds __bounds)
   (setq _data __data)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:bounds
   (&rest __bounds)
   (if (keywordp (car __bounds))
       (send* _bounds __bounds)
     (progn
       (if __bounds (setq _bounds (car __bounds)))
       _bounds)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; nav_2d_msgs/UIntBounds _bounds
    (send _bounds :serialization-length)
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; nav_2d_msgs/UIntBounds _bounds
       (send _bounds :serialize s)
     ;; float64[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; nav_2d_msgs/UIntBounds _bounds
     (send _bounds :deserialize buf ptr-) (incf ptr- (send _bounds :serialization-length))
   ;; float64[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get nav_2d_msgs::NavGridOfDoublesUpdate :md5sum-) "e7978c0302caa5ef135fe6600dcca19e")
(setf (get nav_2d_msgs::NavGridOfDoublesUpdate :datatype-) "nav_2d_msgs/NavGridOfDoublesUpdate")
(setf (get nav_2d_msgs::NavGridOfDoublesUpdate :definition-)
      "time stamp
UIntBounds bounds
float64[] data

================================================================================
MSG: nav_2d_msgs/UIntBounds
# Bounds are inclusive
uint32 min_x
uint32 min_y
uint32 max_x
uint32 max_y

")



(provide :nav_2d_msgs/NavGridOfDoublesUpdate "e7978c0302caa5ef135fe6600dcca19e")


