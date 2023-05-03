; Auto-generated. Do not edit!


(cl:in-package dwb_msgs-srv)


;//! \htmlinclude GenerateTrajectory-request.msg.html

(cl:defclass <GenerateTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((start_pose
    :reader start_pose
    :initarg :start_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (start_vel
    :reader start_vel
    :initarg :start_vel
    :type nav_2d_msgs-msg:Twist2D
    :initform (cl:make-instance 'nav_2d_msgs-msg:Twist2D))
   (cmd_vel
    :reader cmd_vel
    :initarg :cmd_vel
    :type nav_2d_msgs-msg:Twist2D
    :initform (cl:make-instance 'nav_2d_msgs-msg:Twist2D)))
)

(cl:defclass GenerateTrajectory-request (<GenerateTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwb_msgs-srv:<GenerateTrajectory-request> is deprecated: use dwb_msgs-srv:GenerateTrajectory-request instead.")))

(cl:ensure-generic-function 'start_pose-val :lambda-list '(m))
(cl:defmethod start_pose-val ((m <GenerateTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:start_pose-val is deprecated.  Use dwb_msgs-srv:start_pose instead.")
  (start_pose m))

(cl:ensure-generic-function 'start_vel-val :lambda-list '(m))
(cl:defmethod start_vel-val ((m <GenerateTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:start_vel-val is deprecated.  Use dwb_msgs-srv:start_vel instead.")
  (start_vel m))

(cl:ensure-generic-function 'cmd_vel-val :lambda-list '(m))
(cl:defmethod cmd_vel-val ((m <GenerateTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:cmd_vel-val is deprecated.  Use dwb_msgs-srv:cmd_vel instead.")
  (cmd_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateTrajectory-request>) ostream)
  "Serializes a message object of type '<GenerateTrajectory-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cmd_vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateTrajectory-request>) istream)
  "Deserializes a message object of type '<GenerateTrajectory-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cmd_vel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateTrajectory-request>)))
  "Returns string type for a service object of type '<GenerateTrajectory-request>"
  "dwb_msgs/GenerateTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateTrajectory-request)))
  "Returns string type for a service object of type 'GenerateTrajectory-request"
  "dwb_msgs/GenerateTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateTrajectory-request>)))
  "Returns md5sum for a message object of type '<GenerateTrajectory-request>"
  "a53a5ac380b5d14cb0057919063c0b54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateTrajectory-request)))
  "Returns md5sum for a message object of type 'GenerateTrajectory-request"
  "a53a5ac380b5d14cb0057919063c0b54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateTrajectory-request>)))
  "Returns full string definition for message of type '<GenerateTrajectory-request>"
  (cl:format cl:nil "# For a given start pose, velocity and desired velocity, generate which poses will be visited~%geometry_msgs/Pose2D start_pose~%nav_2d_msgs/Twist2D start_vel~%nav_2d_msgs/Twist2D cmd_vel~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateTrajectory-request)))
  "Returns full string definition for message of type 'GenerateTrajectory-request"
  (cl:format cl:nil "# For a given start pose, velocity and desired velocity, generate which poses will be visited~%geometry_msgs/Pose2D start_pose~%nav_2d_msgs/Twist2D start_vel~%nav_2d_msgs/Twist2D cmd_vel~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateTrajectory-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd_vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateTrajectory-request
    (cl:cons ':start_pose (start_pose msg))
    (cl:cons ':start_vel (start_vel msg))
    (cl:cons ':cmd_vel (cmd_vel msg))
))
;//! \htmlinclude GenerateTrajectory-response.msg.html

(cl:defclass <GenerateTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((traj
    :reader traj
    :initarg :traj
    :type dwb_msgs-msg:Trajectory2D
    :initform (cl:make-instance 'dwb_msgs-msg:Trajectory2D)))
)

(cl:defclass GenerateTrajectory-response (<GenerateTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwb_msgs-srv:<GenerateTrajectory-response> is deprecated: use dwb_msgs-srv:GenerateTrajectory-response instead.")))

(cl:ensure-generic-function 'traj-val :lambda-list '(m))
(cl:defmethod traj-val ((m <GenerateTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:traj-val is deprecated.  Use dwb_msgs-srv:traj instead.")
  (traj m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateTrajectory-response>) ostream)
  "Serializes a message object of type '<GenerateTrajectory-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'traj) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateTrajectory-response>) istream)
  "Deserializes a message object of type '<GenerateTrajectory-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'traj) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateTrajectory-response>)))
  "Returns string type for a service object of type '<GenerateTrajectory-response>"
  "dwb_msgs/GenerateTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateTrajectory-response)))
  "Returns string type for a service object of type 'GenerateTrajectory-response"
  "dwb_msgs/GenerateTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateTrajectory-response>)))
  "Returns md5sum for a message object of type '<GenerateTrajectory-response>"
  "a53a5ac380b5d14cb0057919063c0b54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateTrajectory-response)))
  "Returns md5sum for a message object of type 'GenerateTrajectory-response"
  "a53a5ac380b5d14cb0057919063c0b54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateTrajectory-response>)))
  "Returns full string definition for message of type '<GenerateTrajectory-response>"
  (cl:format cl:nil "Trajectory2D traj~%~%~%================================================================================~%MSG: dwb_msgs/Trajectory2D~%# For a given velocity command, the poses that the robot will go to in the allotted time.~%~%# Input Velocity~%nav_2d_msgs/Twist2D velocity~%~%# Poses the robot will go to, given our kinematic model~%geometry_msgs/Pose2D[] poses~%~%# Time difference between the current pose and the poses in the trajectory.~%# Parallel array to poses. Length should be the same.~%duration[] time_offsets~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateTrajectory-response)))
  "Returns full string definition for message of type 'GenerateTrajectory-response"
  (cl:format cl:nil "Trajectory2D traj~%~%~%================================================================================~%MSG: dwb_msgs/Trajectory2D~%# For a given velocity command, the poses that the robot will go to in the allotted time.~%~%# Input Velocity~%nav_2d_msgs/Twist2D velocity~%~%# Poses the robot will go to, given our kinematic model~%geometry_msgs/Pose2D[] poses~%~%# Time difference between the current pose and the poses in the trajectory.~%# Parallel array to poses. Length should be the same.~%duration[] time_offsets~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateTrajectory-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'traj))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateTrajectory-response
    (cl:cons ':traj (traj msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GenerateTrajectory)))
  'GenerateTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GenerateTrajectory)))
  'GenerateTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateTrajectory)))
  "Returns string type for a service object of type '<GenerateTrajectory>"
  "dwb_msgs/GenerateTrajectory")