;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::ExternalRobot)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'ExternalRobot (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::EXTERNALROBOT")
  (make-package "MIR_MSGS::EXTERNALROBOT"))

(in-package "ROS")
;;//! \htmlinclude ExternalRobot.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MIR100*" (find-package "MIR_MSGS::EXTERNALROBOT"))
(shadow '*MIR100* (find-package "MIR_MSGS::EXTERNALROBOT"))
(defconstant mir_msgs::ExternalRobot::*MIR100* 1)
(intern "*MIR500*" (find-package "MIR_MSGS::EXTERNALROBOT"))
(shadow '*MIR500* (find-package "MIR_MSGS::EXTERNALROBOT"))
(defconstant mir_msgs::ExternalRobot::*MIR500* 3)

(defun mir_msgs::ExternalRobot-to-symbol (const)
  (cond
        ((= const 1) 'mir_msgs::ExternalRobot::*MIR100*)
        ((= const 3) 'mir_msgs::ExternalRobot::*MIR500*)
        (t nil)))

(defclass mir_msgs::ExternalRobot
  :super ros::object
  :slots (_header _id _type_id _name _robot_length _robot_width _footprint _ip _map_id _priority _pose _extrapolated_pose _twist ))

(defmethod mir_msgs::ExternalRobot
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:type_id __type_id) 0)
    ((:name __name) "")
    ((:robot_length __robot_length) 0.0)
    ((:robot_width __robot_width) 0.0)
    ((:footprint __footprint) "")
    ((:ip __ip) "")
    ((:map_id __map_id) 0)
    ((:priority __priority) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:extrapolated_pose __extrapolated_pose) (instance geometry_msgs::Pose :init))
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _type_id (round __type_id))
   (setq _name (string __name))
   (setq _robot_length (float __robot_length))
   (setq _robot_width (float __robot_width))
   (setq _footprint (string __footprint))
   (setq _ip (string __ip))
   (setq _map_id (round __map_id))
   (setq _priority (round __priority))
   (setq _pose __pose)
   (setq _extrapolated_pose __extrapolated_pose)
   (setq _twist __twist)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type_id
   (&optional __type_id)
   (if __type_id (setq _type_id __type_id)) _type_id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:robot_length
   (&optional __robot_length)
   (if __robot_length (setq _robot_length __robot_length)) _robot_length)
  (:robot_width
   (&optional __robot_width)
   (if __robot_width (setq _robot_width __robot_width)) _robot_width)
  (:footprint
   (&optional __footprint)
   (if __footprint (setq _footprint __footprint)) _footprint)
  (:ip
   (&optional __ip)
   (if __ip (setq _ip __ip)) _ip)
  (:map_id
   (&optional __map_id)
   (if __map_id (setq _map_id __map_id)) _map_id)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:extrapolated_pose
   (&rest __extrapolated_pose)
   (if (keywordp (car __extrapolated_pose))
       (send* _extrapolated_pose __extrapolated_pose)
     (progn
       (if __extrapolated_pose (setq _extrapolated_pose (car __extrapolated_pose)))
       _extrapolated_pose)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; uint32 _type_id
    4
    ;; string _name
    4 (length _name)
    ;; float64 _robot_length
    8
    ;; float64 _robot_width
    8
    ;; string _footprint
    4 (length _footprint)
    ;; string _ip
    4 (length _ip)
    ;; uint32 _map_id
    4
    ;; int32 _priority
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Pose _extrapolated_pose
    (send _extrapolated_pose :serialization-length)
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; uint32 _type_id
       (write-long _type_id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _robot_length
       (sys::poke _robot_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _robot_width
       (sys::poke _robot_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _footprint
       (write-long (length _footprint) s) (princ _footprint s)
     ;; string _ip
       (write-long (length _ip) s) (princ _ip s)
     ;; uint32 _map_id
       (write-long _map_id s)
     ;; int32 _priority
       (write-long _priority s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Pose _extrapolated_pose
       (send _extrapolated_pose :serialize s)
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _type_id
     (setq _type_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _robot_length
     (setq _robot_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _robot_width
     (setq _robot_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _footprint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _footprint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _map_id
     (setq _map_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _priority
     (setq _priority (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Pose _extrapolated_pose
     (send _extrapolated_pose :deserialize buf ptr-) (incf ptr- (send _extrapolated_pose :serialization-length))
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;;
   self)
  )

(setf (get mir_msgs::ExternalRobot :md5sum-) "c918f873fd97439db9097e325d55c2fe")
(setf (get mir_msgs::ExternalRobot :datatype-) "mir_msgs/ExternalRobot")
(setf (get mir_msgs::ExternalRobot :definition-)
      "Header header
uint32 id
uint32 MIR100=1
uint32 MIR500=3
uint32 type_id
string name
float64 robot_length
float64 robot_width
string footprint
string ip
uint32 map_id
int32 priority
geometry_msgs/Pose pose
geometry_msgs/Pose extrapolated_pose
geometry_msgs/Twist twist

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :mir_msgs/ExternalRobot "c918f873fd97439db9097e325d55c2fe")


