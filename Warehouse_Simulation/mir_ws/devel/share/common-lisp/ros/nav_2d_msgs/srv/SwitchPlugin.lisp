; Auto-generated. Do not edit!


(cl:in-package nav_2d_msgs-srv)


;//! \htmlinclude SwitchPlugin-request.msg.html

(cl:defclass <SwitchPlugin-request> (roslisp-msg-protocol:ros-message)
  ((new_plugin
    :reader new_plugin
    :initarg :new_plugin
    :type cl:string
    :initform ""))
)

(cl:defclass SwitchPlugin-request (<SwitchPlugin-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchPlugin-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchPlugin-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_2d_msgs-srv:<SwitchPlugin-request> is deprecated: use nav_2d_msgs-srv:SwitchPlugin-request instead.")))

(cl:ensure-generic-function 'new_plugin-val :lambda-list '(m))
(cl:defmethod new_plugin-val ((m <SwitchPlugin-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-srv:new_plugin-val is deprecated.  Use nav_2d_msgs-srv:new_plugin instead.")
  (new_plugin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchPlugin-request>) ostream)
  "Serializes a message object of type '<SwitchPlugin-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'new_plugin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'new_plugin))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchPlugin-request>) istream)
  "Deserializes a message object of type '<SwitchPlugin-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'new_plugin) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'new_plugin) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchPlugin-request>)))
  "Returns string type for a service object of type '<SwitchPlugin-request>"
  "nav_2d_msgs/SwitchPluginRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchPlugin-request)))
  "Returns string type for a service object of type 'SwitchPlugin-request"
  "nav_2d_msgs/SwitchPluginRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchPlugin-request>)))
  "Returns md5sum for a message object of type '<SwitchPlugin-request>"
  "7e1da0f37c644e038a68b98eee3fb836")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchPlugin-request)))
  "Returns md5sum for a message object of type 'SwitchPlugin-request"
  "7e1da0f37c644e038a68b98eee3fb836")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchPlugin-request>)))
  "Returns full string definition for message of type '<SwitchPlugin-request>"
  (cl:format cl:nil "string new_plugin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchPlugin-request)))
  "Returns full string definition for message of type 'SwitchPlugin-request"
  (cl:format cl:nil "string new_plugin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchPlugin-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'new_plugin))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchPlugin-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchPlugin-request
    (cl:cons ':new_plugin (new_plugin msg))
))
;//! \htmlinclude SwitchPlugin-response.msg.html

(cl:defclass <SwitchPlugin-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SwitchPlugin-response (<SwitchPlugin-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchPlugin-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchPlugin-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_2d_msgs-srv:<SwitchPlugin-response> is deprecated: use nav_2d_msgs-srv:SwitchPlugin-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SwitchPlugin-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-srv:success-val is deprecated.  Use nav_2d_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SwitchPlugin-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-srv:message-val is deprecated.  Use nav_2d_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchPlugin-response>) ostream)
  "Serializes a message object of type '<SwitchPlugin-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchPlugin-response>) istream)
  "Deserializes a message object of type '<SwitchPlugin-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchPlugin-response>)))
  "Returns string type for a service object of type '<SwitchPlugin-response>"
  "nav_2d_msgs/SwitchPluginResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchPlugin-response)))
  "Returns string type for a service object of type 'SwitchPlugin-response"
  "nav_2d_msgs/SwitchPluginResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchPlugin-response>)))
  "Returns md5sum for a message object of type '<SwitchPlugin-response>"
  "7e1da0f37c644e038a68b98eee3fb836")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchPlugin-response)))
  "Returns md5sum for a message object of type 'SwitchPlugin-response"
  "7e1da0f37c644e038a68b98eee3fb836")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchPlugin-response>)))
  "Returns full string definition for message of type '<SwitchPlugin-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchPlugin-response)))
  "Returns full string definition for message of type 'SwitchPlugin-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchPlugin-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchPlugin-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchPlugin-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SwitchPlugin)))
  'SwitchPlugin-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SwitchPlugin)))
  'SwitchPlugin-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchPlugin)))
  "Returns string type for a service object of type '<SwitchPlugin>"
  "nav_2d_msgs/SwitchPlugin")