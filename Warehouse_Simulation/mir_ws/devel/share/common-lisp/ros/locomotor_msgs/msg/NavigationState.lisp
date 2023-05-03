; Auto-generated. Do not edit!


(cl:in-package locomotor_msgs-msg)


;//! \htmlinclude NavigationState.msg.html

(cl:defclass <NavigationState> (roslisp-msg-protocol:ros-message)
  ((global_pose
    :reader global_pose
    :initarg :global_pose
    :type nav_2d_msgs-msg:Pose2DStamped
    :initform (cl:make-instance 'nav_2d_msgs-msg:Pose2DStamped))
   (local_pose
    :reader local_pose
    :initarg :local_pose
    :type nav_2d_msgs-msg:Pose2DStamped
    :initform (cl:make-instance 'nav_2d_msgs-msg:Pose2DStamped))
   (goal
    :reader goal
    :initarg :goal
    :type nav_2d_msgs-msg:Pose2DStamped
    :initform (cl:make-instance 'nav_2d_msgs-msg:Pose2DStamped))
   (current_velocity
    :reader current_velocity
    :initarg :current_velocity
    :type nav_2d_msgs-msg:Twist2DStamped
    :initform (cl:make-instance 'nav_2d_msgs-msg:Twist2DStamped))
   (command_velocity
    :reader command_velocity
    :initarg :command_velocity
    :type nav_2d_msgs-msg:Twist2DStamped
    :initform (cl:make-instance 'nav_2d_msgs-msg:Twist2DStamped))
   (global_plan
    :reader global_plan
    :initarg :global_plan
    :type nav_2d_msgs-msg:Path2D
    :initform (cl:make-instance 'nav_2d_msgs-msg:Path2D)))
)

(cl:defclass NavigationState (<NavigationState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name locomotor_msgs-msg:<NavigationState> is deprecated: use locomotor_msgs-msg:NavigationState instead.")))

(cl:ensure-generic-function 'global_pose-val :lambda-list '(m))
(cl:defmethod global_pose-val ((m <NavigationState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locomotor_msgs-msg:global_pose-val is deprecated.  Use locomotor_msgs-msg:global_pose instead.")
  (global_pose m))

(cl:ensure-generic-function 'local_pose-val :lambda-list '(m))
(cl:defmethod local_pose-val ((m <NavigationState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locomotor_msgs-msg:local_pose-val is deprecated.  Use locomotor_msgs-msg:local_pose instead.")
  (local_pose m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <NavigationState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locomotor_msgs-msg:goal-val is deprecated.  Use locomotor_msgs-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'current_velocity-val :lambda-list '(m))
(cl:defmethod current_velocity-val ((m <NavigationState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locomotor_msgs-msg:current_velocity-val is deprecated.  Use locomotor_msgs-msg:current_velocity instead.")
  (current_velocity m))

(cl:ensure-generic-function 'command_velocity-val :lambda-list '(m))
(cl:defmethod command_velocity-val ((m <NavigationState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locomotor_msgs-msg:command_velocity-val is deprecated.  Use locomotor_msgs-msg:command_velocity instead.")
  (command_velocity m))

(cl:ensure-generic-function 'global_plan-val :lambda-list '(m))
(cl:defmethod global_plan-val ((m <NavigationState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locomotor_msgs-msg:global_plan-val is deprecated.  Use locomotor_msgs-msg:global_plan instead.")
  (global_plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationState>) ostream)
  "Serializes a message object of type '<NavigationState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'global_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'local_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'command_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'global_plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationState>) istream)
  "Deserializes a message object of type '<NavigationState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'global_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'local_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'command_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'global_plan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationState>)))
  "Returns string type for a message object of type '<NavigationState>"
  "locomotor_msgs/NavigationState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationState)))
  "Returns string type for a message object of type 'NavigationState"
  "locomotor_msgs/NavigationState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationState>)))
  "Returns md5sum for a message object of type '<NavigationState>"
  "3518ca42eb49bbf8de6cf123dcd80e4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationState)))
  "Returns md5sum for a message object of type 'NavigationState"
  "3518ca42eb49bbf8de6cf123dcd80e4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationState>)))
  "Returns full string definition for message of type '<NavigationState>"
  (cl:format cl:nil "nav_2d_msgs/Pose2DStamped global_pose~%nav_2d_msgs/Pose2DStamped local_pose~%nav_2d_msgs/Pose2DStamped goal~%nav_2d_msgs/Twist2DStamped current_velocity~%nav_2d_msgs/Twist2DStamped command_velocity~%nav_2d_msgs/Path2D global_plan~%~%================================================================================~%MSG: nav_2d_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Twist2DStamped~%std_msgs/Header header~%Twist2D velocity~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Path2D~%Header header~%geometry_msgs/Pose2D[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationState)))
  "Returns full string definition for message of type 'NavigationState"
  (cl:format cl:nil "nav_2d_msgs/Pose2DStamped global_pose~%nav_2d_msgs/Pose2DStamped local_pose~%nav_2d_msgs/Pose2DStamped goal~%nav_2d_msgs/Twist2DStamped current_velocity~%nav_2d_msgs/Twist2DStamped command_velocity~%nav_2d_msgs/Path2D global_plan~%~%================================================================================~%MSG: nav_2d_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Twist2DStamped~%std_msgs/Header header~%Twist2D velocity~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Path2D~%Header header~%geometry_msgs/Pose2D[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'global_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'local_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'command_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'global_plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationState>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationState
    (cl:cons ':global_pose (global_pose msg))
    (cl:cons ':local_pose (local_pose msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':current_velocity (current_velocity msg))
    (cl:cons ':command_velocity (command_velocity msg))
    (cl:cons ':global_plan (global_plan msg))
))
