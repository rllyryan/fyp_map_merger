; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude PrecisionDockingStatus.msg.html

(cl:defclass <PrecisionDockingStatus> (roslisp-msg-protocol:ros-message)
  ((connected
    :reader connected
    :initarg :connected
    :type cl:boolean
    :initform cl:nil)
   (motor_forward
    :reader motor_forward
    :initarg :motor_forward
    :type cl:boolean
    :initform cl:nil)
   (motor_back
    :reader motor_back
    :initarg :motor_back
    :type cl:boolean
    :initform cl:nil)
   (left_docking
    :reader left_docking
    :initarg :left_docking
    :type cl:boolean
    :initform cl:nil)
   (right_docking
    :reader right_docking
    :initarg :right_docking
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PrecisionDockingStatus (<PrecisionDockingStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrecisionDockingStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrecisionDockingStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<PrecisionDockingStatus> is deprecated: use mir_msgs-msg:PrecisionDockingStatus instead.")))

(cl:ensure-generic-function 'connected-val :lambda-list '(m))
(cl:defmethod connected-val ((m <PrecisionDockingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:connected-val is deprecated.  Use mir_msgs-msg:connected instead.")
  (connected m))

(cl:ensure-generic-function 'motor_forward-val :lambda-list '(m))
(cl:defmethod motor_forward-val ((m <PrecisionDockingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:motor_forward-val is deprecated.  Use mir_msgs-msg:motor_forward instead.")
  (motor_forward m))

(cl:ensure-generic-function 'motor_back-val :lambda-list '(m))
(cl:defmethod motor_back-val ((m <PrecisionDockingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:motor_back-val is deprecated.  Use mir_msgs-msg:motor_back instead.")
  (motor_back m))

(cl:ensure-generic-function 'left_docking-val :lambda-list '(m))
(cl:defmethod left_docking-val ((m <PrecisionDockingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:left_docking-val is deprecated.  Use mir_msgs-msg:left_docking instead.")
  (left_docking m))

(cl:ensure-generic-function 'right_docking-val :lambda-list '(m))
(cl:defmethod right_docking-val ((m <PrecisionDockingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:right_docking-val is deprecated.  Use mir_msgs-msg:right_docking instead.")
  (right_docking m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrecisionDockingStatus>) ostream)
  "Serializes a message object of type '<PrecisionDockingStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_forward) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_back) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_docking) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_docking) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrecisionDockingStatus>) istream)
  "Deserializes a message object of type '<PrecisionDockingStatus>"
    (cl:setf (cl:slot-value msg 'connected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'motor_forward) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'motor_back) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'left_docking) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_docking) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrecisionDockingStatus>)))
  "Returns string type for a message object of type '<PrecisionDockingStatus>"
  "mir_msgs/PrecisionDockingStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrecisionDockingStatus)))
  "Returns string type for a message object of type 'PrecisionDockingStatus"
  "mir_msgs/PrecisionDockingStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrecisionDockingStatus>)))
  "Returns md5sum for a message object of type '<PrecisionDockingStatus>"
  "17548d8189172ef51cde6fef0830938f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrecisionDockingStatus)))
  "Returns md5sum for a message object of type 'PrecisionDockingStatus"
  "17548d8189172ef51cde6fef0830938f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrecisionDockingStatus>)))
  "Returns full string definition for message of type '<PrecisionDockingStatus>"
  (cl:format cl:nil "bool connected~%bool motor_forward~%bool motor_back~%bool left_docking~%bool right_docking~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrecisionDockingStatus)))
  "Returns full string definition for message of type 'PrecisionDockingStatus"
  (cl:format cl:nil "bool connected~%bool motor_forward~%bool motor_back~%bool left_docking~%bool right_docking~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrecisionDockingStatus>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrecisionDockingStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'PrecisionDockingStatus
    (cl:cons ':connected (connected msg))
    (cl:cons ':motor_forward (motor_forward msg))
    (cl:cons ':motor_back (motor_back msg))
    (cl:cons ':left_docking (left_docking msg))
    (cl:cons ':right_docking (right_docking msg))
))
