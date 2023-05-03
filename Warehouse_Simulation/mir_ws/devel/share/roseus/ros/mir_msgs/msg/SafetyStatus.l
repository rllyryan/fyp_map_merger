;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::SafetyStatus)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'SafetyStatus (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::SAFETYSTATUS")
  (make-package "MIR_MSGS::SAFETYSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SafetyStatus.msg.html


(intern "*MUTE_FRONT_RIGHT*" (find-package "MIR_MSGS::SAFETYSTATUS"))
(shadow '*MUTE_FRONT_RIGHT* (find-package "MIR_MSGS::SAFETYSTATUS"))
(defconstant mir_msgs::SafetyStatus::*MUTE_FRONT_RIGHT* 1)
(intern "*MUTE_FRONT_CENTER*" (find-package "MIR_MSGS::SAFETYSTATUS"))
(shadow '*MUTE_FRONT_CENTER* (find-package "MIR_MSGS::SAFETYSTATUS"))
(defconstant mir_msgs::SafetyStatus::*MUTE_FRONT_CENTER* 2)
(intern "*MUTE_FRONT_LEFT*" (find-package "MIR_MSGS::SAFETYSTATUS"))
(shadow '*MUTE_FRONT_LEFT* (find-package "MIR_MSGS::SAFETYSTATUS"))
(defconstant mir_msgs::SafetyStatus::*MUTE_FRONT_LEFT* 4)
(intern "*MUTE_LEFT_CENTER*" (find-package "MIR_MSGS::SAFETYSTATUS"))
(shadow '*MUTE_LEFT_CENTER* (find-package "MIR_MSGS::SAFETYSTATUS"))
(defconstant mir_msgs::SafetyStatus::*MUTE_LEFT_CENTER* 8)
(intern "*MUTE_REAR_LEFT*" (find-package "MIR_MSGS::SAFETYSTATUS"))
(shadow '*MUTE_REAR_LEFT* (find-package "MIR_MSGS::SAFETYSTATUS"))
(defconstant mir_msgs::SafetyStatus::*MUTE_REAR_LEFT* 16)
(intern "*MUTE_REAR_CENTER*" (find-package "MIR_MSGS::SAFETYSTATUS"))
(shadow '*MUTE_REAR_CENTER* (find-package "MIR_MSGS::SAFETYSTATUS"))
(defconstant mir_msgs::SafetyStatus::*MUTE_REAR_CENTER* 32)
(intern "*MUTE_REAR_RIGHT*" (find-package "MIR_MSGS::SAFETYSTATUS"))
(shadow '*MUTE_REAR_RIGHT* (find-package "MIR_MSGS::SAFETYSTATUS"))
(defconstant mir_msgs::SafetyStatus::*MUTE_REAR_RIGHT* 64)
(intern "*MUTE_RIGHT_CENTER*" (find-package "MIR_MSGS::SAFETYSTATUS"))
(shadow '*MUTE_RIGHT_CENTER* (find-package "MIR_MSGS::SAFETYSTATUS"))
(defconstant mir_msgs::SafetyStatus::*MUTE_RIGHT_CENTER* 128)
(intern "*MUTE_FRONT*" (find-package "MIR_MSGS::SAFETYSTATUS"))
(shadow '*MUTE_FRONT* (find-package "MIR_MSGS::SAFETYSTATUS"))
(defconstant mir_msgs::SafetyStatus::*MUTE_FRONT* 7)
(intern "*MUTE_LEFT*" (find-package "MIR_MSGS::SAFETYSTATUS"))
(shadow '*MUTE_LEFT* (find-package "MIR_MSGS::SAFETYSTATUS"))
(defconstant mir_msgs::SafetyStatus::*MUTE_LEFT* 28)
(intern "*MUTE_REAR*" (find-package "MIR_MSGS::SAFETYSTATUS"))
(shadow '*MUTE_REAR* (find-package "MIR_MSGS::SAFETYSTATUS"))
(defconstant mir_msgs::SafetyStatus::*MUTE_REAR* 112)
(intern "*MUTE_RIGHT*" (find-package "MIR_MSGS::SAFETYSTATUS"))
(shadow '*MUTE_RIGHT* (find-package "MIR_MSGS::SAFETYSTATUS"))
(defconstant mir_msgs::SafetyStatus::*MUTE_RIGHT* 193)
(intern "*MUTE_SIDES*" (find-package "MIR_MSGS::SAFETYSTATUS"))
(shadow '*MUTE_SIDES* (find-package "MIR_MSGS::SAFETYSTATUS"))
(defconstant mir_msgs::SafetyStatus::*MUTE_SIDES* 221)
(intern "*MUTE_ALL*" (find-package "MIR_MSGS::SAFETYSTATUS"))
(shadow '*MUTE_ALL* (find-package "MIR_MSGS::SAFETYSTATUS"))
(defconstant mir_msgs::SafetyStatus::*MUTE_ALL* 255)

(defun mir_msgs::SafetyStatus-to-symbol (const)
  (cond
        ((= const 1) 'mir_msgs::SafetyStatus::*MUTE_FRONT_RIGHT*)
        ((= const 2) 'mir_msgs::SafetyStatus::*MUTE_FRONT_CENTER*)
        ((= const 4) 'mir_msgs::SafetyStatus::*MUTE_FRONT_LEFT*)
        ((= const 8) 'mir_msgs::SafetyStatus::*MUTE_LEFT_CENTER*)
        ((= const 16) 'mir_msgs::SafetyStatus::*MUTE_REAR_LEFT*)
        ((= const 32) 'mir_msgs::SafetyStatus::*MUTE_REAR_CENTER*)
        ((= const 64) 'mir_msgs::SafetyStatus::*MUTE_REAR_RIGHT*)
        ((= const 128) 'mir_msgs::SafetyStatus::*MUTE_RIGHT_CENTER*)
        ((= const 7) 'mir_msgs::SafetyStatus::*MUTE_FRONT*)
        ((= const 28) 'mir_msgs::SafetyStatus::*MUTE_LEFT*)
        ((= const 112) 'mir_msgs::SafetyStatus::*MUTE_REAR*)
        ((= const 193) 'mir_msgs::SafetyStatus::*MUTE_RIGHT*)
        ((= const 221) 'mir_msgs::SafetyStatus::*MUTE_SIDES*)
        ((= const 255) 'mir_msgs::SafetyStatus::*MUTE_ALL*)
        (t nil)))

(defclass mir_msgs::SafetyStatus
  :super ros::object
  :slots (_is_connected _is_firmware_ok _firmware_version _in_protective_stop _in_emergency_stop _sto_feedback _is_restart_required _is_safety_muted _max_lin_speed _max_rot_speed _mute_mask _partial_mute_mask _is_limited_speed_active _is_lifter_down _in_sleep_mode _in_manual_mode _is_manual_mode_restart_required ))

(defmethod mir_msgs::SafetyStatus
  (:init
   (&key
    ((:is_connected __is_connected) nil)
    ((:is_firmware_ok __is_firmware_ok) nil)
    ((:firmware_version __firmware_version) 0)
    ((:in_protective_stop __in_protective_stop) nil)
    ((:in_emergency_stop __in_emergency_stop) nil)
    ((:sto_feedback __sto_feedback) nil)
    ((:is_restart_required __is_restart_required) nil)
    ((:is_safety_muted __is_safety_muted) nil)
    ((:max_lin_speed __max_lin_speed) 0.0)
    ((:max_rot_speed __max_rot_speed) 0.0)
    ((:mute_mask __mute_mask) 0)
    ((:partial_mute_mask __partial_mute_mask) 0)
    ((:is_limited_speed_active __is_limited_speed_active) nil)
    ((:is_lifter_down __is_lifter_down) nil)
    ((:in_sleep_mode __in_sleep_mode) nil)
    ((:in_manual_mode __in_manual_mode) nil)
    ((:is_manual_mode_restart_required __is_manual_mode_restart_required) nil)
    )
   (send-super :init)
   (setq _is_connected __is_connected)
   (setq _is_firmware_ok __is_firmware_ok)
   (setq _firmware_version (round __firmware_version))
   (setq _in_protective_stop __in_protective_stop)
   (setq _in_emergency_stop __in_emergency_stop)
   (setq _sto_feedback __sto_feedback)
   (setq _is_restart_required __is_restart_required)
   (setq _is_safety_muted __is_safety_muted)
   (setq _max_lin_speed (float __max_lin_speed))
   (setq _max_rot_speed (float __max_rot_speed))
   (setq _mute_mask (round __mute_mask))
   (setq _partial_mute_mask (round __partial_mute_mask))
   (setq _is_limited_speed_active __is_limited_speed_active)
   (setq _is_lifter_down __is_lifter_down)
   (setq _in_sleep_mode __in_sleep_mode)
   (setq _in_manual_mode __in_manual_mode)
   (setq _is_manual_mode_restart_required __is_manual_mode_restart_required)
   self)
  (:is_connected
   (&optional (__is_connected :null))
   (if (not (eq __is_connected :null)) (setq _is_connected __is_connected)) _is_connected)
  (:is_firmware_ok
   (&optional (__is_firmware_ok :null))
   (if (not (eq __is_firmware_ok :null)) (setq _is_firmware_ok __is_firmware_ok)) _is_firmware_ok)
  (:firmware_version
   (&optional __firmware_version)
   (if __firmware_version (setq _firmware_version __firmware_version)) _firmware_version)
  (:in_protective_stop
   (&optional (__in_protective_stop :null))
   (if (not (eq __in_protective_stop :null)) (setq _in_protective_stop __in_protective_stop)) _in_protective_stop)
  (:in_emergency_stop
   (&optional (__in_emergency_stop :null))
   (if (not (eq __in_emergency_stop :null)) (setq _in_emergency_stop __in_emergency_stop)) _in_emergency_stop)
  (:sto_feedback
   (&optional (__sto_feedback :null))
   (if (not (eq __sto_feedback :null)) (setq _sto_feedback __sto_feedback)) _sto_feedback)
  (:is_restart_required
   (&optional (__is_restart_required :null))
   (if (not (eq __is_restart_required :null)) (setq _is_restart_required __is_restart_required)) _is_restart_required)
  (:is_safety_muted
   (&optional (__is_safety_muted :null))
   (if (not (eq __is_safety_muted :null)) (setq _is_safety_muted __is_safety_muted)) _is_safety_muted)
  (:max_lin_speed
   (&optional __max_lin_speed)
   (if __max_lin_speed (setq _max_lin_speed __max_lin_speed)) _max_lin_speed)
  (:max_rot_speed
   (&optional __max_rot_speed)
   (if __max_rot_speed (setq _max_rot_speed __max_rot_speed)) _max_rot_speed)
  (:mute_mask
   (&optional __mute_mask)
   (if __mute_mask (setq _mute_mask __mute_mask)) _mute_mask)
  (:partial_mute_mask
   (&optional __partial_mute_mask)
   (if __partial_mute_mask (setq _partial_mute_mask __partial_mute_mask)) _partial_mute_mask)
  (:is_limited_speed_active
   (&optional (__is_limited_speed_active :null))
   (if (not (eq __is_limited_speed_active :null)) (setq _is_limited_speed_active __is_limited_speed_active)) _is_limited_speed_active)
  (:is_lifter_down
   (&optional (__is_lifter_down :null))
   (if (not (eq __is_lifter_down :null)) (setq _is_lifter_down __is_lifter_down)) _is_lifter_down)
  (:in_sleep_mode
   (&optional (__in_sleep_mode :null))
   (if (not (eq __in_sleep_mode :null)) (setq _in_sleep_mode __in_sleep_mode)) _in_sleep_mode)
  (:in_manual_mode
   (&optional (__in_manual_mode :null))
   (if (not (eq __in_manual_mode :null)) (setq _in_manual_mode __in_manual_mode)) _in_manual_mode)
  (:is_manual_mode_restart_required
   (&optional (__is_manual_mode_restart_required :null))
   (if (not (eq __is_manual_mode_restart_required :null)) (setq _is_manual_mode_restart_required __is_manual_mode_restart_required)) _is_manual_mode_restart_required)
  (:serialization-length
   ()
   (+
    ;; bool _is_connected
    1
    ;; bool _is_firmware_ok
    1
    ;; int32 _firmware_version
    4
    ;; bool _in_protective_stop
    1
    ;; bool _in_emergency_stop
    1
    ;; bool _sto_feedback
    1
    ;; bool _is_restart_required
    1
    ;; bool _is_safety_muted
    1
    ;; float64 _max_lin_speed
    8
    ;; float64 _max_rot_speed
    8
    ;; uint8 _mute_mask
    1
    ;; uint8 _partial_mute_mask
    1
    ;; bool _is_limited_speed_active
    1
    ;; bool _is_lifter_down
    1
    ;; bool _in_sleep_mode
    1
    ;; bool _in_manual_mode
    1
    ;; bool _is_manual_mode_restart_required
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_connected
       (if _is_connected (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_firmware_ok
       (if _is_firmware_ok (write-byte -1 s) (write-byte 0 s))
     ;; int32 _firmware_version
       (write-long _firmware_version s)
     ;; bool _in_protective_stop
       (if _in_protective_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _in_emergency_stop
       (if _in_emergency_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _sto_feedback
       (if _sto_feedback (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_restart_required
       (if _is_restart_required (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_safety_muted
       (if _is_safety_muted (write-byte -1 s) (write-byte 0 s))
     ;; float64 _max_lin_speed
       (sys::poke _max_lin_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_rot_speed
       (sys::poke _max_rot_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _mute_mask
       (write-byte _mute_mask s)
     ;; uint8 _partial_mute_mask
       (write-byte _partial_mute_mask s)
     ;; bool _is_limited_speed_active
       (if _is_limited_speed_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_lifter_down
       (if _is_lifter_down (write-byte -1 s) (write-byte 0 s))
     ;; bool _in_sleep_mode
       (if _in_sleep_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _in_manual_mode
       (if _in_manual_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_manual_mode_restart_required
       (if _is_manual_mode_restart_required (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_connected
     (setq _is_connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_firmware_ok
     (setq _is_firmware_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _firmware_version
     (setq _firmware_version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _in_protective_stop
     (setq _in_protective_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _in_emergency_stop
     (setq _in_emergency_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sto_feedback
     (setq _sto_feedback (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_restart_required
     (setq _is_restart_required (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_safety_muted
     (setq _is_safety_muted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _max_lin_speed
     (setq _max_lin_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_rot_speed
     (setq _max_rot_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _mute_mask
     (setq _mute_mask (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _partial_mute_mask
     (setq _partial_mute_mask (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _is_limited_speed_active
     (setq _is_limited_speed_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_lifter_down
     (setq _is_lifter_down (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _in_sleep_mode
     (setq _in_sleep_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _in_manual_mode
     (setq _in_manual_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_manual_mode_restart_required
     (setq _is_manual_mode_restart_required (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_msgs::SafetyStatus :md5sum-) "f5cb6a913e2b7e074185c459a63c7796")
(setf (get mir_msgs::SafetyStatus :datatype-) "mir_msgs/SafetyStatus")
(setf (get mir_msgs::SafetyStatus :definition-)
      "bool is_connected

bool is_firmware_ok
int32 firmware_version

bool in_protective_stop
bool in_emergency_stop
bool sto_feedback
bool is_restart_required

bool is_safety_muted
float64 max_lin_speed
float64 max_rot_speed

# Defines for filling out the mute_mask
uint8 MUTE_FRONT_RIGHT  = 1
uint8 MUTE_FRONT_CENTER = 2
uint8 MUTE_FRONT_LEFT   = 4
uint8 MUTE_LEFT_CENTER  = 8
uint8 MUTE_REAR_LEFT    = 16
uint8 MUTE_REAR_CENTER  = 32
uint8 MUTE_REAR_RIGHT   = 64
uint8 MUTE_RIGHT_CENTER = 128

uint8 MUTE_FRONT        = 7
uint8 MUTE_LEFT         = 28
uint8 MUTE_REAR         = 112
uint8 MUTE_RIGHT        = 193
uint8 MUTE_SIDES        = 221
uint8 MUTE_ALL          = 255

uint8 mute_mask
uint8 partial_mute_mask

bool is_limited_speed_active
bool is_lifter_down
bool in_sleep_mode

bool in_manual_mode
bool is_manual_mode_restart_required

")



(provide :mir_msgs/SafetyStatus "f5cb6a913e2b7e074185c459a63c7796")


