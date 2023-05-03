; Auto-generated. Do not edit!


(cl:in-package dwb_msgs-srv)


;//! \htmlinclude GetCriticScore-request.msg.html

(cl:defclass <GetCriticScore-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type nav_2d_msgs-msg:Pose2DStamped
    :initform (cl:make-instance 'nav_2d_msgs-msg:Pose2DStamped))
   (velocity
    :reader velocity
    :initarg :velocity
    :type nav_2d_msgs-msg:Twist2D
    :initform (cl:make-instance 'nav_2d_msgs-msg:Twist2D))
   (global_plan
    :reader global_plan
    :initarg :global_plan
    :type nav_2d_msgs-msg:Path2D
    :initform (cl:make-instance 'nav_2d_msgs-msg:Path2D))
   (goal
    :reader goal
    :initarg :goal
    :type nav_2d_msgs-msg:Pose2DStamped
    :initform (cl:make-instance 'nav_2d_msgs-msg:Pose2DStamped))
   (traj
    :reader traj
    :initarg :traj
    :type dwb_msgs-msg:Trajectory2D
    :initform (cl:make-instance 'dwb_msgs-msg:Trajectory2D))
   (critic_name
    :reader critic_name
    :initarg :critic_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetCriticScore-request (<GetCriticScore-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCriticScore-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCriticScore-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwb_msgs-srv:<GetCriticScore-request> is deprecated: use dwb_msgs-srv:GetCriticScore-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetCriticScore-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:pose-val is deprecated.  Use dwb_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <GetCriticScore-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:velocity-val is deprecated.  Use dwb_msgs-srv:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'global_plan-val :lambda-list '(m))
(cl:defmethod global_plan-val ((m <GetCriticScore-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:global_plan-val is deprecated.  Use dwb_msgs-srv:global_plan instead.")
  (global_plan m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <GetCriticScore-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:goal-val is deprecated.  Use dwb_msgs-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'traj-val :lambda-list '(m))
(cl:defmethod traj-val ((m <GetCriticScore-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:traj-val is deprecated.  Use dwb_msgs-srv:traj instead.")
  (traj m))

(cl:ensure-generic-function 'critic_name-val :lambda-list '(m))
(cl:defmethod critic_name-val ((m <GetCriticScore-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:critic_name-val is deprecated.  Use dwb_msgs-srv:critic_name instead.")
  (critic_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCriticScore-request>) ostream)
  "Serializes a message object of type '<GetCriticScore-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'global_plan) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'traj) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'critic_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'critic_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCriticScore-request>) istream)
  "Deserializes a message object of type '<GetCriticScore-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'global_plan) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'traj) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'critic_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'critic_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCriticScore-request>)))
  "Returns string type for a service object of type '<GetCriticScore-request>"
  "dwb_msgs/GetCriticScoreRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCriticScore-request)))
  "Returns string type for a service object of type 'GetCriticScore-request"
  "dwb_msgs/GetCriticScoreRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCriticScore-request>)))
  "Returns md5sum for a message object of type '<GetCriticScore-request>"
  "b1f1b575d22e5c30bc2da24ae85dfca1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCriticScore-request)))
  "Returns md5sum for a message object of type 'GetCriticScore-request"
  "b1f1b575d22e5c30bc2da24ae85dfca1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCriticScore-request>)))
  "Returns full string definition for message of type '<GetCriticScore-request>"
  (cl:format cl:nil "nav_2d_msgs/Pose2DStamped pose~%nav_2d_msgs/Twist2D velocity~%nav_2d_msgs/Path2D global_plan~%nav_2d_msgs/Pose2DStamped goal~%Trajectory2D traj~%string critic_name~%~%================================================================================~%MSG: nav_2d_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Path2D~%Header header~%geometry_msgs/Pose2D[] poses~%~%================================================================================~%MSG: dwb_msgs/Trajectory2D~%# For a given velocity command, the poses that the robot will go to in the allotted time.~%~%# Input Velocity~%nav_2d_msgs/Twist2D velocity~%~%# Poses the robot will go to, given our kinematic model~%geometry_msgs/Pose2D[] poses~%~%# Time difference between the current pose and the poses in the trajectory.~%# Parallel array to poses. Length should be the same.~%duration[] time_offsets~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCriticScore-request)))
  "Returns full string definition for message of type 'GetCriticScore-request"
  (cl:format cl:nil "nav_2d_msgs/Pose2DStamped pose~%nav_2d_msgs/Twist2D velocity~%nav_2d_msgs/Path2D global_plan~%nav_2d_msgs/Pose2DStamped goal~%Trajectory2D traj~%string critic_name~%~%================================================================================~%MSG: nav_2d_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Path2D~%Header header~%geometry_msgs/Pose2D[] poses~%~%================================================================================~%MSG: dwb_msgs/Trajectory2D~%# For a given velocity command, the poses that the robot will go to in the allotted time.~%~%# Input Velocity~%nav_2d_msgs/Twist2D velocity~%~%# Poses the robot will go to, given our kinematic model~%geometry_msgs/Pose2D[] poses~%~%# Time difference between the current pose and the poses in the trajectory.~%# Parallel array to poses. Length should be the same.~%duration[] time_offsets~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCriticScore-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'global_plan))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'traj))
     4 (cl:length (cl:slot-value msg 'critic_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCriticScore-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCriticScore-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':global_plan (global_plan msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':traj (traj msg))
    (cl:cons ':critic_name (critic_name msg))
))
;//! \htmlinclude GetCriticScore-response.msg.html

(cl:defclass <GetCriticScore-response> (roslisp-msg-protocol:ros-message)
  ((score
    :reader score
    :initarg :score
    :type dwb_msgs-msg:CriticScore
    :initform (cl:make-instance 'dwb_msgs-msg:CriticScore)))
)

(cl:defclass GetCriticScore-response (<GetCriticScore-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCriticScore-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCriticScore-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwb_msgs-srv:<GetCriticScore-response> is deprecated: use dwb_msgs-srv:GetCriticScore-response instead.")))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <GetCriticScore-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:score-val is deprecated.  Use dwb_msgs-srv:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCriticScore-response>) ostream)
  "Serializes a message object of type '<GetCriticScore-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'score) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCriticScore-response>) istream)
  "Deserializes a message object of type '<GetCriticScore-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'score) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCriticScore-response>)))
  "Returns string type for a service object of type '<GetCriticScore-response>"
  "dwb_msgs/GetCriticScoreResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCriticScore-response)))
  "Returns string type for a service object of type 'GetCriticScore-response"
  "dwb_msgs/GetCriticScoreResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCriticScore-response>)))
  "Returns md5sum for a message object of type '<GetCriticScore-response>"
  "b1f1b575d22e5c30bc2da24ae85dfca1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCriticScore-response)))
  "Returns md5sum for a message object of type 'GetCriticScore-response"
  "b1f1b575d22e5c30bc2da24ae85dfca1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCriticScore-response>)))
  "Returns full string definition for message of type '<GetCriticScore-response>"
  (cl:format cl:nil "CriticScore score~%~%~%================================================================================~%MSG: dwb_msgs/CriticScore~%# The result from one critic scoring a Twist.~%# Name of the critic~%string name~%# Score for the critic, not multiplied by the scale~%float32 raw_score~%# Scale for the critic, multiplied by the raw_score and added to the total score~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCriticScore-response)))
  "Returns full string definition for message of type 'GetCriticScore-response"
  (cl:format cl:nil "CriticScore score~%~%~%================================================================================~%MSG: dwb_msgs/CriticScore~%# The result from one critic scoring a Twist.~%# Name of the critic~%string name~%# Score for the critic, not multiplied by the scale~%float32 raw_score~%# Scale for the critic, multiplied by the raw_score and added to the total score~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCriticScore-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'score))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCriticScore-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCriticScore-response
    (cl:cons ':score (score msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCriticScore)))
  'GetCriticScore-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCriticScore)))
  'GetCriticScore-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCriticScore)))
  "Returns string type for a service object of type '<GetCriticScore>"
  "dwb_msgs/GetCriticScore")