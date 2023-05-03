;; Auto-generated. Do not edit!


(when (boundp 'nav_2d_msgs::NavGridOfCharsUpdate)
  (if (not (find-package "NAV_2D_MSGS"))
    (make-package "NAV_2D_MSGS"))
  (shadow 'NavGridOfCharsUpdate (find-package "NAV_2D_MSGS")))
(unless (find-package "NAV_2D_MSGS::NAVGRIDOFCHARSUPDATE")
  (make-package "NAV_2D_MSGS::NAVGRIDOFCHARSUPDATE"))

(in-package "ROS")
;;//! \htmlinclude NavGridOfCharsUpdate.msg.html


(defclass nav_2d_msgs::NavGridOfCharsUpdate
  :super ros::object
  :slots (_stamp _bounds _data ))

(defmethod nav_2d_msgs::NavGridOfCharsUpdate
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:bounds __bounds) (instance nav_2d_msgs::UIntBounds :init))
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
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
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; nav_2d_msgs/UIntBounds _bounds
       (send _bounds :serialize s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; nav_2d_msgs/UIntBounds _bounds
     (send _bounds :deserialize buf ptr-) (incf ptr- (send _bounds :serialization-length))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get nav_2d_msgs::NavGridOfCharsUpdate :md5sum-) "9895b422244cc07416929605885c81c4")
(setf (get nav_2d_msgs::NavGridOfCharsUpdate :datatype-) "nav_2d_msgs/NavGridOfCharsUpdate")
(setf (get nav_2d_msgs::NavGridOfCharsUpdate :definition-)
      "time stamp
UIntBounds bounds
uint8[] data

================================================================================
MSG: nav_2d_msgs/UIntBounds
# Bounds are inclusive
uint32 min_x
uint32 min_y
uint32 max_x
uint32 max_y

")



(provide :nav_2d_msgs/NavGridOfCharsUpdate "9895b422244cc07416929605885c81c4")


