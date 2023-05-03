; Auto-generated. Do not edit!


(cl:in-package dwb_msgs-msg)


;//! \htmlinclude Trajectory2D.msg.html

(cl:defclass <Trajectory2D> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type nav_2d_msgs-msg:Twist2D
    :initform (cl:make-instance 'nav_2d_msgs-msg:Twist2D))
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D)))
   (time_offsets
    :reader time_offsets
    :initarg :time_offsets
    :type (cl:vector cl:real)
   :initform (cl:make-array 0 :element-type 'cl:real :initial-element 0)))
)

(cl:defclass Trajectory2D (<Trajectory2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trajectory2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trajectory2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwb_msgs-msg:<Trajectory2D> is deprecated: use dwb_msgs-msg:Trajectory2D instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Trajectory2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-msg:velocity-val is deprecated.  Use dwb_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <Trajectory2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-msg:poses-val is deprecated.  Use dwb_msgs-msg:poses instead.")
  (poses m))

(cl:ensure-generic-function 'time_offsets-val :lambda-list '(m))
(cl:defmethod time_offsets-val ((m <Trajectory2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-msg:time_offsets-val is deprecated.  Use dwb_msgs-msg:time_offsets instead.")
  (time_offsets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trajectory2D>) ostream)
  "Serializes a message object of type '<Trajectory2D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'time_offsets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__sec (cl:floor ele))
        (__nsec (cl:round (cl:* 1e9 (cl:- ele (cl:floor ele))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream)))
   (cl:slot-value msg 'time_offsets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trajectory2D>) istream)
  "Deserializes a message object of type '<Trajectory2D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'time_offsets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'time_offsets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trajectory2D>)))
  "Returns string type for a message object of type '<Trajectory2D>"
  "dwb_msgs/Trajectory2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trajectory2D)))
  "Returns string type for a message object of type 'Trajectory2D"
  "dwb_msgs/Trajectory2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trajectory2D>)))
  "Returns md5sum for a message object of type '<Trajectory2D>"
  "cabdc5bddc0dd1dcdc6b8f29fcb7ebcb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trajectory2D)))
  "Returns md5sum for a message object of type 'Trajectory2D"
  "cabdc5bddc0dd1dcdc6b8f29fcb7ebcb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trajectory2D>)))
  "Returns full string definition for message of type '<Trajectory2D>"
  (cl:format cl:nil "# For a given velocity command, the poses that the robot will go to in the allotted time.~%~%# Input Velocity~%nav_2d_msgs/Twist2D velocity~%~%# Poses the robot will go to, given our kinematic model~%geometry_msgs/Pose2D[] poses~%~%# Time difference between the current pose and the poses in the trajectory.~%# Parallel array to poses. Length should be the same.~%duration[] time_offsets~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trajectory2D)))
  "Returns full string definition for message of type 'Trajectory2D"
  (cl:format cl:nil "# For a given velocity command, the poses that the robot will go to in the allotted time.~%~%# Input Velocity~%nav_2d_msgs/Twist2D velocity~%~%# Poses the robot will go to, given our kinematic model~%geometry_msgs/Pose2D[] poses~%~%# Time difference between the current pose and the poses in the trajectory.~%# Parallel array to poses. Length should be the same.~%duration[] time_offsets~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trajectory2D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'time_offsets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trajectory2D>))
  "Converts a ROS message object to a list"
  (cl:list 'Trajectory2D
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':poses (poses msg))
    (cl:cons ':time_offsets (time_offsets msg))
))
