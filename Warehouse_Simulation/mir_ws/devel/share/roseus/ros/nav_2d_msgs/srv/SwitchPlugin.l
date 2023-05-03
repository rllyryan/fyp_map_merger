;; Auto-generated. Do not edit!


(when (boundp 'nav_2d_msgs::SwitchPlugin)
  (if (not (find-package "NAV_2D_MSGS"))
    (make-package "NAV_2D_MSGS"))
  (shadow 'SwitchPlugin (find-package "NAV_2D_MSGS")))
(unless (find-package "NAV_2D_MSGS::SWITCHPLUGIN")
  (make-package "NAV_2D_MSGS::SWITCHPLUGIN"))
(unless (find-package "NAV_2D_MSGS::SWITCHPLUGINREQUEST")
  (make-package "NAV_2D_MSGS::SWITCHPLUGINREQUEST"))
(unless (find-package "NAV_2D_MSGS::SWITCHPLUGINRESPONSE")
  (make-package "NAV_2D_MSGS::SWITCHPLUGINRESPONSE"))

(in-package "ROS")





(defclass nav_2d_msgs::SwitchPluginRequest
  :super ros::object
  :slots (_new_plugin ))

(defmethod nav_2d_msgs::SwitchPluginRequest
  (:init
   (&key
    ((:new_plugin __new_plugin) "")
    )
   (send-super :init)
   (setq _new_plugin (string __new_plugin))
   self)
  (:new_plugin
   (&optional __new_plugin)
   (if __new_plugin (setq _new_plugin __new_plugin)) _new_plugin)
  (:serialization-length
   ()
   (+
    ;; string _new_plugin
    4 (length _new_plugin)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _new_plugin
       (write-long (length _new_plugin) s) (princ _new_plugin s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _new_plugin
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _new_plugin (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nav_2d_msgs::SwitchPluginResponse
  :super ros::object
  :slots (_success _message ))

(defmethod nav_2d_msgs::SwitchPluginResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nav_2d_msgs::SwitchPlugin
  :super ros::object
  :slots ())

(setf (get nav_2d_msgs::SwitchPlugin :md5sum-) "7e1da0f37c644e038a68b98eee3fb836")
(setf (get nav_2d_msgs::SwitchPlugin :datatype-) "nav_2d_msgs/SwitchPlugin")
(setf (get nav_2d_msgs::SwitchPlugin :request) nav_2d_msgs::SwitchPluginRequest)
(setf (get nav_2d_msgs::SwitchPlugin :response) nav_2d_msgs::SwitchPluginResponse)

(defmethod nav_2d_msgs::SwitchPluginRequest
  (:response () (instance nav_2d_msgs::SwitchPluginResponse :init)))

(setf (get nav_2d_msgs::SwitchPluginRequest :md5sum-) "7e1da0f37c644e038a68b98eee3fb836")
(setf (get nav_2d_msgs::SwitchPluginRequest :datatype-) "nav_2d_msgs/SwitchPluginRequest")
(setf (get nav_2d_msgs::SwitchPluginRequest :definition-)
      "string new_plugin
---
bool success
string message

")

(setf (get nav_2d_msgs::SwitchPluginResponse :md5sum-) "7e1da0f37c644e038a68b98eee3fb836")
(setf (get nav_2d_msgs::SwitchPluginResponse :datatype-) "nav_2d_msgs/SwitchPluginResponse")
(setf (get nav_2d_msgs::SwitchPluginResponse :definition-)
      "string new_plugin
---
bool success
string message

")



(provide :nav_2d_msgs/SwitchPlugin "7e1da0f37c644e038a68b98eee3fb836")


