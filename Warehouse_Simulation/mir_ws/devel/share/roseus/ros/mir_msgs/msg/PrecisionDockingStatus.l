;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::PrecisionDockingStatus)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'PrecisionDockingStatus (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::PRECISIONDOCKINGSTATUS")
  (make-package "MIR_MSGS::PRECISIONDOCKINGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude PrecisionDockingStatus.msg.html


(defclass mir_msgs::PrecisionDockingStatus
  :super ros::object
  :slots (_connected _motor_forward _motor_back _left_docking _right_docking ))

(defmethod mir_msgs::PrecisionDockingStatus
  (:init
   (&key
    ((:connected __connected) nil)
    ((:motor_forward __motor_forward) nil)
    ((:motor_back __motor_back) nil)
    ((:left_docking __left_docking) nil)
    ((:right_docking __right_docking) nil)
    )
   (send-super :init)
   (setq _connected __connected)
   (setq _motor_forward __motor_forward)
   (setq _motor_back __motor_back)
   (setq _left_docking __left_docking)
   (setq _right_docking __right_docking)
   self)
  (:connected
   (&optional (__connected :null))
   (if (not (eq __connected :null)) (setq _connected __connected)) _connected)
  (:motor_forward
   (&optional (__motor_forward :null))
   (if (not (eq __motor_forward :null)) (setq _motor_forward __motor_forward)) _motor_forward)
  (:motor_back
   (&optional (__motor_back :null))
   (if (not (eq __motor_back :null)) (setq _motor_back __motor_back)) _motor_back)
  (:left_docking
   (&optional (__left_docking :null))
   (if (not (eq __left_docking :null)) (setq _left_docking __left_docking)) _left_docking)
  (:right_docking
   (&optional (__right_docking :null))
   (if (not (eq __right_docking :null)) (setq _right_docking __right_docking)) _right_docking)
  (:serialization-length
   ()
   (+
    ;; bool _connected
    1
    ;; bool _motor_forward
    1
    ;; bool _motor_back
    1
    ;; bool _left_docking
    1
    ;; bool _right_docking
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _connected
       (if _connected (write-byte -1 s) (write-byte 0 s))
     ;; bool _motor_forward
       (if _motor_forward (write-byte -1 s) (write-byte 0 s))
     ;; bool _motor_back
       (if _motor_back (write-byte -1 s) (write-byte 0 s))
     ;; bool _left_docking
       (if _left_docking (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_docking
       (if _right_docking (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _connected
     (setq _connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _motor_forward
     (setq _motor_forward (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _motor_back
     (setq _motor_back (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _left_docking
     (setq _left_docking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_docking
     (setq _right_docking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_msgs::PrecisionDockingStatus :md5sum-) "17548d8189172ef51cde6fef0830938f")
(setf (get mir_msgs::PrecisionDockingStatus :datatype-) "mir_msgs/PrecisionDockingStatus")
(setf (get mir_msgs::PrecisionDockingStatus :definition-)
      "bool connected
bool motor_forward
bool motor_back
bool left_docking
bool right_docking

")



(provide :mir_msgs/PrecisionDockingStatus "17548d8189172ef51cde6fef0830938f")


