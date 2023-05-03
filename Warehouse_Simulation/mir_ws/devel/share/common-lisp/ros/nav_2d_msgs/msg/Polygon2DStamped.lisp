; Auto-generated. Do not edit!


(cl:in-package nav_2d_msgs-msg)


;//! \htmlinclude Polygon2DStamped.msg.html

(cl:defclass <Polygon2DStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (polygon
    :reader polygon
    :initarg :polygon
    :type nav_2d_msgs-msg:Polygon2D
    :initform (cl:make-instance 'nav_2d_msgs-msg:Polygon2D)))
)

(cl:defclass Polygon2DStamped (<Polygon2DStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Polygon2DStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Polygon2DStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_2d_msgs-msg:<Polygon2DStamped> is deprecated: use nav_2d_msgs-msg:Polygon2DStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Polygon2DStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:header-val is deprecated.  Use nav_2d_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <Polygon2DStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:polygon-val is deprecated.  Use nav_2d_msgs-msg:polygon instead.")
  (polygon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Polygon2DStamped>) ostream)
  "Serializes a message object of type '<Polygon2DStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygon) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Polygon2DStamped>) istream)
  "Deserializes a message object of type '<Polygon2DStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygon) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Polygon2DStamped>)))
  "Returns string type for a message object of type '<Polygon2DStamped>"
  "nav_2d_msgs/Polygon2DStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Polygon2DStamped)))
  "Returns string type for a message object of type 'Polygon2DStamped"
  "nav_2d_msgs/Polygon2DStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Polygon2DStamped>)))
  "Returns md5sum for a message object of type '<Polygon2DStamped>"
  "c7d23ad8985ecc1a7be1fe0399ab384b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Polygon2DStamped)))
  "Returns md5sum for a message object of type 'Polygon2DStamped"
  "c7d23ad8985ecc1a7be1fe0399ab384b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Polygon2DStamped>)))
  "Returns full string definition for message of type '<Polygon2DStamped>"
  (cl:format cl:nil "std_msgs/Header header~%Polygon2D polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_2d_msgs/Polygon2D~%Point2D[] points~%~%================================================================================~%MSG: nav_2d_msgs/Point2D~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Polygon2DStamped)))
  "Returns full string definition for message of type 'Polygon2DStamped"
  (cl:format cl:nil "std_msgs/Header header~%Polygon2D polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_2d_msgs/Polygon2D~%Point2D[] points~%~%================================================================================~%MSG: nav_2d_msgs/Point2D~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Polygon2DStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygon))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Polygon2DStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'Polygon2DStamped
    (cl:cons ':header (header msg))
    (cl:cons ':polygon (polygon msg))
))
