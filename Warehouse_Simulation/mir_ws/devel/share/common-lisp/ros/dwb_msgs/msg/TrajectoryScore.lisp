; Auto-generated. Do not edit!


(cl:in-package dwb_msgs-msg)


;//! \htmlinclude TrajectoryScore.msg.html

(cl:defclass <TrajectoryScore> (roslisp-msg-protocol:ros-message)
  ((traj
    :reader traj
    :initarg :traj
    :type dwb_msgs-msg:Trajectory2D
    :initform (cl:make-instance 'dwb_msgs-msg:Trajectory2D))
   (scores
    :reader scores
    :initarg :scores
    :type (cl:vector dwb_msgs-msg:CriticScore)
   :initform (cl:make-array 0 :element-type 'dwb_msgs-msg:CriticScore :initial-element (cl:make-instance 'dwb_msgs-msg:CriticScore)))
   (total
    :reader total
    :initarg :total
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrajectoryScore (<TrajectoryScore>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryScore>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryScore)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwb_msgs-msg:<TrajectoryScore> is deprecated: use dwb_msgs-msg:TrajectoryScore instead.")))

(cl:ensure-generic-function 'traj-val :lambda-list '(m))
(cl:defmethod traj-val ((m <TrajectoryScore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-msg:traj-val is deprecated.  Use dwb_msgs-msg:traj instead.")
  (traj m))

(cl:ensure-generic-function 'scores-val :lambda-list '(m))
(cl:defmethod scores-val ((m <TrajectoryScore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-msg:scores-val is deprecated.  Use dwb_msgs-msg:scores instead.")
  (scores m))

(cl:ensure-generic-function 'total-val :lambda-list '(m))
(cl:defmethod total-val ((m <TrajectoryScore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-msg:total-val is deprecated.  Use dwb_msgs-msg:total instead.")
  (total m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryScore>) ostream)
  "Serializes a message object of type '<TrajectoryScore>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'traj) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'scores))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'scores))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'total))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryScore>) istream)
  "Deserializes a message object of type '<TrajectoryScore>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'traj) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'scores) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'scores)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dwb_msgs-msg:CriticScore))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryScore>)))
  "Returns string type for a message object of type '<TrajectoryScore>"
  "dwb_msgs/TrajectoryScore")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryScore)))
  "Returns string type for a message object of type 'TrajectoryScore"
  "dwb_msgs/TrajectoryScore")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryScore>)))
  "Returns md5sum for a message object of type '<TrajectoryScore>"
  "3d0da50e88d25d1140ba21d539b60c4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryScore)))
  "Returns md5sum for a message object of type 'TrajectoryScore"
  "3d0da50e88d25d1140ba21d539b60c4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryScore>)))
  "Returns full string definition for message of type '<TrajectoryScore>"
  (cl:format cl:nil "# Complete scoring for a given twist.~%~%# The trajectory being scored~%Trajectory2D traj~%# The Scores for each of the critics employed~%CriticScore[] scores~%# Convenience member that totals the critic scores~%float32 total~%~%================================================================================~%MSG: dwb_msgs/Trajectory2D~%# For a given velocity command, the poses that the robot will go to in the allotted time.~%~%# Input Velocity~%nav_2d_msgs/Twist2D velocity~%~%# Poses the robot will go to, given our kinematic model~%geometry_msgs/Pose2D[] poses~%~%# Time difference between the current pose and the poses in the trajectory.~%# Parallel array to poses. Length should be the same.~%duration[] time_offsets~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: dwb_msgs/CriticScore~%# The result from one critic scoring a Twist.~%# Name of the critic~%string name~%# Score for the critic, not multiplied by the scale~%float32 raw_score~%# Scale for the critic, multiplied by the raw_score and added to the total score~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryScore)))
  "Returns full string definition for message of type 'TrajectoryScore"
  (cl:format cl:nil "# Complete scoring for a given twist.~%~%# The trajectory being scored~%Trajectory2D traj~%# The Scores for each of the critics employed~%CriticScore[] scores~%# Convenience member that totals the critic scores~%float32 total~%~%================================================================================~%MSG: dwb_msgs/Trajectory2D~%# For a given velocity command, the poses that the robot will go to in the allotted time.~%~%# Input Velocity~%nav_2d_msgs/Twist2D velocity~%~%# Poses the robot will go to, given our kinematic model~%geometry_msgs/Pose2D[] poses~%~%# Time difference between the current pose and the poses in the trajectory.~%# Parallel array to poses. Length should be the same.~%duration[] time_offsets~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: dwb_msgs/CriticScore~%# The result from one critic scoring a Twist.~%# Name of the critic~%string name~%# Score for the critic, not multiplied by the scale~%float32 raw_score~%# Scale for the critic, multiplied by the raw_score and added to the total score~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryScore>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'traj))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'scores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryScore>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryScore
    (cl:cons ':traj (traj msg))
    (cl:cons ':scores (scores msg))
    (cl:cons ':total (total msg))
))
