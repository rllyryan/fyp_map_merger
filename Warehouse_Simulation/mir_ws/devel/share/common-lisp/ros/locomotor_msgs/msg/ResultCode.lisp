; Auto-generated. Do not edit!


(cl:in-package locomotor_msgs-msg)


;//! \htmlinclude ResultCode.msg.html

(cl:defclass <ResultCode> (roslisp-msg-protocol:ros-message)
  ((component
    :reader component
    :initarg :component
    :type cl:integer
    :initform 0)
   (result_code
    :reader result_code
    :initarg :result_code
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ResultCode (<ResultCode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResultCode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResultCode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name locomotor_msgs-msg:<ResultCode> is deprecated: use locomotor_msgs-msg:ResultCode instead.")))

(cl:ensure-generic-function 'component-val :lambda-list '(m))
(cl:defmethod component-val ((m <ResultCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locomotor_msgs-msg:component-val is deprecated.  Use locomotor_msgs-msg:component instead.")
  (component m))

(cl:ensure-generic-function 'result_code-val :lambda-list '(m))
(cl:defmethod result_code-val ((m <ResultCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locomotor_msgs-msg:result_code-val is deprecated.  Use locomotor_msgs-msg:result_code instead.")
  (result_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ResultCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locomotor_msgs-msg:message-val is deprecated.  Use locomotor_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ResultCode>)))
    "Constants for message type '<ResultCode>"
  '((:GLOBAL_COSTMAP . 1)
    (:LOCAL_COSTMAP . 2)
    (:GLOBAL_PLANNER . 4)
    (:LOCAL_PLANNER . 8)
    (:GENERIC_COSTMAP . 0)
    (:COSTMAP_SAFETY . 1)
    (:COSTMAP_DATA_LAG . 2)
    (:GENERIC_PLANNER . 3)
    (:GENERIC_GLOBAL_PLANNER . 4)
    (:INVALID_START . 5)
    (:START_BOUNDS . 6)
    (:OCCUPIED_START . 7)
    (:INVALID_GOAL . 8)
    (:GOAL_BOUNDS . 9)
    (:OCCUPIED_GOAL . 10)
    (:NO_GLOBAL_PATH . 11)
    (:GLOBAL_PLANNER_TIMEOUT . 12)
    (:GENERIC_LOCAL_PLANNER . 13)
    (:ILLEGAL_TRAJECTORY . 14)
    (:NO_LEGAL_TRAJECTORIES . 15)
    (:PLANNER_TF . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ResultCode)))
    "Constants for message type 'ResultCode"
  '((:GLOBAL_COSTMAP . 1)
    (:LOCAL_COSTMAP . 2)
    (:GLOBAL_PLANNER . 4)
    (:LOCAL_PLANNER . 8)
    (:GENERIC_COSTMAP . 0)
    (:COSTMAP_SAFETY . 1)
    (:COSTMAP_DATA_LAG . 2)
    (:GENERIC_PLANNER . 3)
    (:GENERIC_GLOBAL_PLANNER . 4)
    (:INVALID_START . 5)
    (:START_BOUNDS . 6)
    (:OCCUPIED_START . 7)
    (:INVALID_GOAL . 8)
    (:GOAL_BOUNDS . 9)
    (:OCCUPIED_GOAL . 10)
    (:NO_GLOBAL_PATH . 11)
    (:GLOBAL_PLANNER_TIMEOUT . 12)
    (:GENERIC_LOCAL_PLANNER . 13)
    (:ILLEGAL_TRAJECTORY . 14)
    (:NO_LEGAL_TRAJECTORIES . 15)
    (:PLANNER_TF . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResultCode>) ostream)
  "Serializes a message object of type '<ResultCode>"
  (cl:let* ((signed (cl:slot-value msg 'component)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'result_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResultCode>) istream)
  "Deserializes a message object of type '<ResultCode>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'component) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResultCode>)))
  "Returns string type for a message object of type '<ResultCode>"
  "locomotor_msgs/ResultCode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResultCode)))
  "Returns string type for a message object of type 'ResultCode"
  "locomotor_msgs/ResultCode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResultCode>)))
  "Returns md5sum for a message object of type '<ResultCode>"
  "9c162cbf5db9d590e1047c78cbd90371")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResultCode)))
  "Returns md5sum for a message object of type 'ResultCode"
  "9c162cbf5db9d590e1047c78cbd90371")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResultCode>)))
  "Returns full string definition for message of type '<ResultCode>"
  (cl:format cl:nil "# This message contains three separate pieces.~%#    A) A code indicating which component(s) the error originates from (bitmask style)~%#    B) A code corresponding with the result_code defined in nav_core2/s.h~%#    C) A freeform string message~%~%# The enumerations below are not necessarily the exclusive values for the codes.~%# Others may implement additional values beyond the ones shown, using custom state machines.~%~%########### Component Values ###############################################~%int32 GLOBAL_COSTMAP = 1~%int32  LOCAL_COSTMAP = 2~%int32 GLOBAL_PLANNER = 4~%int32  LOCAL_PLANNER = 8~%~%########### Result Codes ###################################################~%int32 GENERIC_COSTMAP=0~%int32 COSTMAP_SAFETY=1~%int32 COSTMAP_DATA_LAG=2~%int32 GENERIC_PLANNER=3~%int32 GENERIC_GLOBAL_PLANNER=4~%int32 INVALID_START=5~%int32 START_BOUNDS=6~%int32 OCCUPIED_START=7~%int32 INVALID_GOAL=8~%int32 GOAL_BOUNDS=9~%int32 OCCUPIED_GOAL=10~%int32 NO_GLOBAL_PATH=11~%int32 GLOBAL_PLANNER_TIMEOUT=12~%int32 GENERIC_LOCAL_PLANNER=13~%int32 ILLEGAL_TRAJECTORY=14~%int32 NO_LEGAL_TRAJECTORIES=15~%int32 PLANNER_TF=16~%~%########### Actual Data ####################################################~%int32 component~%int32 result_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResultCode)))
  "Returns full string definition for message of type 'ResultCode"
  (cl:format cl:nil "# This message contains three separate pieces.~%#    A) A code indicating which component(s) the error originates from (bitmask style)~%#    B) A code corresponding with the result_code defined in nav_core2/s.h~%#    C) A freeform string message~%~%# The enumerations below are not necessarily the exclusive values for the codes.~%# Others may implement additional values beyond the ones shown, using custom state machines.~%~%########### Component Values ###############################################~%int32 GLOBAL_COSTMAP = 1~%int32  LOCAL_COSTMAP = 2~%int32 GLOBAL_PLANNER = 4~%int32  LOCAL_PLANNER = 8~%~%########### Result Codes ###################################################~%int32 GENERIC_COSTMAP=0~%int32 COSTMAP_SAFETY=1~%int32 COSTMAP_DATA_LAG=2~%int32 GENERIC_PLANNER=3~%int32 GENERIC_GLOBAL_PLANNER=4~%int32 INVALID_START=5~%int32 START_BOUNDS=6~%int32 OCCUPIED_START=7~%int32 INVALID_GOAL=8~%int32 GOAL_BOUNDS=9~%int32 OCCUPIED_GOAL=10~%int32 NO_GLOBAL_PATH=11~%int32 GLOBAL_PLANNER_TIMEOUT=12~%int32 GENERIC_LOCAL_PLANNER=13~%int32 ILLEGAL_TRAJECTORY=14~%int32 NO_LEGAL_TRAJECTORIES=15~%int32 PLANNER_TF=16~%~%########### Actual Data ####################################################~%int32 component~%int32 result_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResultCode>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResultCode>))
  "Converts a ROS message object to a list"
  (cl:list 'ResultCode
    (cl:cons ':component (component msg))
    (cl:cons ':result_code (result_code msg))
    (cl:cons ':message (message msg))
))
