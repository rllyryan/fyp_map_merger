;; Auto-generated. Do not edit!


(when (boundp 'nav_2d_msgs::NavGridOfChars)
  (if (not (find-package "NAV_2D_MSGS"))
    (make-package "NAV_2D_MSGS"))
  (shadow 'NavGridOfChars (find-package "NAV_2D_MSGS")))
(unless (find-package "NAV_2D_MSGS::NAVGRIDOFCHARS")
  (make-package "NAV_2D_MSGS::NAVGRIDOFCHARS"))

(in-package "ROS")
;;//! \htmlinclude NavGridOfChars.msg.html


(defclass nav_2d_msgs::NavGridOfChars
  :super ros::object
  :slots (_stamp _info _data ))

(defmethod nav_2d_msgs::NavGridOfChars
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:info __info) (instance nav_2d_msgs::NavGridInfo :init))
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _info __info)
   (setq _data __data)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; nav_2d_msgs/NavGridInfo _info
    (send _info :serialization-length)
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; nav_2d_msgs/NavGridInfo _info
       (send _info :serialize s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; nav_2d_msgs/NavGridInfo _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get nav_2d_msgs::NavGridOfChars :md5sum-) "396563c1db71f1080855e692b0310f96")
(setf (get nav_2d_msgs::NavGridOfChars :datatype-) "nav_2d_msgs/NavGridOfChars")
(setf (get nav_2d_msgs::NavGridOfChars :definition-)
      "time stamp
NavGridInfo info
# The map data, in row-major order, starting with (0,0).
# Unlike nav_msgs/OccupancyGrid, the values are [0, 256), not [-1, 100]
uint8[] data

================================================================================
MSG: nav_2d_msgs/NavGridInfo
uint32 width
uint32 height
float64 resolution
string frame_id
float64 origin_x
float64 origin_y

")



(provide :nav_2d_msgs/NavGridOfChars "396563c1db71f1080855e692b0310f96")


