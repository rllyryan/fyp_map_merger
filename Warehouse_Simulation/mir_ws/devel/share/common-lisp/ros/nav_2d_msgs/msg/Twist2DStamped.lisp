; Auto-generated. Do not edit!


(cl:in-package nav_2d_msgs-msg)


;//! \htmlinclude Twist2DStamped.msg.html

(cl:defclass <Twist2DStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (velocity
    :reader velocity
    :initarg :velocity
    :type nav_2d_msgs-msg:Twist2D
    :initform (cl:make-instance 'nav_2d_msgs-msg:Twist2D)))
)

(cl:defclass Twist2DStamped (<Twist2DStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Twist2DStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Twist2DStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_2d_msgs-msg:<Twist2DStamped> is deprecated: use nav_2d_msgs-msg:Twist2DStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Twist2DStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:header-val is deprecated.  Use nav_2d_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Twist2DStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:velocity-val is deprecated.  Use nav_2d_msgs-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Twist2DStamped>) ostream)
  "Serializes a message object of type '<Twist2DStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Twist2DStamped>) istream)
  "Deserializes a message object of type '<Twist2DStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Twist2DStamped>)))
  "Returns string type for a message object of type '<Twist2DStamped>"
  "nav_2d_msgs/Twist2DStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Twist2DStamped)))
  "Returns string type for a message object of type 'Twist2DStamped"
  "nav_2d_msgs/Twist2DStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Twist2DStamped>)))
  "Returns md5sum for a message object of type '<Twist2DStamped>"
  "dd276ca6100434e23de2f104f6c317c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Twist2DStamped)))
  "Returns md5sum for a message object of type 'Twist2DStamped"
  "dd276ca6100434e23de2f104f6c317c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Twist2DStamped>)))
  "Returns full string definition for message of type '<Twist2DStamped>"
  (cl:format cl:nil "std_msgs/Header header~%Twist2D velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Twist2DStamped)))
  "Returns full string definition for message of type 'Twist2DStamped"
  (cl:format cl:nil "std_msgs/Header header~%Twist2D velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Twist2DStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Twist2DStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'Twist2DStamped
    (cl:cons ':header (header msg))
    (cl:cons ':velocity (velocity msg))
))
