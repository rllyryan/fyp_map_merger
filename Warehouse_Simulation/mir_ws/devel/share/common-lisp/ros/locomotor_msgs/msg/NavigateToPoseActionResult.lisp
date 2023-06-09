; Auto-generated. Do not edit!


(cl:in-package locomotor_msgs-msg)


;//! \htmlinclude NavigateToPoseActionResult.msg.html

(cl:defclass <NavigateToPoseActionResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type actionlib_msgs-msg:GoalStatus
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalStatus))
   (result
    :reader result
    :initarg :result
    :type locomotor_msgs-msg:NavigateToPoseResult
    :initform (cl:make-instance 'locomotor_msgs-msg:NavigateToPoseResult)))
)

(cl:defclass NavigateToPoseActionResult (<NavigateToPoseActionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigateToPoseActionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigateToPoseActionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name locomotor_msgs-msg:<NavigateToPoseActionResult> is deprecated: use locomotor_msgs-msg:NavigateToPoseActionResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavigateToPoseActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locomotor_msgs-msg:header-val is deprecated.  Use locomotor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <NavigateToPoseActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locomotor_msgs-msg:status-val is deprecated.  Use locomotor_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <NavigateToPoseActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locomotor_msgs-msg:result-val is deprecated.  Use locomotor_msgs-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigateToPoseActionResult>) ostream)
  "Serializes a message object of type '<NavigateToPoseActionResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigateToPoseActionResult>) istream)
  "Deserializes a message object of type '<NavigateToPoseActionResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigateToPoseActionResult>)))
  "Returns string type for a message object of type '<NavigateToPoseActionResult>"
  "locomotor_msgs/NavigateToPoseActionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigateToPoseActionResult)))
  "Returns string type for a message object of type 'NavigateToPoseActionResult"
  "locomotor_msgs/NavigateToPoseActionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigateToPoseActionResult>)))
  "Returns md5sum for a message object of type '<NavigateToPoseActionResult>"
  "7ffb33a836155025ac916407e00eab79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigateToPoseActionResult)))
  "Returns md5sum for a message object of type 'NavigateToPoseActionResult"
  "7ffb33a836155025ac916407e00eab79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigateToPoseActionResult>)))
  "Returns full string definition for message of type '<NavigateToPoseActionResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%NavigateToPoseResult result~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: locomotor_msgs/NavigateToPoseResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%ResultCode result_code~%~%================================================================================~%MSG: locomotor_msgs/ResultCode~%# This message contains three separate pieces.~%#    A) A code indicating which component(s) the error originates from (bitmask style)~%#    B) A code corresponding with the result_code defined in nav_core2/s.h~%#    C) A freeform string message~%~%# The enumerations below are not necessarily the exclusive values for the codes.~%# Others may implement additional values beyond the ones shown, using custom state machines.~%~%########### Component Values ###############################################~%int32 GLOBAL_COSTMAP = 1~%int32  LOCAL_COSTMAP = 2~%int32 GLOBAL_PLANNER = 4~%int32  LOCAL_PLANNER = 8~%~%########### Result Codes ###################################################~%int32 GENERIC_COSTMAP=0~%int32 COSTMAP_SAFETY=1~%int32 COSTMAP_DATA_LAG=2~%int32 GENERIC_PLANNER=3~%int32 GENERIC_GLOBAL_PLANNER=4~%int32 INVALID_START=5~%int32 START_BOUNDS=6~%int32 OCCUPIED_START=7~%int32 INVALID_GOAL=8~%int32 GOAL_BOUNDS=9~%int32 OCCUPIED_GOAL=10~%int32 NO_GLOBAL_PATH=11~%int32 GLOBAL_PLANNER_TIMEOUT=12~%int32 GENERIC_LOCAL_PLANNER=13~%int32 ILLEGAL_TRAJECTORY=14~%int32 NO_LEGAL_TRAJECTORIES=15~%int32 PLANNER_TF=16~%~%########### Actual Data ####################################################~%int32 component~%int32 result_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigateToPoseActionResult)))
  "Returns full string definition for message of type 'NavigateToPoseActionResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%NavigateToPoseResult result~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: locomotor_msgs/NavigateToPoseResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%ResultCode result_code~%~%================================================================================~%MSG: locomotor_msgs/ResultCode~%# This message contains three separate pieces.~%#    A) A code indicating which component(s) the error originates from (bitmask style)~%#    B) A code corresponding with the result_code defined in nav_core2/s.h~%#    C) A freeform string message~%~%# The enumerations below are not necessarily the exclusive values for the codes.~%# Others may implement additional values beyond the ones shown, using custom state machines.~%~%########### Component Values ###############################################~%int32 GLOBAL_COSTMAP = 1~%int32  LOCAL_COSTMAP = 2~%int32 GLOBAL_PLANNER = 4~%int32  LOCAL_PLANNER = 8~%~%########### Result Codes ###################################################~%int32 GENERIC_COSTMAP=0~%int32 COSTMAP_SAFETY=1~%int32 COSTMAP_DATA_LAG=2~%int32 GENERIC_PLANNER=3~%int32 GENERIC_GLOBAL_PLANNER=4~%int32 INVALID_START=5~%int32 START_BOUNDS=6~%int32 OCCUPIED_START=7~%int32 INVALID_GOAL=8~%int32 GOAL_BOUNDS=9~%int32 OCCUPIED_GOAL=10~%int32 NO_GLOBAL_PATH=11~%int32 GLOBAL_PLANNER_TIMEOUT=12~%int32 GENERIC_LOCAL_PLANNER=13~%int32 ILLEGAL_TRAJECTORY=14~%int32 NO_LEGAL_TRAJECTORIES=15~%int32 PLANNER_TF=16~%~%########### Actual Data ####################################################~%int32 component~%int32 result_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigateToPoseActionResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigateToPoseActionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigateToPoseActionResult
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':result (result msg))
))
