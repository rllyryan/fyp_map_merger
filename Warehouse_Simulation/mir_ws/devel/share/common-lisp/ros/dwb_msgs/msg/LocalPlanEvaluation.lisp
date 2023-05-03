; Auto-generated. Do not edit!


(cl:in-package dwb_msgs-msg)


;//! \htmlinclude LocalPlanEvaluation.msg.html

(cl:defclass <LocalPlanEvaluation> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (twists
    :reader twists
    :initarg :twists
    :type (cl:vector dwb_msgs-msg:TrajectoryScore)
   :initform (cl:make-array 0 :element-type 'dwb_msgs-msg:TrajectoryScore :initial-element (cl:make-instance 'dwb_msgs-msg:TrajectoryScore)))
   (best_index
    :reader best_index
    :initarg :best_index
    :type cl:fixnum
    :initform 0)
   (worst_index
    :reader worst_index
    :initarg :worst_index
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LocalPlanEvaluation (<LocalPlanEvaluation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalPlanEvaluation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalPlanEvaluation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwb_msgs-msg:<LocalPlanEvaluation> is deprecated: use dwb_msgs-msg:LocalPlanEvaluation instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LocalPlanEvaluation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-msg:header-val is deprecated.  Use dwb_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'twists-val :lambda-list '(m))
(cl:defmethod twists-val ((m <LocalPlanEvaluation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-msg:twists-val is deprecated.  Use dwb_msgs-msg:twists instead.")
  (twists m))

(cl:ensure-generic-function 'best_index-val :lambda-list '(m))
(cl:defmethod best_index-val ((m <LocalPlanEvaluation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-msg:best_index-val is deprecated.  Use dwb_msgs-msg:best_index instead.")
  (best_index m))

(cl:ensure-generic-function 'worst_index-val :lambda-list '(m))
(cl:defmethod worst_index-val ((m <LocalPlanEvaluation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-msg:worst_index-val is deprecated.  Use dwb_msgs-msg:worst_index instead.")
  (worst_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalPlanEvaluation>) ostream)
  "Serializes a message object of type '<LocalPlanEvaluation>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'twists))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'twists))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'best_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'best_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'worst_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'worst_index)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalPlanEvaluation>) istream)
  "Deserializes a message object of type '<LocalPlanEvaluation>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'twists) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'twists)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dwb_msgs-msg:TrajectoryScore))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'best_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'best_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'worst_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'worst_index)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalPlanEvaluation>)))
  "Returns string type for a message object of type '<LocalPlanEvaluation>"
  "dwb_msgs/LocalPlanEvaluation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalPlanEvaluation)))
  "Returns string type for a message object of type 'LocalPlanEvaluation"
  "dwb_msgs/LocalPlanEvaluation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalPlanEvaluation>)))
  "Returns md5sum for a message object of type '<LocalPlanEvaluation>"
  "d360642012ea44ee598913c70498aa4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalPlanEvaluation)))
  "Returns md5sum for a message object of type 'LocalPlanEvaluation"
  "d360642012ea44ee598913c70498aa4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalPlanEvaluation>)))
  "Returns full string definition for message of type '<LocalPlanEvaluation>"
  (cl:format cl:nil "# Full Scoring for running the local planner~%~%# Header, used for timestamp~%Header header~%# All the trajectories evaluated and their scores~%TrajectoryScore[] twists~%# Convenience index of the best (lowest) score in the twists array~%uint16 best_index~%# Convenience index of the worst (highest) score in the twists array. Useful for scaling.~%uint16 worst_index~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dwb_msgs/TrajectoryScore~%# Complete scoring for a given twist.~%~%# The trajectory being scored~%Trajectory2D traj~%# The Scores for each of the critics employed~%CriticScore[] scores~%# Convenience member that totals the critic scores~%float32 total~%~%================================================================================~%MSG: dwb_msgs/Trajectory2D~%# For a given velocity command, the poses that the robot will go to in the allotted time.~%~%# Input Velocity~%nav_2d_msgs/Twist2D velocity~%~%# Poses the robot will go to, given our kinematic model~%geometry_msgs/Pose2D[] poses~%~%# Time difference between the current pose and the poses in the trajectory.~%# Parallel array to poses. Length should be the same.~%duration[] time_offsets~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: dwb_msgs/CriticScore~%# The result from one critic scoring a Twist.~%# Name of the critic~%string name~%# Score for the critic, not multiplied by the scale~%float32 raw_score~%# Scale for the critic, multiplied by the raw_score and added to the total score~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalPlanEvaluation)))
  "Returns full string definition for message of type 'LocalPlanEvaluation"
  (cl:format cl:nil "# Full Scoring for running the local planner~%~%# Header, used for timestamp~%Header header~%# All the trajectories evaluated and their scores~%TrajectoryScore[] twists~%# Convenience index of the best (lowest) score in the twists array~%uint16 best_index~%# Convenience index of the worst (highest) score in the twists array. Useful for scaling.~%uint16 worst_index~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dwb_msgs/TrajectoryScore~%# Complete scoring for a given twist.~%~%# The trajectory being scored~%Trajectory2D traj~%# The Scores for each of the critics employed~%CriticScore[] scores~%# Convenience member that totals the critic scores~%float32 total~%~%================================================================================~%MSG: dwb_msgs/Trajectory2D~%# For a given velocity command, the poses that the robot will go to in the allotted time.~%~%# Input Velocity~%nav_2d_msgs/Twist2D velocity~%~%# Poses the robot will go to, given our kinematic model~%geometry_msgs/Pose2D[] poses~%~%# Time difference between the current pose and the poses in the trajectory.~%# Parallel array to poses. Length should be the same.~%duration[] time_offsets~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: dwb_msgs/CriticScore~%# The result from one critic scoring a Twist.~%# Name of the critic~%string name~%# Score for the critic, not multiplied by the scale~%float32 raw_score~%# Scale for the critic, multiplied by the raw_score and added to the total score~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalPlanEvaluation>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'twists) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalPlanEvaluation>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalPlanEvaluation
    (cl:cons ':header (header msg))
    (cl:cons ':twists (twists msg))
    (cl:cons ':best_index (best_index msg))
    (cl:cons ':worst_index (worst_index msg))
))
