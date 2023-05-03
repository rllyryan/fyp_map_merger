; Auto-generated. Do not edit!


(cl:in-package nav_2d_msgs-msg)


;//! \htmlinclude UIntBounds.msg.html

(cl:defclass <UIntBounds> (roslisp-msg-protocol:ros-message)
  ((min_x
    :reader min_x
    :initarg :min_x
    :type cl:integer
    :initform 0)
   (min_y
    :reader min_y
    :initarg :min_y
    :type cl:integer
    :initform 0)
   (max_x
    :reader max_x
    :initarg :max_x
    :type cl:integer
    :initform 0)
   (max_y
    :reader max_y
    :initarg :max_y
    :type cl:integer
    :initform 0))
)

(cl:defclass UIntBounds (<UIntBounds>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UIntBounds>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UIntBounds)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_2d_msgs-msg:<UIntBounds> is deprecated: use nav_2d_msgs-msg:UIntBounds instead.")))

(cl:ensure-generic-function 'min_x-val :lambda-list '(m))
(cl:defmethod min_x-val ((m <UIntBounds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:min_x-val is deprecated.  Use nav_2d_msgs-msg:min_x instead.")
  (min_x m))

(cl:ensure-generic-function 'min_y-val :lambda-list '(m))
(cl:defmethod min_y-val ((m <UIntBounds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:min_y-val is deprecated.  Use nav_2d_msgs-msg:min_y instead.")
  (min_y m))

(cl:ensure-generic-function 'max_x-val :lambda-list '(m))
(cl:defmethod max_x-val ((m <UIntBounds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:max_x-val is deprecated.  Use nav_2d_msgs-msg:max_x instead.")
  (max_x m))

(cl:ensure-generic-function 'max_y-val :lambda-list '(m))
(cl:defmethod max_y-val ((m <UIntBounds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:max_y-val is deprecated.  Use nav_2d_msgs-msg:max_y instead.")
  (max_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UIntBounds>) ostream)
  "Serializes a message object of type '<UIntBounds>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'min_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'min_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'min_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'min_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'min_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'min_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'max_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'max_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'max_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'max_y)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UIntBounds>) istream)
  "Deserializes a message object of type '<UIntBounds>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'min_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'min_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'min_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'min_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'min_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'min_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'max_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'max_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'max_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'max_y)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UIntBounds>)))
  "Returns string type for a message object of type '<UIntBounds>"
  "nav_2d_msgs/UIntBounds")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UIntBounds)))
  "Returns string type for a message object of type 'UIntBounds"
  "nav_2d_msgs/UIntBounds")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UIntBounds>)))
  "Returns md5sum for a message object of type '<UIntBounds>"
  "32cc77a889ecfebef439f3192db73e63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UIntBounds)))
  "Returns md5sum for a message object of type 'UIntBounds"
  "32cc77a889ecfebef439f3192db73e63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UIntBounds>)))
  "Returns full string definition for message of type '<UIntBounds>"
  (cl:format cl:nil "# Bounds are inclusive~%uint32 min_x~%uint32 min_y~%uint32 max_x~%uint32 max_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UIntBounds)))
  "Returns full string definition for message of type 'UIntBounds"
  (cl:format cl:nil "# Bounds are inclusive~%uint32 min_x~%uint32 min_y~%uint32 max_x~%uint32 max_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UIntBounds>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UIntBounds>))
  "Converts a ROS message object to a list"
  (cl:list 'UIntBounds
    (cl:cons ':min_x (min_x msg))
    (cl:cons ':min_y (min_y msg))
    (cl:cons ':max_x (max_x msg))
    (cl:cons ':max_y (max_y msg))
))
