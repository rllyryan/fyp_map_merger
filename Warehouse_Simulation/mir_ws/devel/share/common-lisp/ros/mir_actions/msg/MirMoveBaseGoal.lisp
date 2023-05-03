; Auto-generated. Do not edit!


(cl:in-package mir_actions-msg)


;//! \htmlinclude MirMoveBaseGoal.msg.html

(cl:defclass <MirMoveBaseGoal> (roslisp-msg-protocol:ros-message)
  ((move_task
    :reader move_task
    :initarg :move_task
    :type cl:fixnum
    :initform 0)
   (target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal_dist_threshold
    :reader goal_dist_threshold
    :initarg :goal_dist_threshold
    :type cl:float
    :initform 0.0)
   (goal_orientation_threshold
    :reader goal_orientation_threshold
    :initarg :goal_orientation_threshold
    :type cl:float
    :initform 0.0)
   (path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (max_plan_time
    :reader max_plan_time
    :initarg :max_plan_time
    :type cl:float
    :initform 0.0)
   (clear_costmaps
    :reader clear_costmaps
    :initarg :clear_costmaps
    :type cl:boolean
    :initform cl:nil)
   (pause_command
    :reader pause_command
    :initarg :pause_command
    :type cl:boolean
    :initform cl:nil)
   (continue_command
    :reader continue_command
    :initarg :continue_command
    :type cl:boolean
    :initform cl:nil)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (collision_detection
    :reader collision_detection
    :initarg :collision_detection
    :type cl:boolean
    :initform cl:nil)
   (collision_avoidance
    :reader collision_avoidance
    :initarg :collision_avoidance
    :type cl:boolean
    :initform cl:nil)
   (disable_collision_check_dist
    :reader disable_collision_check_dist
    :initarg :disable_collision_check_dist
    :type cl:float
    :initform 0.0)
   (max_linear_speed
    :reader max_linear_speed
    :initarg :max_linear_speed
    :type cl:float
    :initform 0.0)
   (max_rotational_speed
    :reader max_rotational_speed
    :initarg :max_rotational_speed
    :type cl:float
    :initform 0.0)
   (pid_dist_offset
    :reader pid_dist_offset
    :initarg :pid_dist_offset
    :type cl:float
    :initform 0.0)
   (target_offset
    :reader target_offset
    :initarg :target_offset
    :type cl:float
    :initform 0.0)
   (only_collision_detection
    :reader only_collision_detection
    :initarg :only_collision_detection
    :type cl:boolean
    :initform cl:nil)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:float
    :initform 0.0)
   (pattern_type
    :reader pattern_type
    :initarg :pattern_type
    :type cl:integer
    :initform 0)
   (pattern_value
    :reader pattern_value
    :initarg :pattern_value
    :type cl:integer
    :initform 0)
   (only_track
    :reader only_track
    :initarg :only_track
    :type cl:boolean
    :initform cl:nil)
   (same_goal
    :reader same_goal
    :initarg :same_goal
    :type cl:boolean
    :initform cl:nil)
   (pose_frame
    :reader pose_frame
    :initarg :pose_frame
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (offset
    :reader offset
    :initarg :offset
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (bar_length
    :reader bar_length
    :initarg :bar_length
    :type cl:float
    :initform 0.0)
   (bar_distance
    :reader bar_distance
    :initarg :bar_distance
    :type cl:float
    :initform 0.0)
   (shelf_leg_asymmetry_x
    :reader shelf_leg_asymmetry_x
    :initarg :shelf_leg_asymmetry_x
    :type cl:float
    :initform 0.0)
   (tolerance
    :reader tolerance
    :initarg :tolerance
    :type cl:float
    :initform 0.0))
)

(cl:defclass MirMoveBaseGoal (<MirMoveBaseGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MirMoveBaseGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MirMoveBaseGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_actions-msg:<MirMoveBaseGoal> is deprecated: use mir_actions-msg:MirMoveBaseGoal instead.")))

(cl:ensure-generic-function 'move_task-val :lambda-list '(m))
(cl:defmethod move_task-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:move_task-val is deprecated.  Use mir_actions-msg:move_task instead.")
  (move_task m))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:target_pose-val is deprecated.  Use mir_actions-msg:target_pose instead.")
  (target_pose m))

(cl:ensure-generic-function 'goal_dist_threshold-val :lambda-list '(m))
(cl:defmethod goal_dist_threshold-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:goal_dist_threshold-val is deprecated.  Use mir_actions-msg:goal_dist_threshold instead.")
  (goal_dist_threshold m))

(cl:ensure-generic-function 'goal_orientation_threshold-val :lambda-list '(m))
(cl:defmethod goal_orientation_threshold-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:goal_orientation_threshold-val is deprecated.  Use mir_actions-msg:goal_orientation_threshold instead.")
  (goal_orientation_threshold m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:path-val is deprecated.  Use mir_actions-msg:path instead.")
  (path m))

(cl:ensure-generic-function 'max_plan_time-val :lambda-list '(m))
(cl:defmethod max_plan_time-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:max_plan_time-val is deprecated.  Use mir_actions-msg:max_plan_time instead.")
  (max_plan_time m))

(cl:ensure-generic-function 'clear_costmaps-val :lambda-list '(m))
(cl:defmethod clear_costmaps-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:clear_costmaps-val is deprecated.  Use mir_actions-msg:clear_costmaps instead.")
  (clear_costmaps m))

(cl:ensure-generic-function 'pause_command-val :lambda-list '(m))
(cl:defmethod pause_command-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:pause_command-val is deprecated.  Use mir_actions-msg:pause_command instead.")
  (pause_command m))

(cl:ensure-generic-function 'continue_command-val :lambda-list '(m))
(cl:defmethod continue_command-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:continue_command-val is deprecated.  Use mir_actions-msg:continue_command instead.")
  (continue_command m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:yaw-val is deprecated.  Use mir_actions-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'collision_detection-val :lambda-list '(m))
(cl:defmethod collision_detection-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:collision_detection-val is deprecated.  Use mir_actions-msg:collision_detection instead.")
  (collision_detection m))

(cl:ensure-generic-function 'collision_avoidance-val :lambda-list '(m))
(cl:defmethod collision_avoidance-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:collision_avoidance-val is deprecated.  Use mir_actions-msg:collision_avoidance instead.")
  (collision_avoidance m))

(cl:ensure-generic-function 'disable_collision_check_dist-val :lambda-list '(m))
(cl:defmethod disable_collision_check_dist-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:disable_collision_check_dist-val is deprecated.  Use mir_actions-msg:disable_collision_check_dist instead.")
  (disable_collision_check_dist m))

(cl:ensure-generic-function 'max_linear_speed-val :lambda-list '(m))
(cl:defmethod max_linear_speed-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:max_linear_speed-val is deprecated.  Use mir_actions-msg:max_linear_speed instead.")
  (max_linear_speed m))

(cl:ensure-generic-function 'max_rotational_speed-val :lambda-list '(m))
(cl:defmethod max_rotational_speed-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:max_rotational_speed-val is deprecated.  Use mir_actions-msg:max_rotational_speed instead.")
  (max_rotational_speed m))

(cl:ensure-generic-function 'pid_dist_offset-val :lambda-list '(m))
(cl:defmethod pid_dist_offset-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:pid_dist_offset-val is deprecated.  Use mir_actions-msg:pid_dist_offset instead.")
  (pid_dist_offset m))

(cl:ensure-generic-function 'target_offset-val :lambda-list '(m))
(cl:defmethod target_offset-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:target_offset-val is deprecated.  Use mir_actions-msg:target_offset instead.")
  (target_offset m))

(cl:ensure-generic-function 'only_collision_detection-val :lambda-list '(m))
(cl:defmethod only_collision_detection-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:only_collision_detection-val is deprecated.  Use mir_actions-msg:only_collision_detection instead.")
  (only_collision_detection m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:timeout-val is deprecated.  Use mir_actions-msg:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'pattern_type-val :lambda-list '(m))
(cl:defmethod pattern_type-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:pattern_type-val is deprecated.  Use mir_actions-msg:pattern_type instead.")
  (pattern_type m))

(cl:ensure-generic-function 'pattern_value-val :lambda-list '(m))
(cl:defmethod pattern_value-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:pattern_value-val is deprecated.  Use mir_actions-msg:pattern_value instead.")
  (pattern_value m))

(cl:ensure-generic-function 'only_track-val :lambda-list '(m))
(cl:defmethod only_track-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:only_track-val is deprecated.  Use mir_actions-msg:only_track instead.")
  (only_track m))

(cl:ensure-generic-function 'same_goal-val :lambda-list '(m))
(cl:defmethod same_goal-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:same_goal-val is deprecated.  Use mir_actions-msg:same_goal instead.")
  (same_goal m))

(cl:ensure-generic-function 'pose_frame-val :lambda-list '(m))
(cl:defmethod pose_frame-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:pose_frame-val is deprecated.  Use mir_actions-msg:pose_frame instead.")
  (pose_frame m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:pose-val is deprecated.  Use mir_actions-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:offset-val is deprecated.  Use mir_actions-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'bar_length-val :lambda-list '(m))
(cl:defmethod bar_length-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:bar_length-val is deprecated.  Use mir_actions-msg:bar_length instead.")
  (bar_length m))

(cl:ensure-generic-function 'bar_distance-val :lambda-list '(m))
(cl:defmethod bar_distance-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:bar_distance-val is deprecated.  Use mir_actions-msg:bar_distance instead.")
  (bar_distance m))

(cl:ensure-generic-function 'shelf_leg_asymmetry_x-val :lambda-list '(m))
(cl:defmethod shelf_leg_asymmetry_x-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:shelf_leg_asymmetry_x-val is deprecated.  Use mir_actions-msg:shelf_leg_asymmetry_x instead.")
  (shelf_leg_asymmetry_x m))

(cl:ensure-generic-function 'tolerance-val :lambda-list '(m))
(cl:defmethod tolerance-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:tolerance-val is deprecated.  Use mir_actions-msg:tolerance instead.")
  (tolerance m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MirMoveBaseGoal>)))
    "Constants for message type '<MirMoveBaseGoal>"
  '((:BASE_MOVE . 0)
    (:GLOBAL_MOVE . 1)
    (:RELATIVE_MOVE . 2)
    (:RELATIVE_MARKER_MOVE . 3)
    (:DOCKING_MOVE . 4)
    (:DOCKING_GLOBAL_MOVE . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MirMoveBaseGoal)))
    "Constants for message type 'MirMoveBaseGoal"
  '((:BASE_MOVE . 0)
    (:GLOBAL_MOVE . 1)
    (:RELATIVE_MOVE . 2)
    (:RELATIVE_MARKER_MOVE . 3)
    (:DOCKING_MOVE . 4)
    (:DOCKING_GLOBAL_MOVE . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MirMoveBaseGoal>) ostream)
  "Serializes a message object of type '<MirMoveBaseGoal>"
  (cl:let* ((signed (cl:slot-value msg 'move_task)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_dist_threshold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_orientation_threshold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_plan_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clear_costmaps) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pause_command) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'continue_command) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collision_detection) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collision_avoidance) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'disable_collision_check_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_linear_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_rotational_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pid_dist_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'only_collision_detection) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timeout))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'pattern_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pattern_value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'only_track) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'same_goal) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pose_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pose_frame))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'offset) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bar_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bar_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'shelf_leg_asymmetry_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MirMoveBaseGoal>) istream)
  "Deserializes a message object of type '<MirMoveBaseGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'move_task) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_dist_threshold) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_orientation_threshold) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_plan_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'clear_costmaps) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pause_command) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'continue_command) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'collision_detection) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'collision_avoidance) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'disable_collision_check_dist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_linear_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_rotational_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pid_dist_offset) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_offset) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'only_collision_detection) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeout) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pattern_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pattern_value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'only_track) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'same_goal) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pose_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pose_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'offset) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bar_length) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bar_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'shelf_leg_asymmetry_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tolerance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MirMoveBaseGoal>)))
  "Returns string type for a message object of type '<MirMoveBaseGoal>"
  "mir_actions/MirMoveBaseGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MirMoveBaseGoal)))
  "Returns string type for a message object of type 'MirMoveBaseGoal"
  "mir_actions/MirMoveBaseGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MirMoveBaseGoal>)))
  "Returns md5sum for a message object of type '<MirMoveBaseGoal>"
  "d4841766618ad92857d4e3d683b072f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MirMoveBaseGoal)))
  "Returns md5sum for a message object of type 'MirMoveBaseGoal"
  "d4841766618ad92857d4e3d683b072f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MirMoveBaseGoal>)))
  "Returns full string definition for message of type '<MirMoveBaseGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%#move type~%int16 BASE_MOVE = 0~%int16 GLOBAL_MOVE = 1~%int16 RELATIVE_MOVE = 2~%int16 RELATIVE_MARKER_MOVE = 3~%int16 DOCKING_MOVE = 4~%int16 DOCKING_GLOBAL_MOVE = 5~%int16 move_task~%~%#shared parameters~%geometry_msgs/PoseStamped target_pose~%~%#global move parameters~%float64 goal_dist_threshold~%float64 goal_orientation_threshold~%nav_msgs/Path path~%float32 max_plan_time~%bool clear_costmaps~%bool pause_command~%bool continue_command~%~%#relative move parameters~%float64 yaw~%bool collision_detection~%bool collision_avoidance~%float64 disable_collision_check_dist~%float64 max_linear_speed~%float64 max_rotational_speed~%float64 pid_dist_offset~%float64 target_offset~%bool only_collision_detection~%float64 timeout~%~%#docking move parameters~%int32 pattern_type~%int32 pattern_value~%bool only_track~%bool same_goal~%string pose_frame~%geometry_msgs/Pose2D pose~%geometry_msgs/Pose2D offset~%float64 bar_length~%float64 bar_distance~%float64 shelf_leg_asymmetry_x~%float64 tolerance~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MirMoveBaseGoal)))
  "Returns full string definition for message of type 'MirMoveBaseGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%#move type~%int16 BASE_MOVE = 0~%int16 GLOBAL_MOVE = 1~%int16 RELATIVE_MOVE = 2~%int16 RELATIVE_MARKER_MOVE = 3~%int16 DOCKING_MOVE = 4~%int16 DOCKING_GLOBAL_MOVE = 5~%int16 move_task~%~%#shared parameters~%geometry_msgs/PoseStamped target_pose~%~%#global move parameters~%float64 goal_dist_threshold~%float64 goal_orientation_threshold~%nav_msgs/Path path~%float32 max_plan_time~%bool clear_costmaps~%bool pause_command~%bool continue_command~%~%#relative move parameters~%float64 yaw~%bool collision_detection~%bool collision_avoidance~%float64 disable_collision_check_dist~%float64 max_linear_speed~%float64 max_rotational_speed~%float64 pid_dist_offset~%float64 target_offset~%bool only_collision_detection~%float64 timeout~%~%#docking move parameters~%int32 pattern_type~%int32 pattern_value~%bool only_track~%bool same_goal~%string pose_frame~%geometry_msgs/Pose2D pose~%geometry_msgs/Pose2D offset~%float64 bar_length~%float64 bar_distance~%float64 shelf_leg_asymmetry_x~%float64 tolerance~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MirMoveBaseGoal>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
     4
     1
     1
     1
     8
     1
     1
     8
     8
     8
     8
     8
     1
     8
     4
     4
     1
     1
     4 (cl:length (cl:slot-value msg 'pose_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'offset))
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MirMoveBaseGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MirMoveBaseGoal
    (cl:cons ':move_task (move_task msg))
    (cl:cons ':target_pose (target_pose msg))
    (cl:cons ':goal_dist_threshold (goal_dist_threshold msg))
    (cl:cons ':goal_orientation_threshold (goal_orientation_threshold msg))
    (cl:cons ':path (path msg))
    (cl:cons ':max_plan_time (max_plan_time msg))
    (cl:cons ':clear_costmaps (clear_costmaps msg))
    (cl:cons ':pause_command (pause_command msg))
    (cl:cons ':continue_command (continue_command msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':collision_detection (collision_detection msg))
    (cl:cons ':collision_avoidance (collision_avoidance msg))
    (cl:cons ':disable_collision_check_dist (disable_collision_check_dist msg))
    (cl:cons ':max_linear_speed (max_linear_speed msg))
    (cl:cons ':max_rotational_speed (max_rotational_speed msg))
    (cl:cons ':pid_dist_offset (pid_dist_offset msg))
    (cl:cons ':target_offset (target_offset msg))
    (cl:cons ':only_collision_detection (only_collision_detection msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':pattern_type (pattern_type msg))
    (cl:cons ':pattern_value (pattern_value msg))
    (cl:cons ':only_track (only_track msg))
    (cl:cons ':same_goal (same_goal msg))
    (cl:cons ':pose_frame (pose_frame msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':bar_length (bar_length msg))
    (cl:cons ':bar_distance (bar_distance msg))
    (cl:cons ':shelf_leg_asymmetry_x (shelf_leg_asymmetry_x msg))
    (cl:cons ':tolerance (tolerance msg))
))
