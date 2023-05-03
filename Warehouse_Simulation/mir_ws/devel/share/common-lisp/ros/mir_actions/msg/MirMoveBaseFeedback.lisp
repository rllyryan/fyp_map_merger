; Auto-generated. Do not edit!


(cl:in-package mir_actions-msg)


;//! \htmlinclude MirMoveBaseFeedback.msg.html

(cl:defclass <MirMoveBaseFeedback> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (base_position
    :reader base_position
    :initarg :base_position
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (current_goal
    :reader current_goal
    :initarg :current_goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (dist_to_goal
    :reader dist_to_goal
    :initarg :dist_to_goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (marker_inversion
    :reader marker_inversion
    :initarg :marker_inversion
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MirMoveBaseFeedback (<MirMoveBaseFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MirMoveBaseFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MirMoveBaseFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_actions-msg:<MirMoveBaseFeedback> is deprecated: use mir_actions-msg:MirMoveBaseFeedback instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <MirMoveBaseFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:state-val is deprecated.  Use mir_actions-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'base_position-val :lambda-list '(m))
(cl:defmethod base_position-val ((m <MirMoveBaseFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:base_position-val is deprecated.  Use mir_actions-msg:base_position instead.")
  (base_position m))

(cl:ensure-generic-function 'current_goal-val :lambda-list '(m))
(cl:defmethod current_goal-val ((m <MirMoveBaseFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:current_goal-val is deprecated.  Use mir_actions-msg:current_goal instead.")
  (current_goal m))

(cl:ensure-generic-function 'dist_to_goal-val :lambda-list '(m))
(cl:defmethod dist_to_goal-val ((m <MirMoveBaseFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:dist_to_goal-val is deprecated.  Use mir_actions-msg:dist_to_goal instead.")
  (dist_to_goal m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MirMoveBaseFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:pose-val is deprecated.  Use mir_actions-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'marker_inversion-val :lambda-list '(m))
(cl:defmethod marker_inversion-val ((m <MirMoveBaseFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:marker_inversion-val is deprecated.  Use mir_actions-msg:marker_inversion instead.")
  (marker_inversion m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MirMoveBaseFeedback>)))
    "Constants for message type '<MirMoveBaseFeedback>"
  '((:NOT_READY . -1)
    (:PLANNING . 0)
    (:CONTROLLING . 1)
    (:CLEARING . 2)
    (:DOCKING . 3)
    (:COLLISION . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MirMoveBaseFeedback)))
    "Constants for message type 'MirMoveBaseFeedback"
  '((:NOT_READY . -1)
    (:PLANNING . 0)
    (:CONTROLLING . 1)
    (:CLEARING . 2)
    (:DOCKING . 3)
    (:COLLISION . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MirMoveBaseFeedback>) ostream)
  "Serializes a message object of type '<MirMoveBaseFeedback>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dist_to_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'marker_inversion) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MirMoveBaseFeedback>) istream)
  "Deserializes a message object of type '<MirMoveBaseFeedback>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dist_to_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:slot-value msg 'marker_inversion) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MirMoveBaseFeedback>)))
  "Returns string type for a message object of type '<MirMoveBaseFeedback>"
  "mir_actions/MirMoveBaseFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MirMoveBaseFeedback)))
  "Returns string type for a message object of type 'MirMoveBaseFeedback"
  "mir_actions/MirMoveBaseFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MirMoveBaseFeedback>)))
  "Returns md5sum for a message object of type '<MirMoveBaseFeedback>"
  "21813e475f136e507c907218957f4df9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MirMoveBaseFeedback)))
  "Returns md5sum for a message object of type 'MirMoveBaseFeedback"
  "21813e475f136e507c907218957f4df9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MirMoveBaseFeedback>)))
  "Returns full string definition for message of type '<MirMoveBaseFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%#shared~%int8 NOT_READY = -1~%~%#global move states~%int8 PLANNING = 0~%int8 CONTROLLING = 1~%int8 CLEARING = 2~%~%#relative move states~%int8 DOCKING = 3~%int8 COLLISION = 4~%~%#shared feedback~%int8 state~%~%#global move feedback~%geometry_msgs/PoseStamped base_position~%~%#relative move feedback~%geometry_msgs/PoseStamped current_goal~%geometry_msgs/PoseStamped dist_to_goal~%~%#docking move feedback~%#int8 DOCKING = 0~%#int8 COLLISION = 1~%#int8 state~%geometry_msgs/Pose2D pose~%bool marker_inversion~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MirMoveBaseFeedback)))
  "Returns full string definition for message of type 'MirMoveBaseFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%#shared~%int8 NOT_READY = -1~%~%#global move states~%int8 PLANNING = 0~%int8 CONTROLLING = 1~%int8 CLEARING = 2~%~%#relative move states~%int8 DOCKING = 3~%int8 COLLISION = 4~%~%#shared feedback~%int8 state~%~%#global move feedback~%geometry_msgs/PoseStamped base_position~%~%#relative move feedback~%geometry_msgs/PoseStamped current_goal~%geometry_msgs/PoseStamped dist_to_goal~%~%#docking move feedback~%#int8 DOCKING = 0~%#int8 COLLISION = 1~%#int8 state~%geometry_msgs/Pose2D pose~%bool marker_inversion~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MirMoveBaseFeedback>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dist_to_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MirMoveBaseFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'MirMoveBaseFeedback
    (cl:cons ':state (state msg))
    (cl:cons ':base_position (base_position msg))
    (cl:cons ':current_goal (current_goal msg))
    (cl:cons ':dist_to_goal (dist_to_goal msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':marker_inversion (marker_inversion msg))
))
