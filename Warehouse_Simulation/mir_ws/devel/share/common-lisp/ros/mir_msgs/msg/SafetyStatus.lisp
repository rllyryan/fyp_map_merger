; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude SafetyStatus.msg.html

(cl:defclass <SafetyStatus> (roslisp-msg-protocol:ros-message)
  ((is_connected
    :reader is_connected
    :initarg :is_connected
    :type cl:boolean
    :initform cl:nil)
   (is_firmware_ok
    :reader is_firmware_ok
    :initarg :is_firmware_ok
    :type cl:boolean
    :initform cl:nil)
   (firmware_version
    :reader firmware_version
    :initarg :firmware_version
    :type cl:integer
    :initform 0)
   (in_protective_stop
    :reader in_protective_stop
    :initarg :in_protective_stop
    :type cl:boolean
    :initform cl:nil)
   (in_emergency_stop
    :reader in_emergency_stop
    :initarg :in_emergency_stop
    :type cl:boolean
    :initform cl:nil)
   (sto_feedback
    :reader sto_feedback
    :initarg :sto_feedback
    :type cl:boolean
    :initform cl:nil)
   (is_restart_required
    :reader is_restart_required
    :initarg :is_restart_required
    :type cl:boolean
    :initform cl:nil)
   (is_safety_muted
    :reader is_safety_muted
    :initarg :is_safety_muted
    :type cl:boolean
    :initform cl:nil)
   (max_lin_speed
    :reader max_lin_speed
    :initarg :max_lin_speed
    :type cl:float
    :initform 0.0)
   (max_rot_speed
    :reader max_rot_speed
    :initarg :max_rot_speed
    :type cl:float
    :initform 0.0)
   (mute_mask
    :reader mute_mask
    :initarg :mute_mask
    :type cl:fixnum
    :initform 0)
   (partial_mute_mask
    :reader partial_mute_mask
    :initarg :partial_mute_mask
    :type cl:fixnum
    :initform 0)
   (is_limited_speed_active
    :reader is_limited_speed_active
    :initarg :is_limited_speed_active
    :type cl:boolean
    :initform cl:nil)
   (is_lifter_down
    :reader is_lifter_down
    :initarg :is_lifter_down
    :type cl:boolean
    :initform cl:nil)
   (in_sleep_mode
    :reader in_sleep_mode
    :initarg :in_sleep_mode
    :type cl:boolean
    :initform cl:nil)
   (in_manual_mode
    :reader in_manual_mode
    :initarg :in_manual_mode
    :type cl:boolean
    :initform cl:nil)
   (is_manual_mode_restart_required
    :reader is_manual_mode_restart_required
    :initarg :is_manual_mode_restart_required
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SafetyStatus (<SafetyStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<SafetyStatus> is deprecated: use mir_msgs-msg:SafetyStatus instead.")))

(cl:ensure-generic-function 'is_connected-val :lambda-list '(m))
(cl:defmethod is_connected-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:is_connected-val is deprecated.  Use mir_msgs-msg:is_connected instead.")
  (is_connected m))

(cl:ensure-generic-function 'is_firmware_ok-val :lambda-list '(m))
(cl:defmethod is_firmware_ok-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:is_firmware_ok-val is deprecated.  Use mir_msgs-msg:is_firmware_ok instead.")
  (is_firmware_ok m))

(cl:ensure-generic-function 'firmware_version-val :lambda-list '(m))
(cl:defmethod firmware_version-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:firmware_version-val is deprecated.  Use mir_msgs-msg:firmware_version instead.")
  (firmware_version m))

(cl:ensure-generic-function 'in_protective_stop-val :lambda-list '(m))
(cl:defmethod in_protective_stop-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:in_protective_stop-val is deprecated.  Use mir_msgs-msg:in_protective_stop instead.")
  (in_protective_stop m))

(cl:ensure-generic-function 'in_emergency_stop-val :lambda-list '(m))
(cl:defmethod in_emergency_stop-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:in_emergency_stop-val is deprecated.  Use mir_msgs-msg:in_emergency_stop instead.")
  (in_emergency_stop m))

(cl:ensure-generic-function 'sto_feedback-val :lambda-list '(m))
(cl:defmethod sto_feedback-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:sto_feedback-val is deprecated.  Use mir_msgs-msg:sto_feedback instead.")
  (sto_feedback m))

(cl:ensure-generic-function 'is_restart_required-val :lambda-list '(m))
(cl:defmethod is_restart_required-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:is_restart_required-val is deprecated.  Use mir_msgs-msg:is_restart_required instead.")
  (is_restart_required m))

(cl:ensure-generic-function 'is_safety_muted-val :lambda-list '(m))
(cl:defmethod is_safety_muted-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:is_safety_muted-val is deprecated.  Use mir_msgs-msg:is_safety_muted instead.")
  (is_safety_muted m))

(cl:ensure-generic-function 'max_lin_speed-val :lambda-list '(m))
(cl:defmethod max_lin_speed-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:max_lin_speed-val is deprecated.  Use mir_msgs-msg:max_lin_speed instead.")
  (max_lin_speed m))

(cl:ensure-generic-function 'max_rot_speed-val :lambda-list '(m))
(cl:defmethod max_rot_speed-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:max_rot_speed-val is deprecated.  Use mir_msgs-msg:max_rot_speed instead.")
  (max_rot_speed m))

(cl:ensure-generic-function 'mute_mask-val :lambda-list '(m))
(cl:defmethod mute_mask-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:mute_mask-val is deprecated.  Use mir_msgs-msg:mute_mask instead.")
  (mute_mask m))

(cl:ensure-generic-function 'partial_mute_mask-val :lambda-list '(m))
(cl:defmethod partial_mute_mask-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:partial_mute_mask-val is deprecated.  Use mir_msgs-msg:partial_mute_mask instead.")
  (partial_mute_mask m))

(cl:ensure-generic-function 'is_limited_speed_active-val :lambda-list '(m))
(cl:defmethod is_limited_speed_active-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:is_limited_speed_active-val is deprecated.  Use mir_msgs-msg:is_limited_speed_active instead.")
  (is_limited_speed_active m))

(cl:ensure-generic-function 'is_lifter_down-val :lambda-list '(m))
(cl:defmethod is_lifter_down-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:is_lifter_down-val is deprecated.  Use mir_msgs-msg:is_lifter_down instead.")
  (is_lifter_down m))

(cl:ensure-generic-function 'in_sleep_mode-val :lambda-list '(m))
(cl:defmethod in_sleep_mode-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:in_sleep_mode-val is deprecated.  Use mir_msgs-msg:in_sleep_mode instead.")
  (in_sleep_mode m))

(cl:ensure-generic-function 'in_manual_mode-val :lambda-list '(m))
(cl:defmethod in_manual_mode-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:in_manual_mode-val is deprecated.  Use mir_msgs-msg:in_manual_mode instead.")
  (in_manual_mode m))

(cl:ensure-generic-function 'is_manual_mode_restart_required-val :lambda-list '(m))
(cl:defmethod is_manual_mode_restart_required-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:is_manual_mode_restart_required-val is deprecated.  Use mir_msgs-msg:is_manual_mode_restart_required instead.")
  (is_manual_mode_restart_required m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SafetyStatus>)))
    "Constants for message type '<SafetyStatus>"
  '((:MUTE_FRONT_RIGHT . 1)
    (:MUTE_FRONT_CENTER . 2)
    (:MUTE_FRONT_LEFT . 4)
    (:MUTE_LEFT_CENTER . 8)
    (:MUTE_REAR_LEFT . 16)
    (:MUTE_REAR_CENTER . 32)
    (:MUTE_REAR_RIGHT . 64)
    (:MUTE_RIGHT_CENTER . 128)
    (:MUTE_FRONT . 7)
    (:MUTE_LEFT . 28)
    (:MUTE_REAR . 112)
    (:MUTE_RIGHT . 193)
    (:MUTE_SIDES . 221)
    (:MUTE_ALL . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SafetyStatus)))
    "Constants for message type 'SafetyStatus"
  '((:MUTE_FRONT_RIGHT . 1)
    (:MUTE_FRONT_CENTER . 2)
    (:MUTE_FRONT_LEFT . 4)
    (:MUTE_LEFT_CENTER . 8)
    (:MUTE_REAR_LEFT . 16)
    (:MUTE_REAR_CENTER . 32)
    (:MUTE_REAR_RIGHT . 64)
    (:MUTE_RIGHT_CENTER . 128)
    (:MUTE_FRONT . 7)
    (:MUTE_LEFT . 28)
    (:MUTE_REAR . 112)
    (:MUTE_RIGHT . 193)
    (:MUTE_SIDES . 221)
    (:MUTE_ALL . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyStatus>) ostream)
  "Serializes a message object of type '<SafetyStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_connected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_firmware_ok) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'firmware_version)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_protective_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_emergency_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sto_feedback) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_restart_required) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_safety_muted) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_lin_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_rot_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mute_mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'partial_mute_mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_limited_speed_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_lifter_down) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_sleep_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_manual_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_manual_mode_restart_required) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyStatus>) istream)
  "Deserializes a message object of type '<SafetyStatus>"
    (cl:setf (cl:slot-value msg 'is_connected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_firmware_ok) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'firmware_version) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'in_protective_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'in_emergency_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sto_feedback) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_restart_required) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_safety_muted) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_lin_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_rot_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mute_mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'partial_mute_mask)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_limited_speed_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_lifter_down) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'in_sleep_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'in_manual_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_manual_mode_restart_required) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyStatus>)))
  "Returns string type for a message object of type '<SafetyStatus>"
  "mir_msgs/SafetyStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyStatus)))
  "Returns string type for a message object of type 'SafetyStatus"
  "mir_msgs/SafetyStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyStatus>)))
  "Returns md5sum for a message object of type '<SafetyStatus>"
  "f5cb6a913e2b7e074185c459a63c7796")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyStatus)))
  "Returns md5sum for a message object of type 'SafetyStatus"
  "f5cb6a913e2b7e074185c459a63c7796")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyStatus>)))
  "Returns full string definition for message of type '<SafetyStatus>"
  (cl:format cl:nil "bool is_connected~%~%bool is_firmware_ok~%int32 firmware_version~%~%bool in_protective_stop~%bool in_emergency_stop~%bool sto_feedback~%bool is_restart_required~%~%bool is_safety_muted~%float64 max_lin_speed~%float64 max_rot_speed~%~%# Defines for filling out the mute_mask~%uint8 MUTE_FRONT_RIGHT  = 1~%uint8 MUTE_FRONT_CENTER = 2~%uint8 MUTE_FRONT_LEFT   = 4~%uint8 MUTE_LEFT_CENTER  = 8~%uint8 MUTE_REAR_LEFT    = 16~%uint8 MUTE_REAR_CENTER  = 32~%uint8 MUTE_REAR_RIGHT   = 64~%uint8 MUTE_RIGHT_CENTER = 128~%~%uint8 MUTE_FRONT        = 7~%uint8 MUTE_LEFT         = 28~%uint8 MUTE_REAR         = 112~%uint8 MUTE_RIGHT        = 193~%uint8 MUTE_SIDES        = 221~%uint8 MUTE_ALL          = 255~%~%uint8 mute_mask~%uint8 partial_mute_mask~%~%bool is_limited_speed_active~%bool is_lifter_down~%bool in_sleep_mode~%~%bool in_manual_mode~%bool is_manual_mode_restart_required~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyStatus)))
  "Returns full string definition for message of type 'SafetyStatus"
  (cl:format cl:nil "bool is_connected~%~%bool is_firmware_ok~%int32 firmware_version~%~%bool in_protective_stop~%bool in_emergency_stop~%bool sto_feedback~%bool is_restart_required~%~%bool is_safety_muted~%float64 max_lin_speed~%float64 max_rot_speed~%~%# Defines for filling out the mute_mask~%uint8 MUTE_FRONT_RIGHT  = 1~%uint8 MUTE_FRONT_CENTER = 2~%uint8 MUTE_FRONT_LEFT   = 4~%uint8 MUTE_LEFT_CENTER  = 8~%uint8 MUTE_REAR_LEFT    = 16~%uint8 MUTE_REAR_CENTER  = 32~%uint8 MUTE_REAR_RIGHT   = 64~%uint8 MUTE_RIGHT_CENTER = 128~%~%uint8 MUTE_FRONT        = 7~%uint8 MUTE_LEFT         = 28~%uint8 MUTE_REAR         = 112~%uint8 MUTE_RIGHT        = 193~%uint8 MUTE_SIDES        = 221~%uint8 MUTE_ALL          = 255~%~%uint8 mute_mask~%uint8 partial_mute_mask~%~%bool is_limited_speed_active~%bool is_lifter_down~%bool in_sleep_mode~%~%bool in_manual_mode~%bool is_manual_mode_restart_required~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyStatus>))
  (cl:+ 0
     1
     1
     4
     1
     1
     1
     1
     1
     8
     8
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyStatus
    (cl:cons ':is_connected (is_connected msg))
    (cl:cons ':is_firmware_ok (is_firmware_ok msg))
    (cl:cons ':firmware_version (firmware_version msg))
    (cl:cons ':in_protective_stop (in_protective_stop msg))
    (cl:cons ':in_emergency_stop (in_emergency_stop msg))
    (cl:cons ':sto_feedback (sto_feedback msg))
    (cl:cons ':is_restart_required (is_restart_required msg))
    (cl:cons ':is_safety_muted (is_safety_muted msg))
    (cl:cons ':max_lin_speed (max_lin_speed msg))
    (cl:cons ':max_rot_speed (max_rot_speed msg))
    (cl:cons ':mute_mask (mute_mask msg))
    (cl:cons ':partial_mute_mask (partial_mute_mask msg))
    (cl:cons ':is_limited_speed_active (is_limited_speed_active msg))
    (cl:cons ':is_lifter_down (is_lifter_down msg))
    (cl:cons ':in_sleep_mode (in_sleep_mode msg))
    (cl:cons ':in_manual_mode (in_manual_mode msg))
    (cl:cons ':is_manual_mode_restart_required (is_manual_mode_restart_required msg))
))
