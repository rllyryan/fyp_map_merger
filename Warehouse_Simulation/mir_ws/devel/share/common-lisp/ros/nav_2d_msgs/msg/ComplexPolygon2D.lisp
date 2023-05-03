; Auto-generated. Do not edit!


(cl:in-package nav_2d_msgs-msg)


;//! \htmlinclude ComplexPolygon2D.msg.html

(cl:defclass <ComplexPolygon2D> (roslisp-msg-protocol:ros-message)
  ((outer
    :reader outer
    :initarg :outer
    :type nav_2d_msgs-msg:Polygon2D
    :initform (cl:make-instance 'nav_2d_msgs-msg:Polygon2D))
   (inner
    :reader inner
    :initarg :inner
    :type (cl:vector nav_2d_msgs-msg:Polygon2D)
   :initform (cl:make-array 0 :element-type 'nav_2d_msgs-msg:Polygon2D :initial-element (cl:make-instance 'nav_2d_msgs-msg:Polygon2D))))
)

(cl:defclass ComplexPolygon2D (<ComplexPolygon2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComplexPolygon2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComplexPolygon2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_2d_msgs-msg:<ComplexPolygon2D> is deprecated: use nav_2d_msgs-msg:ComplexPolygon2D instead.")))

(cl:ensure-generic-function 'outer-val :lambda-list '(m))
(cl:defmethod outer-val ((m <ComplexPolygon2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:outer-val is deprecated.  Use nav_2d_msgs-msg:outer instead.")
  (outer m))

(cl:ensure-generic-function 'inner-val :lambda-list '(m))
(cl:defmethod inner-val ((m <ComplexPolygon2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:inner-val is deprecated.  Use nav_2d_msgs-msg:inner instead.")
  (inner m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComplexPolygon2D>) ostream)
  "Serializes a message object of type '<ComplexPolygon2D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'outer) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'inner))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'inner))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComplexPolygon2D>) istream)
  "Deserializes a message object of type '<ComplexPolygon2D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'outer) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'inner) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'inner)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'nav_2d_msgs-msg:Polygon2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComplexPolygon2D>)))
  "Returns string type for a message object of type '<ComplexPolygon2D>"
  "nav_2d_msgs/ComplexPolygon2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComplexPolygon2D)))
  "Returns string type for a message object of type 'ComplexPolygon2D"
  "nav_2d_msgs/ComplexPolygon2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComplexPolygon2D>)))
  "Returns md5sum for a message object of type '<ComplexPolygon2D>"
  "f93841a14f7caf40d600ff8c62446616")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComplexPolygon2D)))
  "Returns md5sum for a message object of type 'ComplexPolygon2D"
  "f93841a14f7caf40d600ff8c62446616")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComplexPolygon2D>)))
  "Returns full string definition for message of type '<ComplexPolygon2D>"
  (cl:format cl:nil "# Representation for a non-simple polygon, i.e. one with holes~%Polygon2D outer    # The outer perimeter~%Polygon2D[] inner  # The perimeter of any inner holes~%~%================================================================================~%MSG: nav_2d_msgs/Polygon2D~%Point2D[] points~%~%================================================================================~%MSG: nav_2d_msgs/Point2D~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComplexPolygon2D)))
  "Returns full string definition for message of type 'ComplexPolygon2D"
  (cl:format cl:nil "# Representation for a non-simple polygon, i.e. one with holes~%Polygon2D outer    # The outer perimeter~%Polygon2D[] inner  # The perimeter of any inner holes~%~%================================================================================~%MSG: nav_2d_msgs/Polygon2D~%Point2D[] points~%~%================================================================================~%MSG: nav_2d_msgs/Point2D~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComplexPolygon2D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'outer))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'inner) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComplexPolygon2D>))
  "Converts a ROS message object to a list"
  (cl:list 'ComplexPolygon2D
    (cl:cons ':outer (outer msg))
    (cl:cons ':inner (inner msg))
))
