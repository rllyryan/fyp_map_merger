; Auto-generated. Do not edit!


(cl:in-package dwb_msgs-srv)


;//! \htmlinclude ScoreTrajectory-request.msg.html

(cl:defclass <ScoreTrajectory-request> (roslisp-msg-protocol:ros-message)
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
    :initform (cl:make-instance 'dwb_msgs-msg:Trajectory2D)))
)

(cl:defclass ScoreTrajectory-request (<ScoreTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScoreTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScoreTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwb_msgs-srv:<ScoreTrajectory-request> is deprecated: use dwb_msgs-srv:ScoreTrajectory-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ScoreTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:pose-val is deprecated.  Use dwb_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <ScoreTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:velocity-val is deprecated.  Use dwb_msgs-srv:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'global_plan-val :lambda-list '(m))
(cl:defmethod global_plan-val ((m <ScoreTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:global_plan-val is deprecated.  Use dwb_msgs-srv:global_plan instead.")
  (global_plan m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <ScoreTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:goal-val is deprecated.  Use dwb_msgs-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'traj-val :lambda-list '(m))
(cl:defmethod traj-val ((m <ScoreTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:traj-val is deprecated.  Use dwb_msgs-srv:traj instead.")
  (traj m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScoreTrajectory-request>) ostream)
  "Serializes a message object of type '<ScoreTrajectory-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'global_plan) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'traj) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScoreTrajectory-request>) istream)
  "Deserializes a message object of type '<ScoreTrajectory-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'global_plan) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'traj) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScoreTrajectory-request>)))
  "Returns string type for a service object of type '<ScoreTrajectory-request>"
  "dwb_msgs/ScoreTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScoreTrajectory-request)))
  "Returns string type for a service object of type 'ScoreTrajectory-request"
  "dwb_msgs/ScoreTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScoreTrajectory-request>)))
  "Returns md5sum for a message object of type '<ScoreTrajectory-request>"
  "032651f7461f3d88a9c62f67d179fc10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScoreTrajectory-request)))
  "Returns md5sum for a message object of type 'ScoreTrajectory-request"
  "032651f7461f3d88a9c62f67d179fc10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScoreTrajectory-request>)))
  "Returns full string definition for message of type '<ScoreTrajectory-request>"
  (cl:format cl:nil "nav_2d_msgs/Pose2DStamped pose~%nav_2d_msgs/Twist2D velocity~%nav_2d_msgs/Path2D global_plan~%nav_2d_msgs/Pose2DStamped goal~%Trajectory2D traj~%~%================================================================================~%MSG: nav_2d_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Path2D~%Header header~%geometry_msgs/Pose2D[] poses~%~%================================================================================~%MSG: dwb_msgs/Trajectory2D~%# For a given velocity command, the poses that the robot will go to in the allotted time.~%~%# Input Velocity~%nav_2d_msgs/Twist2D velocity~%~%# Poses the robot will go to, given our kinematic model~%geometry_msgs/Pose2D[] poses~%~%# Time difference between the current pose and the poses in the trajectory.~%# Parallel array to poses. Length should be the same.~%duration[] time_offsets~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScoreTrajectory-request)))
  "Returns full string definition for message of type 'ScoreTrajectory-request"
  (cl:format cl:nil "nav_2d_msgs/Pose2DStamped pose~%nav_2d_msgs/Twist2D velocity~%nav_2d_msgs/Path2D global_plan~%nav_2d_msgs/Pose2DStamped goal~%Trajectory2D traj~%~%================================================================================~%MSG: nav_2d_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Path2D~%Header header~%geometry_msgs/Pose2D[] poses~%~%================================================================================~%MSG: dwb_msgs/Trajectory2D~%# For a given velocity command, the poses that the robot will go to in the allotted time.~%~%# Input Velocity~%nav_2d_msgs/Twist2D velocity~%~%# Poses the robot will go to, given our kinematic model~%geometry_msgs/Pose2D[] poses~%~%# Time difference between the current pose and the poses in the trajectory.~%# Parallel array to poses. Length should be the same.~%duration[] time_offsets~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScoreTrajectory-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'global_plan))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'traj))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScoreTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ScoreTrajectory-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':global_plan (global_plan msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':traj (traj msg))
))
;//! \htmlinclude ScoreTrajectory-response.msg.html

(cl:defclass <ScoreTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((score
    :reader score
    :initarg :score
    :type dwb_msgs-msg:TrajectoryScore
    :initform (cl:make-instance 'dwb_msgs-msg:TrajectoryScore)))
)

(cl:defclass ScoreTrajectory-response (<ScoreTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScoreTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScoreTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwb_msgs-srv:<ScoreTrajectory-response> is deprecated: use dwb_msgs-srv:ScoreTrajectory-response instead.")))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <ScoreTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:score-val is deprecated.  Use dwb_msgs-srv:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScoreTrajectory-response>) ostream)
  "Serializes a message object of type '<ScoreTrajectory-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'score) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScoreTrajectory-response>) istream)
  "Deserializes a message object of type '<ScoreTrajectory-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'score) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScoreTrajectory-response>)))
  "Returns string type for a service object of type '<ScoreTrajectory-response>"
  "dwb_msgs/ScoreTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScoreTrajectory-response)))
  "Returns string type for a service object of type 'ScoreTrajectory-response"
  "dwb_msgs/ScoreTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScoreTrajectory-response>)))
  "Returns md5sum for a message object of type '<ScoreTrajectory-response>"
  "032651f7461f3d88a9c62f67d179fc10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScoreTrajectory-response)))
  "Returns md5sum for a message object of type 'ScoreTrajectory-response"
  "032651f7461f3d88a9c62f67d179fc10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScoreTrajectory-response>)))
  "Returns full string definition for message of type '<ScoreTrajectory-response>"
  (cl:format cl:nil "TrajectoryScore score~%~%~%================================================================================~%MSG: dwb_msgs/TrajectoryScore~%# Complete scoring for a given twist.~%~%# The trajectory being scored~%Trajectory2D traj~%# The Scores for each of the critics employed~%CriticScore[] scores~%# Convenience member that totals the critic scores~%float32 total~%~%================================================================================~%MSG: dwb_msgs/Trajectory2D~%# For a given velocity command, the poses that the robot will go to in the allotted time.~%~%# Input Velocity~%nav_2d_msgs/Twist2D velocity~%~%# Poses the robot will go to, given our kinematic model~%geometry_msgs/Pose2D[] poses~%~%# Time difference between the current pose and the poses in the trajectory.~%# Parallel array to poses. Length should be the same.~%duration[] time_offsets~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: dwb_msgs/CriticScore~%# The result from one critic scoring a Twist.~%# Name of the critic~%string name~%# Score for the critic, not multiplied by the scale~%float32 raw_score~%# Scale for the critic, multiplied by the raw_score and added to the total score~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScoreTrajectory-response)))
  "Returns full string definition for message of type 'ScoreTrajectory-response"
  (cl:format cl:nil "TrajectoryScore score~%~%~%================================================================================~%MSG: dwb_msgs/TrajectoryScore~%# Complete scoring for a given twist.~%~%# The trajectory being scored~%Trajectory2D traj~%# The Scores for each of the critics employed~%CriticScore[] scores~%# Convenience member that totals the critic scores~%float32 total~%~%================================================================================~%MSG: dwb_msgs/Trajectory2D~%# For a given velocity command, the poses that the robot will go to in the allotted time.~%~%# Input Velocity~%nav_2d_msgs/Twist2D velocity~%~%# Poses the robot will go to, given our kinematic model~%geometry_msgs/Pose2D[] poses~%~%# Time difference between the current pose and the poses in the trajectory.~%# Parallel array to poses. Length should be the same.~%duration[] time_offsets~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: dwb_msgs/CriticScore~%# The result from one critic scoring a Twist.~%# Name of the critic~%string name~%# Score for the critic, not multiplied by the scale~%float32 raw_score~%# Scale for the critic, multiplied by the raw_score and added to the total score~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScoreTrajectory-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'score))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScoreTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ScoreTrajectory-response
    (cl:cons ':score (score msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ScoreTrajectory)))
  'ScoreTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ScoreTrajectory)))
  'ScoreTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScoreTrajectory)))
  "Returns string type for a service object of type '<ScoreTrajectory>"
  "dwb_msgs/ScoreTrajectory")