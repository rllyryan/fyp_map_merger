; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude EncoderTestEntry.msg.html

(cl:defclass <EncoderTestEntry> (roslisp-msg-protocol:ros-message)
  ((command_velocity
    :reader command_velocity
    :initarg :command_velocity
    :type cl:float
    :initform 0.0)
   (command_distance
    :reader command_distance
    :initarg :command_distance
    :type cl:float
    :initform 0.0)
   (left_dist
    :reader left_dist
    :initarg :left_dist
    :type cl:float
    :initform 0.0)
   (right_dist
    :reader right_dist
    :initarg :right_dist
    :type cl:float
    :initform 0.0)
   (suggested_direction
    :reader suggested_direction
    :initarg :suggested_direction
    :type cl:string
    :initform "")
   (user_direction
    :reader user_direction
    :initarg :user_direction
    :type cl:string
    :initform ""))
)

(cl:defclass EncoderTestEntry (<EncoderTestEntry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EncoderTestEntry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EncoderTestEntry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<EncoderTestEntry> is deprecated: use mir_msgs-msg:EncoderTestEntry instead.")))

(cl:ensure-generic-function 'command_velocity-val :lambda-list '(m))
(cl:defmethod command_velocity-val ((m <EncoderTestEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:command_velocity-val is deprecated.  Use mir_msgs-msg:command_velocity instead.")
  (command_velocity m))

(cl:ensure-generic-function 'command_distance-val :lambda-list '(m))
(cl:defmethod command_distance-val ((m <EncoderTestEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:command_distance-val is deprecated.  Use mir_msgs-msg:command_distance instead.")
  (command_distance m))

(cl:ensure-generic-function 'left_dist-val :lambda-list '(m))
(cl:defmethod left_dist-val ((m <EncoderTestEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:left_dist-val is deprecated.  Use mir_msgs-msg:left_dist instead.")
  (left_dist m))

(cl:ensure-generic-function 'right_dist-val :lambda-list '(m))
(cl:defmethod right_dist-val ((m <EncoderTestEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:right_dist-val is deprecated.  Use mir_msgs-msg:right_dist instead.")
  (right_dist m))

(cl:ensure-generic-function 'suggested_direction-val :lambda-list '(m))
(cl:defmethod suggested_direction-val ((m <EncoderTestEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:suggested_direction-val is deprecated.  Use mir_msgs-msg:suggested_direction instead.")
  (suggested_direction m))

(cl:ensure-generic-function 'user_direction-val :lambda-list '(m))
(cl:defmethod user_direction-val ((m <EncoderTestEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:user_direction-val is deprecated.  Use mir_msgs-msg:user_direction instead.")
  (user_direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EncoderTestEntry>) ostream)
  "Serializes a message object of type '<EncoderTestEntry>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'command_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'command_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'suggested_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'suggested_direction))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'user_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'user_direction))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EncoderTestEntry>) istream)
  "Deserializes a message object of type '<EncoderTestEntry>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'command_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'command_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_dist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_dist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'suggested_direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'suggested_direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'user_direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'user_direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EncoderTestEntry>)))
  "Returns string type for a message object of type '<EncoderTestEntry>"
  "mir_msgs/EncoderTestEntry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EncoderTestEntry)))
  "Returns string type for a message object of type 'EncoderTestEntry"
  "mir_msgs/EncoderTestEntry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EncoderTestEntry>)))
  "Returns md5sum for a message object of type '<EncoderTestEntry>"
  "cfe8d446cf8b8eaf478f3a59f1f6abdd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EncoderTestEntry)))
  "Returns md5sum for a message object of type 'EncoderTestEntry"
  "cfe8d446cf8b8eaf478f3a59f1f6abdd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EncoderTestEntry>)))
  "Returns full string definition for message of type '<EncoderTestEntry>"
  (cl:format cl:nil "float64 command_velocity~%float64 command_distance~%float64 left_dist~%float64 right_dist~%string suggested_direction~%string user_direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EncoderTestEntry)))
  "Returns full string definition for message of type 'EncoderTestEntry"
  (cl:format cl:nil "float64 command_velocity~%float64 command_distance~%float64 left_dist~%float64 right_dist~%string suggested_direction~%string user_direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EncoderTestEntry>))
  (cl:+ 0
     8
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'suggested_direction))
     4 (cl:length (cl:slot-value msg 'user_direction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EncoderTestEntry>))
  "Converts a ROS message object to a list"
  (cl:list 'EncoderTestEntry
    (cl:cons ':command_velocity (command_velocity msg))
    (cl:cons ':command_distance (command_distance msg))
    (cl:cons ':left_dist (left_dist msg))
    (cl:cons ':right_dist (right_dist msg))
    (cl:cons ':suggested_direction (suggested_direction msg))
    (cl:cons ':user_direction (user_direction msg))
))
