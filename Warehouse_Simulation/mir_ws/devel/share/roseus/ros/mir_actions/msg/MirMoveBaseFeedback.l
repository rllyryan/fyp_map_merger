;; Auto-generated. Do not edit!


(when (boundp 'mir_actions::MirMoveBaseFeedback)
  (if (not (find-package "MIR_ACTIONS"))
    (make-package "MIR_ACTIONS"))
  (shadow 'MirMoveBaseFeedback (find-package "MIR_ACTIONS")))
(unless (find-package "MIR_ACTIONS::MIRMOVEBASEFEEDBACK")
  (make-package "MIR_ACTIONS::MIRMOVEBASEFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude MirMoveBaseFeedback.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*NOT_READY*" (find-package "MIR_ACTIONS::MIRMOVEBASEFEEDBACK"))
(shadow '*NOT_READY* (find-package "MIR_ACTIONS::MIRMOVEBASEFEEDBACK"))
(defconstant mir_actions::MirMoveBaseFeedback::*NOT_READY* -1)
(intern "*PLANNING*" (find-package "MIR_ACTIONS::MIRMOVEBASEFEEDBACK"))
(shadow '*PLANNING* (find-package "MIR_ACTIONS::MIRMOVEBASEFEEDBACK"))
(defconstant mir_actions::MirMoveBaseFeedback::*PLANNING* 0)
(intern "*CONTROLLING*" (find-package "MIR_ACTIONS::MIRMOVEBASEFEEDBACK"))
(shadow '*CONTROLLING* (find-package "MIR_ACTIONS::MIRMOVEBASEFEEDBACK"))
(defconstant mir_actions::MirMoveBaseFeedback::*CONTROLLING* 1)
(intern "*CLEARING*" (find-package "MIR_ACTIONS::MIRMOVEBASEFEEDBACK"))
(shadow '*CLEARING* (find-package "MIR_ACTIONS::MIRMOVEBASEFEEDBACK"))
(defconstant mir_actions::MirMoveBaseFeedback::*CLEARING* 2)
(intern "*DOCKING*" (find-package "MIR_ACTIONS::MIRMOVEBASEFEEDBACK"))
(shadow '*DOCKING* (find-package "MIR_ACTIONS::MIRMOVEBASEFEEDBACK"))
(defconstant mir_actions::MirMoveBaseFeedback::*DOCKING* 3)
(intern "*COLLISION*" (find-package "MIR_ACTIONS::MIRMOVEBASEFEEDBACK"))
(shadow '*COLLISION* (find-package "MIR_ACTIONS::MIRMOVEBASEFEEDBACK"))
(defconstant mir_actions::MirMoveBaseFeedback::*COLLISION* 4)

(defun mir_actions::MirMoveBaseFeedback-to-symbol (const)
  (cond
        ((= const -1) 'mir_actions::MirMoveBaseFeedback::*NOT_READY*)
        ((= const 0) 'mir_actions::MirMoveBaseFeedback::*PLANNING*)
        ((= const 1) 'mir_actions::MirMoveBaseFeedback::*CONTROLLING*)
        ((= const 2) 'mir_actions::MirMoveBaseFeedback::*CLEARING*)
        ((= const 3) 'mir_actions::MirMoveBaseFeedback::*DOCKING*)
        ((= const 4) 'mir_actions::MirMoveBaseFeedback::*COLLISION*)
        (t nil)))

(defclass mir_actions::MirMoveBaseFeedback
  :super ros::object
  :slots (_state _base_position _current_goal _dist_to_goal _pose _marker_inversion ))

(defmethod mir_actions::MirMoveBaseFeedback
  (:init
   (&key
    ((:state __state) 0)
    ((:base_position __base_position) (instance geometry_msgs::PoseStamped :init))
    ((:current_goal __current_goal) (instance geometry_msgs::PoseStamped :init))
    ((:dist_to_goal __dist_to_goal) (instance geometry_msgs::PoseStamped :init))
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    ((:marker_inversion __marker_inversion) nil)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _base_position __base_position)
   (setq _current_goal __current_goal)
   (setq _dist_to_goal __dist_to_goal)
   (setq _pose __pose)
   (setq _marker_inversion __marker_inversion)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:base_position
   (&rest __base_position)
   (if (keywordp (car __base_position))
       (send* _base_position __base_position)
     (progn
       (if __base_position (setq _base_position (car __base_position)))
       _base_position)))
  (:current_goal
   (&rest __current_goal)
   (if (keywordp (car __current_goal))
       (send* _current_goal __current_goal)
     (progn
       (if __current_goal (setq _current_goal (car __current_goal)))
       _current_goal)))
  (:dist_to_goal
   (&rest __dist_to_goal)
   (if (keywordp (car __dist_to_goal))
       (send* _dist_to_goal __dist_to_goal)
     (progn
       (if __dist_to_goal (setq _dist_to_goal (car __dist_to_goal)))
       _dist_to_goal)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:marker_inversion
   (&optional (__marker_inversion :null))
   (if (not (eq __marker_inversion :null)) (setq _marker_inversion __marker_inversion)) _marker_inversion)
  (:serialization-length
   ()
   (+
    ;; int8 _state
    1
    ;; geometry_msgs/PoseStamped _base_position
    (send _base_position :serialization-length)
    ;; geometry_msgs/PoseStamped _current_goal
    (send _current_goal :serialization-length)
    ;; geometry_msgs/PoseStamped _dist_to_goal
    (send _dist_to_goal :serialization-length)
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ;; bool _marker_inversion
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _state
       (write-byte _state s)
     ;; geometry_msgs/PoseStamped _base_position
       (send _base_position :serialize s)
     ;; geometry_msgs/PoseStamped _current_goal
       (send _current_goal :serialize s)
     ;; geometry_msgs/PoseStamped _dist_to_goal
       (send _dist_to_goal :serialize s)
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;; bool _marker_inversion
       (if _marker_inversion (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _state 127) (setq _state (- _state 256)))
   ;; geometry_msgs/PoseStamped _base_position
     (send _base_position :deserialize buf ptr-) (incf ptr- (send _base_position :serialization-length))
   ;; geometry_msgs/PoseStamped _current_goal
     (send _current_goal :deserialize buf ptr-) (incf ptr- (send _current_goal :serialization-length))
   ;; geometry_msgs/PoseStamped _dist_to_goal
     (send _dist_to_goal :deserialize buf ptr-) (incf ptr- (send _dist_to_goal :serialization-length))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; bool _marker_inversion
     (setq _marker_inversion (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_actions::MirMoveBaseFeedback :md5sum-) "21813e475f136e507c907218957f4df9")
(setf (get mir_actions::MirMoveBaseFeedback :datatype-) "mir_actions/MirMoveBaseFeedback")
(setf (get mir_actions::MirMoveBaseFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback
#shared
int8 NOT_READY = -1

#global move states
int8 PLANNING = 0
int8 CONTROLLING = 1
int8 CLEARING = 2

#relative move states
int8 DOCKING = 3
int8 COLLISION = 4

#shared feedback
int8 state

#global move feedback
geometry_msgs/PoseStamped base_position

#relative move feedback
geometry_msgs/PoseStamped current_goal
geometry_msgs/PoseStamped dist_to_goal

#docking move feedback
#int8 DOCKING = 0
#int8 COLLISION = 1
#int8 state
geometry_msgs/Pose2D pose
bool marker_inversion


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



(provide :mir_actions/MirMoveBaseFeedback "21813e475f136e507c907218957f4df9")


