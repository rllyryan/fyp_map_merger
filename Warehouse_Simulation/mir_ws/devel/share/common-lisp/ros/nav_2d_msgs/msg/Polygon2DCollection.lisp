; Auto-generated. Do not edit!


(cl:in-package nav_2d_msgs-msg)


;//! \htmlinclude Polygon2DCollection.msg.html

(cl:defclass <Polygon2DCollection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (polygons
    :reader polygons
    :initarg :polygons
    :type (cl:vector nav_2d_msgs-msg:ComplexPolygon2D)
   :initform (cl:make-array 0 :element-type 'nav_2d_msgs-msg:ComplexPolygon2D :initial-element (cl:make-instance 'nav_2d_msgs-msg:ComplexPolygon2D)))
   (colors
    :reader colors
    :initarg :colors
    :type (cl:vector std_msgs-msg:ColorRGBA)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:ColorRGBA :initial-element (cl:make-instance 'std_msgs-msg:ColorRGBA))))
)

(cl:defclass Polygon2DCollection (<Polygon2DCollection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Polygon2DCollection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Polygon2DCollection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_2d_msgs-msg:<Polygon2DCollection> is deprecated: use nav_2d_msgs-msg:Polygon2DCollection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Polygon2DCollection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:header-val is deprecated.  Use nav_2d_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'polygons-val :lambda-list '(m))
(cl:defmethod polygons-val ((m <Polygon2DCollection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:polygons-val is deprecated.  Use nav_2d_msgs-msg:polygons instead.")
  (polygons m))

(cl:ensure-generic-function 'colors-val :lambda-list '(m))
(cl:defmethod colors-val ((m <Polygon2DCollection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:colors-val is deprecated.  Use nav_2d_msgs-msg:colors instead.")
  (colors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Polygon2DCollection>) ostream)
  "Serializes a message object of type '<Polygon2DCollection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygons))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'colors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'colors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Polygon2DCollection>) istream)
  "Deserializes a message object of type '<Polygon2DCollection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'nav_2d_msgs-msg:ComplexPolygon2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'colors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'colors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:ColorRGBA))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Polygon2DCollection>)))
  "Returns string type for a message object of type '<Polygon2DCollection>"
  "nav_2d_msgs/Polygon2DCollection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Polygon2DCollection)))
  "Returns string type for a message object of type 'Polygon2DCollection"
  "nav_2d_msgs/Polygon2DCollection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Polygon2DCollection>)))
  "Returns md5sum for a message object of type '<Polygon2DCollection>"
  "a0186b831cfbcfeafd72a58884a4efe9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Polygon2DCollection)))
  "Returns md5sum for a message object of type 'Polygon2DCollection"
  "a0186b831cfbcfeafd72a58884a4efe9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Polygon2DCollection>)))
  "Returns full string definition for message of type '<Polygon2DCollection>"
  (cl:format cl:nil "# Primarily used for visualization~%# Colors are optional~%std_msgs/Header header~%ComplexPolygon2D[] polygons~%std_msgs/ColorRGBA[] colors~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_2d_msgs/ComplexPolygon2D~%# Representation for a non-simple polygon, i.e. one with holes~%Polygon2D outer    # The outer perimeter~%Polygon2D[] inner  # The perimeter of any inner holes~%~%================================================================================~%MSG: nav_2d_msgs/Polygon2D~%Point2D[] points~%~%================================================================================~%MSG: nav_2d_msgs/Point2D~%float64 x~%float64 y~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Polygon2DCollection)))
  "Returns full string definition for message of type 'Polygon2DCollection"
  (cl:format cl:nil "# Primarily used for visualization~%# Colors are optional~%std_msgs/Header header~%ComplexPolygon2D[] polygons~%std_msgs/ColorRGBA[] colors~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_2d_msgs/ComplexPolygon2D~%# Representation for a non-simple polygon, i.e. one with holes~%Polygon2D outer    # The outer perimeter~%Polygon2D[] inner  # The perimeter of any inner holes~%~%================================================================================~%MSG: nav_2d_msgs/Polygon2D~%Point2D[] points~%~%================================================================================~%MSG: nav_2d_msgs/Point2D~%float64 x~%float64 y~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Polygon2DCollection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'colors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Polygon2DCollection>))
  "Converts a ROS message object to a list"
  (cl:list 'Polygon2DCollection
    (cl:cons ':header (header msg))
    (cl:cons ':polygons (polygons msg))
    (cl:cons ':colors (colors msg))
))
