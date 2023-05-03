;; Auto-generated. Do not edit!


(when (boundp 'mir_actions::MirMoveBaseGoal)
  (if (not (find-package "MIR_ACTIONS"))
    (make-package "MIR_ACTIONS"))
  (shadow 'MirMoveBaseGoal (find-package "MIR_ACTIONS")))
(unless (find-package "MIR_ACTIONS::MIRMOVEBASEGOAL")
  (make-package "MIR_ACTIONS::MIRMOVEBASEGOAL"))

(in-package "ROS")
;;//! \htmlinclude MirMoveBaseGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(intern "*BASE_MOVE*" (find-package "MIR_ACTIONS::MIRMOVEBASEGOAL"))
(shadow '*BASE_MOVE* (find-package "MIR_ACTIONS::MIRMOVEBASEGOAL"))
(defconstant mir_actions::MirMoveBaseGoal::*BASE_MOVE* 0)
(intern "*GLOBAL_MOVE*" (find-package "MIR_ACTIONS::MIRMOVEBASEGOAL"))
(shadow '*GLOBAL_MOVE* (find-package "MIR_ACTIONS::MIRMOVEBASEGOAL"))
(defconstant mir_actions::MirMoveBaseGoal::*GLOBAL_MOVE* 1)
(intern "*RELATIVE_MOVE*" (find-package "MIR_ACTIONS::MIRMOVEBASEGOAL"))
(shadow '*RELATIVE_MOVE* (find-package "MIR_ACTIONS::MIRMOVEBASEGOAL"))
(defconstant mir_actions::MirMoveBaseGoal::*RELATIVE_MOVE* 2)
(intern "*RELATIVE_MARKER_MOVE*" (find-package "MIR_ACTIONS::MIRMOVEBASEGOAL"))
(shadow '*RELATIVE_MARKER_MOVE* (find-package "MIR_ACTIONS::MIRMOVEBASEGOAL"))
(defconstant mir_actions::MirMoveBaseGoal::*RELATIVE_MARKER_MOVE* 3)
(intern "*DOCKING_MOVE*" (find-package "MIR_ACTIONS::MIRMOVEBASEGOAL"))
(shadow '*DOCKING_MOVE* (find-package "MIR_ACTIONS::MIRMOVEBASEGOAL"))
(defconstant mir_actions::MirMoveBaseGoal::*DOCKING_MOVE* 4)
(intern "*DOCKING_GLOBAL_MOVE*" (find-package "MIR_ACTIONS::MIRMOVEBASEGOAL"))
(shadow '*DOCKING_GLOBAL_MOVE* (find-package "MIR_ACTIONS::MIRMOVEBASEGOAL"))
(defconstant mir_actions::MirMoveBaseGoal::*DOCKING_GLOBAL_MOVE* 5)

(defun mir_actions::MirMoveBaseGoal-to-symbol (const)
  (cond
        ((= const 0) 'mir_actions::MirMoveBaseGoal::*BASE_MOVE*)
        ((= const 1) 'mir_actions::MirMoveBaseGoal::*GLOBAL_MOVE*)
        ((= const 2) 'mir_actions::MirMoveBaseGoal::*RELATIVE_MOVE*)
        ((= const 3) 'mir_actions::MirMoveBaseGoal::*RELATIVE_MARKER_MOVE*)
        ((= const 4) 'mir_actions::MirMoveBaseGoal::*DOCKING_MOVE*)
        ((= const 5) 'mir_actions::MirMoveBaseGoal::*DOCKING_GLOBAL_MOVE*)
        (t nil)))

(defclass mir_actions::MirMoveBaseGoal
  :super ros::object
  :slots (_move_task _target_pose _goal_dist_threshold _goal_orientation_threshold _path _max_plan_time _clear_costmaps _pause_command _continue_command _yaw _collision_detection _collision_avoidance _disable_collision_check_dist _max_linear_speed _max_rotational_speed _pid_dist_offset _target_offset _only_collision_detection _timeout _pattern_type _pattern_value _only_track _same_goal _pose_frame _pose _offset _bar_length _bar_distance _shelf_leg_asymmetry_x _tolerance ))

(defmethod mir_actions::MirMoveBaseGoal
  (:init
   (&key
    ((:move_task __move_task) 0)
    ((:target_pose __target_pose) (instance geometry_msgs::PoseStamped :init))
    ((:goal_dist_threshold __goal_dist_threshold) 0.0)
    ((:goal_orientation_threshold __goal_orientation_threshold) 0.0)
    ((:path __path) (instance nav_msgs::Path :init))
    ((:max_plan_time __max_plan_time) 0.0)
    ((:clear_costmaps __clear_costmaps) nil)
    ((:pause_command __pause_command) nil)
    ((:continue_command __continue_command) nil)
    ((:yaw __yaw) 0.0)
    ((:collision_detection __collision_detection) nil)
    ((:collision_avoidance __collision_avoidance) nil)
    ((:disable_collision_check_dist __disable_collision_check_dist) 0.0)
    ((:max_linear_speed __max_linear_speed) 0.0)
    ((:max_rotational_speed __max_rotational_speed) 0.0)
    ((:pid_dist_offset __pid_dist_offset) 0.0)
    ((:target_offset __target_offset) 0.0)
    ((:only_collision_detection __only_collision_detection) nil)
    ((:timeout __timeout) 0.0)
    ((:pattern_type __pattern_type) 0)
    ((:pattern_value __pattern_value) 0)
    ((:only_track __only_track) nil)
    ((:same_goal __same_goal) nil)
    ((:pose_frame __pose_frame) "")
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    ((:offset __offset) (instance geometry_msgs::Pose2D :init))
    ((:bar_length __bar_length) 0.0)
    ((:bar_distance __bar_distance) 0.0)
    ((:shelf_leg_asymmetry_x __shelf_leg_asymmetry_x) 0.0)
    ((:tolerance __tolerance) 0.0)
    )
   (send-super :init)
   (setq _move_task (round __move_task))
   (setq _target_pose __target_pose)
   (setq _goal_dist_threshold (float __goal_dist_threshold))
   (setq _goal_orientation_threshold (float __goal_orientation_threshold))
   (setq _path __path)
   (setq _max_plan_time (float __max_plan_time))
   (setq _clear_costmaps __clear_costmaps)
   (setq _pause_command __pause_command)
   (setq _continue_command __continue_command)
   (setq _yaw (float __yaw))
   (setq _collision_detection __collision_detection)
   (setq _collision_avoidance __collision_avoidance)
   (setq _disable_collision_check_dist (float __disable_collision_check_dist))
   (setq _max_linear_speed (float __max_linear_speed))
   (setq _max_rotational_speed (float __max_rotational_speed))
   (setq _pid_dist_offset (float __pid_dist_offset))
   (setq _target_offset (float __target_offset))
   (setq _only_collision_detection __only_collision_detection)
   (setq _timeout (float __timeout))
   (setq _pattern_type (round __pattern_type))
   (setq _pattern_value (round __pattern_value))
   (setq _only_track __only_track)
   (setq _same_goal __same_goal)
   (setq _pose_frame (string __pose_frame))
   (setq _pose __pose)
   (setq _offset __offset)
   (setq _bar_length (float __bar_length))
   (setq _bar_distance (float __bar_distance))
   (setq _shelf_leg_asymmetry_x (float __shelf_leg_asymmetry_x))
   (setq _tolerance (float __tolerance))
   self)
  (:move_task
   (&optional __move_task)
   (if __move_task (setq _move_task __move_task)) _move_task)
  (:target_pose
   (&rest __target_pose)
   (if (keywordp (car __target_pose))
       (send* _target_pose __target_pose)
     (progn
       (if __target_pose (setq _target_pose (car __target_pose)))
       _target_pose)))
  (:goal_dist_threshold
   (&optional __goal_dist_threshold)
   (if __goal_dist_threshold (setq _goal_dist_threshold __goal_dist_threshold)) _goal_dist_threshold)
  (:goal_orientation_threshold
   (&optional __goal_orientation_threshold)
   (if __goal_orientation_threshold (setq _goal_orientation_threshold __goal_orientation_threshold)) _goal_orientation_threshold)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:max_plan_time
   (&optional __max_plan_time)
   (if __max_plan_time (setq _max_plan_time __max_plan_time)) _max_plan_time)
  (:clear_costmaps
   (&optional (__clear_costmaps :null))
   (if (not (eq __clear_costmaps :null)) (setq _clear_costmaps __clear_costmaps)) _clear_costmaps)
  (:pause_command
   (&optional (__pause_command :null))
   (if (not (eq __pause_command :null)) (setq _pause_command __pause_command)) _pause_command)
  (:continue_command
   (&optional (__continue_command :null))
   (if (not (eq __continue_command :null)) (setq _continue_command __continue_command)) _continue_command)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:collision_detection
   (&optional (__collision_detection :null))
   (if (not (eq __collision_detection :null)) (setq _collision_detection __collision_detection)) _collision_detection)
  (:collision_avoidance
   (&optional (__collision_avoidance :null))
   (if (not (eq __collision_avoidance :null)) (setq _collision_avoidance __collision_avoidance)) _collision_avoidance)
  (:disable_collision_check_dist
   (&optional __disable_collision_check_dist)
   (if __disable_collision_check_dist (setq _disable_collision_check_dist __disable_collision_check_dist)) _disable_collision_check_dist)
  (:max_linear_speed
   (&optional __max_linear_speed)
   (if __max_linear_speed (setq _max_linear_speed __max_linear_speed)) _max_linear_speed)
  (:max_rotational_speed
   (&optional __max_rotational_speed)
   (if __max_rotational_speed (setq _max_rotational_speed __max_rotational_speed)) _max_rotational_speed)
  (:pid_dist_offset
   (&optional __pid_dist_offset)
   (if __pid_dist_offset (setq _pid_dist_offset __pid_dist_offset)) _pid_dist_offset)
  (:target_offset
   (&optional __target_offset)
   (if __target_offset (setq _target_offset __target_offset)) _target_offset)
  (:only_collision_detection
   (&optional (__only_collision_detection :null))
   (if (not (eq __only_collision_detection :null)) (setq _only_collision_detection __only_collision_detection)) _only_collision_detection)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:pattern_type
   (&optional __pattern_type)
   (if __pattern_type (setq _pattern_type __pattern_type)) _pattern_type)
  (:pattern_value
   (&optional __pattern_value)
   (if __pattern_value (setq _pattern_value __pattern_value)) _pattern_value)
  (:only_track
   (&optional (__only_track :null))
   (if (not (eq __only_track :null)) (setq _only_track __only_track)) _only_track)
  (:same_goal
   (&optional (__same_goal :null))
   (if (not (eq __same_goal :null)) (setq _same_goal __same_goal)) _same_goal)
  (:pose_frame
   (&optional __pose_frame)
   (if __pose_frame (setq _pose_frame __pose_frame)) _pose_frame)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:offset
   (&rest __offset)
   (if (keywordp (car __offset))
       (send* _offset __offset)
     (progn
       (if __offset (setq _offset (car __offset)))
       _offset)))
  (:bar_length
   (&optional __bar_length)
   (if __bar_length (setq _bar_length __bar_length)) _bar_length)
  (:bar_distance
   (&optional __bar_distance)
   (if __bar_distance (setq _bar_distance __bar_distance)) _bar_distance)
  (:shelf_leg_asymmetry_x
   (&optional __shelf_leg_asymmetry_x)
   (if __shelf_leg_asymmetry_x (setq _shelf_leg_asymmetry_x __shelf_leg_asymmetry_x)) _shelf_leg_asymmetry_x)
  (:tolerance
   (&optional __tolerance)
   (if __tolerance (setq _tolerance __tolerance)) _tolerance)
  (:serialization-length
   ()
   (+
    ;; int16 _move_task
    2
    ;; geometry_msgs/PoseStamped _target_pose
    (send _target_pose :serialization-length)
    ;; float64 _goal_dist_threshold
    8
    ;; float64 _goal_orientation_threshold
    8
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ;; float32 _max_plan_time
    4
    ;; bool _clear_costmaps
    1
    ;; bool _pause_command
    1
    ;; bool _continue_command
    1
    ;; float64 _yaw
    8
    ;; bool _collision_detection
    1
    ;; bool _collision_avoidance
    1
    ;; float64 _disable_collision_check_dist
    8
    ;; float64 _max_linear_speed
    8
    ;; float64 _max_rotational_speed
    8
    ;; float64 _pid_dist_offset
    8
    ;; float64 _target_offset
    8
    ;; bool _only_collision_detection
    1
    ;; float64 _timeout
    8
    ;; int32 _pattern_type
    4
    ;; int32 _pattern_value
    4
    ;; bool _only_track
    1
    ;; bool _same_goal
    1
    ;; string _pose_frame
    4 (length _pose_frame)
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Pose2D _offset
    (send _offset :serialization-length)
    ;; float64 _bar_length
    8
    ;; float64 _bar_distance
    8
    ;; float64 _shelf_leg_asymmetry_x
    8
    ;; float64 _tolerance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _move_task
       (write-word _move_task s)
     ;; geometry_msgs/PoseStamped _target_pose
       (send _target_pose :serialize s)
     ;; float64 _goal_dist_threshold
       (sys::poke _goal_dist_threshold (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _goal_orientation_threshold
       (sys::poke _goal_orientation_threshold (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;; float32 _max_plan_time
       (sys::poke _max_plan_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _clear_costmaps
       (if _clear_costmaps (write-byte -1 s) (write-byte 0 s))
     ;; bool _pause_command
       (if _pause_command (write-byte -1 s) (write-byte 0 s))
     ;; bool _continue_command
       (if _continue_command (write-byte -1 s) (write-byte 0 s))
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _collision_detection
       (if _collision_detection (write-byte -1 s) (write-byte 0 s))
     ;; bool _collision_avoidance
       (if _collision_avoidance (write-byte -1 s) (write-byte 0 s))
     ;; float64 _disable_collision_check_dist
       (sys::poke _disable_collision_check_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_linear_speed
       (sys::poke _max_linear_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_rotational_speed
       (sys::poke _max_rotational_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pid_dist_offset
       (sys::poke _pid_dist_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _target_offset
       (sys::poke _target_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _only_collision_detection
       (if _only_collision_detection (write-byte -1 s) (write-byte 0 s))
     ;; float64 _timeout
       (sys::poke _timeout (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _pattern_type
       (write-long _pattern_type s)
     ;; int32 _pattern_value
       (write-long _pattern_value s)
     ;; bool _only_track
       (if _only_track (write-byte -1 s) (write-byte 0 s))
     ;; bool _same_goal
       (if _same_goal (write-byte -1 s) (write-byte 0 s))
     ;; string _pose_frame
       (write-long (length _pose_frame) s) (princ _pose_frame s)
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Pose2D _offset
       (send _offset :serialize s)
     ;; float64 _bar_length
       (sys::poke _bar_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bar_distance
       (sys::poke _bar_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _shelf_leg_asymmetry_x
       (sys::poke _shelf_leg_asymmetry_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tolerance
       (sys::poke _tolerance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _move_task
     (setq _move_task (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/PoseStamped _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;; float64 _goal_dist_threshold
     (setq _goal_dist_threshold (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _goal_orientation_threshold
     (setq _goal_orientation_threshold (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;; float32 _max_plan_time
     (setq _max_plan_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _clear_costmaps
     (setq _clear_costmaps (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pause_command
     (setq _pause_command (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _continue_command
     (setq _continue_command (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _collision_detection
     (setq _collision_detection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _collision_avoidance
     (setq _collision_avoidance (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _disable_collision_check_dist
     (setq _disable_collision_check_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_linear_speed
     (setq _max_linear_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_rotational_speed
     (setq _max_rotational_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pid_dist_offset
     (setq _pid_dist_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _target_offset
     (setq _target_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _only_collision_detection
     (setq _only_collision_detection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _timeout
     (setq _timeout (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _pattern_type
     (setq _pattern_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pattern_value
     (setq _pattern_value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _only_track
     (setq _only_track (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _same_goal
     (setq _same_goal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _pose_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pose_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Pose2D _offset
     (send _offset :deserialize buf ptr-) (incf ptr- (send _offset :serialization-length))
   ;; float64 _bar_length
     (setq _bar_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bar_distance
     (setq _bar_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _shelf_leg_asymmetry_x
     (setq _shelf_leg_asymmetry_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tolerance
     (setq _tolerance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mir_actions::MirMoveBaseGoal :md5sum-) "d4841766618ad92857d4e3d683b072f3")
(setf (get mir_actions::MirMoveBaseGoal :datatype-) "mir_actions/MirMoveBaseGoal")
(setf (get mir_actions::MirMoveBaseGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
#move type
int16 BASE_MOVE = 0
int16 GLOBAL_MOVE = 1
int16 RELATIVE_MOVE = 2
int16 RELATIVE_MARKER_MOVE = 3
int16 DOCKING_MOVE = 4
int16 DOCKING_GLOBAL_MOVE = 5
int16 move_task

#shared parameters
geometry_msgs/PoseStamped target_pose

#global move parameters
float64 goal_dist_threshold
float64 goal_orientation_threshold
nav_msgs/Path path
float32 max_plan_time
bool clear_costmaps
bool pause_command
bool continue_command

#relative move parameters
float64 yaw
bool collision_detection
bool collision_avoidance
float64 disable_collision_check_dist
float64 max_linear_speed
float64 max_rotational_speed
float64 pid_dist_offset
float64 target_offset
bool only_collision_detection
float64 timeout

#docking move parameters
int32 pattern_type
int32 pattern_value
bool only_track
bool same_goal
string pose_frame
geometry_msgs/Pose2D pose
geometry_msgs/Pose2D offset
float64 bar_length
float64 bar_distance
float64 shelf_leg_asymmetry_x
float64 tolerance


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :mir_actions/MirMoveBaseGoal "d4841766618ad92857d4e3d683b072f3")


