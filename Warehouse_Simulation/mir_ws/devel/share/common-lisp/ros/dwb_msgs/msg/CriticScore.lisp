; Auto-generated. Do not edit!


(cl:in-package dwb_msgs-msg)


;//! \htmlinclude CriticScore.msg.html

(cl:defclass <CriticScore> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (raw_score
    :reader raw_score
    :initarg :raw_score
    :type cl:float
    :initform 0.0)
   (scale
    :reader scale
    :initarg :scale
    :type cl:float
    :initform 0.0))
)

(cl:defclass CriticScore (<CriticScore>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CriticScore>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CriticScore)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwb_msgs-msg:<CriticScore> is deprecated: use dwb_msgs-msg:CriticScore instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <CriticScore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-msg:name-val is deprecated.  Use dwb_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'raw_score-val :lambda-list '(m))
(cl:defmethod raw_score-val ((m <CriticScore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-msg:raw_score-val is deprecated.  Use dwb_msgs-msg:raw_score instead.")
  (raw_score m))

(cl:ensure-generic-function 'scale-val :lambda-list '(m))
(cl:defmethod scale-val ((m <CriticScore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-msg:scale-val is deprecated.  Use dwb_msgs-msg:scale instead.")
  (scale m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CriticScore>) ostream)
  "Serializes a message object of type '<CriticScore>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'raw_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CriticScore>) istream)
  "Deserializes a message object of type '<CriticScore>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'raw_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scale) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CriticScore>)))
  "Returns string type for a message object of type '<CriticScore>"
  "dwb_msgs/CriticScore")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CriticScore)))
  "Returns string type for a message object of type 'CriticScore"
  "dwb_msgs/CriticScore")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CriticScore>)))
  "Returns md5sum for a message object of type '<CriticScore>"
  "442332720f7b0ede3653c34ceeb74662")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CriticScore)))
  "Returns md5sum for a message object of type 'CriticScore"
  "442332720f7b0ede3653c34ceeb74662")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CriticScore>)))
  "Returns full string definition for message of type '<CriticScore>"
  (cl:format cl:nil "# The result from one critic scoring a Twist.~%# Name of the critic~%string name~%# Score for the critic, not multiplied by the scale~%float32 raw_score~%# Scale for the critic, multiplied by the raw_score and added to the total score~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CriticScore)))
  "Returns full string definition for message of type 'CriticScore"
  (cl:format cl:nil "# The result from one critic scoring a Twist.~%# Name of the critic~%string name~%# Score for the critic, not multiplied by the scale~%float32 raw_score~%# Scale for the critic, multiplied by the raw_score and added to the total score~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CriticScore>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CriticScore>))
  "Converts a ROS message object to a list"
  (cl:list 'CriticScore
    (cl:cons ':name (name msg))
    (cl:cons ':raw_score (raw_score msg))
    (cl:cons ':scale (scale msg))
))
