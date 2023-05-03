; Auto-generated. Do not edit!


(cl:in-package mir_actions-msg)


;//! \htmlinclude MirMoveBaseResult.msg.html

(cl:defclass <MirMoveBaseResult> (roslisp-msg-protocol:ros-message)
  ((end_state
    :reader end_state
    :initarg :end_state
    :type cl:fixnum
    :initform 0)
   (end_pose
    :reader end_pose
    :initarg :end_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass MirMoveBaseResult (<MirMoveBaseResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MirMoveBaseResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MirMoveBaseResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_actions-msg:<MirMoveBaseResult> is deprecated: use mir_actions-msg:MirMoveBaseResult instead.")))

(cl:ensure-generic-function 'end_state-val :lambda-list '(m))
(cl:defmethod end_state-val ((m <MirMoveBaseResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:end_state-val is deprecated.  Use mir_actions-msg:end_state instead.")
  (end_state m))

(cl:ensure-generic-function 'end_pose-val :lambda-list '(m))
(cl:defmethod end_pose-val ((m <MirMoveBaseResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:end_pose-val is deprecated.  Use mir_actions-msg:end_pose instead.")
  (end_pose m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MirMoveBaseResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:pose-val is deprecated.  Use mir_actions-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MirMoveBaseResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:message-val is deprecated.  Use mir_actions-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MirMoveBaseResult>)))
    "Constants for message type '<MirMoveBaseResult>"
  '((:UNDEFINED . 0)
    (:GOAL_REACHED . 1)
    (:FAILED . -1)
    (:MARKER_VISIBLE . 2)
    (:FAILED_NO_PATH . -2)
    (:FAILED_GOAL_IN_STATIC_OBSTACLE . -3)
    (:FAILED_GOAL_IN_FORBIDDEN_AREA . -4)
    (:FAILED_GOAL_IN_DYNAMIC_OBSTACLE . -5)
    (:FAILED_ROBOT_IN_COLLISION . -6)
    (:FAILED_ROBOT_IN_FORBIDDEN_AREA . -7)
    (:FAILED_UNKNOWN_TRAILER . -8)
    (:FAILED_TO_PASS_GLOBAL_PLAN . -9)
    (:FAILED_NO_VALID_RECOVERY_CONTROL . -10)
    (:FAILED_UNKNOWN_PLANNER_ERROR . -11)
    (:FAILED_ROBOT_OSCILLATING . -12)
    (:FAILED_SOFTWARE_ERROR . -13)
    (:FAILED_TIMEOUT . -14)
    (:FAILED_COLLISION . -15)
    (:INVALID_GOAL . -16)
    (:FAILED_MARKER_TRACKING_ERROR . -17))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MirMoveBaseResult)))
    "Constants for message type 'MirMoveBaseResult"
  '((:UNDEFINED . 0)
    (:GOAL_REACHED . 1)
    (:FAILED . -1)
    (:MARKER_VISIBLE . 2)
    (:FAILED_NO_PATH . -2)
    (:FAILED_GOAL_IN_STATIC_OBSTACLE . -3)
    (:FAILED_GOAL_IN_FORBIDDEN_AREA . -4)
    (:FAILED_GOAL_IN_DYNAMIC_OBSTACLE . -5)
    (:FAILED_ROBOT_IN_COLLISION . -6)
    (:FAILED_ROBOT_IN_FORBIDDEN_AREA . -7)
    (:FAILED_UNKNOWN_TRAILER . -8)
    (:FAILED_TO_PASS_GLOBAL_PLAN . -9)
    (:FAILED_NO_VALID_RECOVERY_CONTROL . -10)
    (:FAILED_UNKNOWN_PLANNER_ERROR . -11)
    (:FAILED_ROBOT_OSCILLATING . -12)
    (:FAILED_SOFTWARE_ERROR . -13)
    (:FAILED_TIMEOUT . -14)
    (:FAILED_COLLISION . -15)
    (:INVALID_GOAL . -16)
    (:FAILED_MARKER_TRACKING_ERROR . -17))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MirMoveBaseResult>) ostream)
  "Serializes a message object of type '<MirMoveBaseResult>"
  (cl:let* ((signed (cl:slot-value msg 'end_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MirMoveBaseResult>) istream)
  "Deserializes a message object of type '<MirMoveBaseResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_state) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MirMoveBaseResult>)))
  "Returns string type for a message object of type '<MirMoveBaseResult>"
  "mir_actions/MirMoveBaseResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MirMoveBaseResult)))
  "Returns string type for a message object of type 'MirMoveBaseResult"
  "mir_actions/MirMoveBaseResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MirMoveBaseResult>)))
  "Returns md5sum for a message object of type '<MirMoveBaseResult>"
  "e54c1567292aca96a9941233d552b908")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MirMoveBaseResult)))
  "Returns md5sum for a message object of type 'MirMoveBaseResult"
  "e54c1567292aca96a9941233d552b908")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MirMoveBaseResult>)))
  "Returns full string definition for message of type '<MirMoveBaseResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%~%#shared states~%int16 UNDEFINED = 0~%int16 GOAL_REACHED = 1~%int16 FAILED = -1~%~%#global move states~%int16 MARKER_VISIBLE = 2~%int16 FAILED_NO_PATH = -2~%int16 FAILED_GOAL_IN_STATIC_OBSTACLE = -3~%int16 FAILED_GOAL_IN_FORBIDDEN_AREA = -4~%int16 FAILED_GOAL_IN_DYNAMIC_OBSTACLE = -5~%int16 FAILED_ROBOT_IN_COLLISION = -6~%int16 FAILED_ROBOT_IN_FORBIDDEN_AREA = -7~%int16 FAILED_UNKNOWN_TRAILER = -8~%int16 FAILED_TO_PASS_GLOBAL_PLAN = -9~%int16 FAILED_NO_VALID_RECOVERY_CONTROL = -10~%int16 FAILED_UNKNOWN_PLANNER_ERROR = -11~%int16 FAILED_ROBOT_OSCILLATING = -12~%int16 FAILED_SOFTWARE_ERROR = -13~%~%#relative move states~%int16 FAILED_TIMEOUT = -14~%int16 FAILED_COLLISION = -15~%int16 INVALID_GOAL = -16~%~%#docking move states~%int16 FAILED_MARKER_TRACKING_ERROR = -17~%~%#shared results~%int16 end_state~%geometry_msgs/PoseStamped end_pose~%~%#docking results~%geometry_msgs/Pose2D pose~%~%#feedback for UI~%string message~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MirMoveBaseResult)))
  "Returns full string definition for message of type 'MirMoveBaseResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%~%#shared states~%int16 UNDEFINED = 0~%int16 GOAL_REACHED = 1~%int16 FAILED = -1~%~%#global move states~%int16 MARKER_VISIBLE = 2~%int16 FAILED_NO_PATH = -2~%int16 FAILED_GOAL_IN_STATIC_OBSTACLE = -3~%int16 FAILED_GOAL_IN_FORBIDDEN_AREA = -4~%int16 FAILED_GOAL_IN_DYNAMIC_OBSTACLE = -5~%int16 FAILED_ROBOT_IN_COLLISION = -6~%int16 FAILED_ROBOT_IN_FORBIDDEN_AREA = -7~%int16 FAILED_UNKNOWN_TRAILER = -8~%int16 FAILED_TO_PASS_GLOBAL_PLAN = -9~%int16 FAILED_NO_VALID_RECOVERY_CONTROL = -10~%int16 FAILED_UNKNOWN_PLANNER_ERROR = -11~%int16 FAILED_ROBOT_OSCILLATING = -12~%int16 FAILED_SOFTWARE_ERROR = -13~%~%#relative move states~%int16 FAILED_TIMEOUT = -14~%int16 FAILED_COLLISION = -15~%int16 INVALID_GOAL = -16~%~%#docking move states~%int16 FAILED_MARKER_TRACKING_ERROR = -17~%~%#shared results~%int16 end_state~%geometry_msgs/PoseStamped end_pose~%~%#docking results~%geometry_msgs/Pose2D pose~%~%#feedback for UI~%string message~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MirMoveBaseResult>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MirMoveBaseResult>))
  "Converts a ROS message object to a list"
  (cl:list 'MirMoveBaseResult
    (cl:cons ':end_state (end_state msg))
    (cl:cons ':end_pose (end_pose msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':message (message msg))
))
