;; Auto-generated. Do not edit!


(when (boundp 'mir_actions::MirMoveBaseResult)
  (if (not (find-package "MIR_ACTIONS"))
    (make-package "MIR_ACTIONS"))
  (shadow 'MirMoveBaseResult (find-package "MIR_ACTIONS")))
(unless (find-package "MIR_ACTIONS::MIRMOVEBASERESULT")
  (make-package "MIR_ACTIONS::MIRMOVEBASERESULT"))

(in-package "ROS")
;;//! \htmlinclude MirMoveBaseResult.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*UNDEFINED*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*UNDEFINED* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*UNDEFINED* 0)
(intern "*GOAL_REACHED*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*GOAL_REACHED* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*GOAL_REACHED* 1)
(intern "*FAILED*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*FAILED* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*FAILED* -1)
(intern "*MARKER_VISIBLE*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*MARKER_VISIBLE* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*MARKER_VISIBLE* 2)
(intern "*FAILED_NO_PATH*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*FAILED_NO_PATH* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*FAILED_NO_PATH* -2)
(intern "*FAILED_GOAL_IN_STATIC_OBSTACLE*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*FAILED_GOAL_IN_STATIC_OBSTACLE* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*FAILED_GOAL_IN_STATIC_OBSTACLE* -3)
(intern "*FAILED_GOAL_IN_FORBIDDEN_AREA*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*FAILED_GOAL_IN_FORBIDDEN_AREA* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*FAILED_GOAL_IN_FORBIDDEN_AREA* -4)
(intern "*FAILED_GOAL_IN_DYNAMIC_OBSTACLE*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*FAILED_GOAL_IN_DYNAMIC_OBSTACLE* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*FAILED_GOAL_IN_DYNAMIC_OBSTACLE* -5)
(intern "*FAILED_ROBOT_IN_COLLISION*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*FAILED_ROBOT_IN_COLLISION* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*FAILED_ROBOT_IN_COLLISION* -6)
(intern "*FAILED_ROBOT_IN_FORBIDDEN_AREA*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*FAILED_ROBOT_IN_FORBIDDEN_AREA* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*FAILED_ROBOT_IN_FORBIDDEN_AREA* -7)
(intern "*FAILED_UNKNOWN_TRAILER*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*FAILED_UNKNOWN_TRAILER* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*FAILED_UNKNOWN_TRAILER* -8)
(intern "*FAILED_TO_PASS_GLOBAL_PLAN*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*FAILED_TO_PASS_GLOBAL_PLAN* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*FAILED_TO_PASS_GLOBAL_PLAN* -9)
(intern "*FAILED_NO_VALID_RECOVERY_CONTROL*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*FAILED_NO_VALID_RECOVERY_CONTROL* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*FAILED_NO_VALID_RECOVERY_CONTROL* -10)
(intern "*FAILED_UNKNOWN_PLANNER_ERROR*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*FAILED_UNKNOWN_PLANNER_ERROR* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*FAILED_UNKNOWN_PLANNER_ERROR* -11)
(intern "*FAILED_ROBOT_OSCILLATING*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*FAILED_ROBOT_OSCILLATING* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*FAILED_ROBOT_OSCILLATING* -12)
(intern "*FAILED_SOFTWARE_ERROR*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*FAILED_SOFTWARE_ERROR* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*FAILED_SOFTWARE_ERROR* -13)
(intern "*FAILED_TIMEOUT*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*FAILED_TIMEOUT* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*FAILED_TIMEOUT* -14)
(intern "*FAILED_COLLISION*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*FAILED_COLLISION* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*FAILED_COLLISION* -15)
(intern "*INVALID_GOAL*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*INVALID_GOAL* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*INVALID_GOAL* -16)
(intern "*FAILED_MARKER_TRACKING_ERROR*" (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(shadow '*FAILED_MARKER_TRACKING_ERROR* (find-package "MIR_ACTIONS::MIRMOVEBASERESULT"))
(defconstant mir_actions::MirMoveBaseResult::*FAILED_MARKER_TRACKING_ERROR* -17)

(defun mir_actions::MirMoveBaseResult-to-symbol (const)
  (cond
        ((= const 0) 'mir_actions::MirMoveBaseResult::*UNDEFINED*)
        ((= const 1) 'mir_actions::MirMoveBaseResult::*GOAL_REACHED*)
        ((= const -1) 'mir_actions::MirMoveBaseResult::*FAILED*)
        ((= const 2) 'mir_actions::MirMoveBaseResult::*MARKER_VISIBLE*)
        ((= const -2) 'mir_actions::MirMoveBaseResult::*FAILED_NO_PATH*)
        ((= const -3) 'mir_actions::MirMoveBaseResult::*FAILED_GOAL_IN_STATIC_OBSTACLE*)
        ((= const -4) 'mir_actions::MirMoveBaseResult::*FAILED_GOAL_IN_FORBIDDEN_AREA*)
        ((= const -5) 'mir_actions::MirMoveBaseResult::*FAILED_GOAL_IN_DYNAMIC_OBSTACLE*)
        ((= const -6) 'mir_actions::MirMoveBaseResult::*FAILED_ROBOT_IN_COLLISION*)
        ((= const -7) 'mir_actions::MirMoveBaseResult::*FAILED_ROBOT_IN_FORBIDDEN_AREA*)
        ((= const -8) 'mir_actions::MirMoveBaseResult::*FAILED_UNKNOWN_TRAILER*)
        ((= const -9) 'mir_actions::MirMoveBaseResult::*FAILED_TO_PASS_GLOBAL_PLAN*)
        ((= const -10) 'mir_actions::MirMoveBaseResult::*FAILED_NO_VALID_RECOVERY_CONTROL*)
        ((= const -11) 'mir_actions::MirMoveBaseResult::*FAILED_UNKNOWN_PLANNER_ERROR*)
        ((= const -12) 'mir_actions::MirMoveBaseResult::*FAILED_ROBOT_OSCILLATING*)
        ((= const -13) 'mir_actions::MirMoveBaseResult::*FAILED_SOFTWARE_ERROR*)
        ((= const -14) 'mir_actions::MirMoveBaseResult::*FAILED_TIMEOUT*)
        ((= const -15) 'mir_actions::MirMoveBaseResult::*FAILED_COLLISION*)
        ((= const -16) 'mir_actions::MirMoveBaseResult::*INVALID_GOAL*)
        ((= const -17) 'mir_actions::MirMoveBaseResult::*FAILED_MARKER_TRACKING_ERROR*)
        (t nil)))

(defclass mir_actions::MirMoveBaseResult
  :super ros::object
  :slots (_end_state _end_pose _pose _message ))

(defmethod mir_actions::MirMoveBaseResult
  (:init
   (&key
    ((:end_state __end_state) 0)
    ((:end_pose __end_pose) (instance geometry_msgs::PoseStamped :init))
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    ((:message __message) "")
    )
   (send-super :init)
   (setq _end_state (round __end_state))
   (setq _end_pose __end_pose)
   (setq _pose __pose)
   (setq _message (string __message))
   self)
  (:end_state
   (&optional __end_state)
   (if __end_state (setq _end_state __end_state)) _end_state)
  (:end_pose
   (&rest __end_pose)
   (if (keywordp (car __end_pose))
       (send* _end_pose __end_pose)
     (progn
       (if __end_pose (setq _end_pose (car __end_pose)))
       _end_pose)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int16 _end_state
    2
    ;; geometry_msgs/PoseStamped _end_pose
    (send _end_pose :serialization-length)
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _end_state
       (write-word _end_state s)
     ;; geometry_msgs/PoseStamped _end_pose
       (send _end_pose :serialize s)
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _end_state
     (setq _end_state (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/PoseStamped _end_pose
     (send _end_pose :deserialize buf ptr-) (incf ptr- (send _end_pose :serialization-length))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mir_actions::MirMoveBaseResult :md5sum-) "e54c1567292aca96a9941233d552b908")
(setf (get mir_actions::MirMoveBaseResult :datatype-) "mir_actions/MirMoveBaseResult")
(setf (get mir_actions::MirMoveBaseResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition

#shared states
int16 UNDEFINED = 0
int16 GOAL_REACHED = 1
int16 FAILED = -1

#global move states
int16 MARKER_VISIBLE = 2
int16 FAILED_NO_PATH = -2
int16 FAILED_GOAL_IN_STATIC_OBSTACLE = -3
int16 FAILED_GOAL_IN_FORBIDDEN_AREA = -4
int16 FAILED_GOAL_IN_DYNAMIC_OBSTACLE = -5
int16 FAILED_ROBOT_IN_COLLISION = -6
int16 FAILED_ROBOT_IN_FORBIDDEN_AREA = -7
int16 FAILED_UNKNOWN_TRAILER = -8
int16 FAILED_TO_PASS_GLOBAL_PLAN = -9
int16 FAILED_NO_VALID_RECOVERY_CONTROL = -10
int16 FAILED_UNKNOWN_PLANNER_ERROR = -11
int16 FAILED_ROBOT_OSCILLATING = -12
int16 FAILED_SOFTWARE_ERROR = -13

#relative move states
int16 FAILED_TIMEOUT = -14
int16 FAILED_COLLISION = -15
int16 INVALID_GOAL = -16

#docking move states
int16 FAILED_MARKER_TRACKING_ERROR = -17

#shared results
int16 end_state
geometry_msgs/PoseStamped end_pose

#docking results
geometry_msgs/Pose2D pose

#feedback for UI
string message


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



(provide :mir_actions/MirMoveBaseResult "e54c1567292aca96a9941233d552b908")


