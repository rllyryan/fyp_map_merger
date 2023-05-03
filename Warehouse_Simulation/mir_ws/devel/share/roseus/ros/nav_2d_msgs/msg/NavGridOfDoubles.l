;; Auto-generated. Do not edit!


(when (boundp 'nav_2d_msgs::NavGridOfDoubles)
  (if (not (find-package "NAV_2D_MSGS"))
    (make-package "NAV_2D_MSGS"))
  (shadow 'NavGridOfDoubles (find-package "NAV_2D_MSGS")))
(unless (find-package "NAV_2D_MSGS::NAVGRIDOFDOUBLES")
  (make-package "NAV_2D_MSGS::NAVGRIDOFDOUBLES"))

(in-package "ROS")
;;//! \htmlinclude NavGridOfDoubles.msg.html


(defclass nav_2d_msgs::NavGridOfDoubles
  :super ros::object
  :slots (_stamp _info _data ))

(defmethod nav_2d_msgs::NavGridOfDoubles
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:info __info) (instance nav_2d_msgs::NavGridInfo :init))
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
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
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; nav_2d_msgs/NavGridInfo _info
       (send _info :serialize s)
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
   ;; nav_2d_msgs/NavGridInfo _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
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

(setf (get nav_2d_msgs::NavGridOfDoubles :md5sum-) "41dfe8d90b2b81dedf7b72efb7539645")
(setf (get nav_2d_msgs::NavGridOfDoubles :datatype-) "nav_2d_msgs/NavGridOfDoubles")
(setf (get nav_2d_msgs::NavGridOfDoubles :definition-)
      "time stamp
NavGridInfo info
# The map data, in row-major order, starting with (0,0).
float64[] data

================================================================================
MSG: nav_2d_msgs/NavGridInfo
uint32 width
uint32 height
float64 resolution
string frame_id
float64 origin_x
float64 origin_y

")



(provide :nav_2d_msgs/NavGridOfDoubles "41dfe8d90b2b81dedf7b72efb7539645")


