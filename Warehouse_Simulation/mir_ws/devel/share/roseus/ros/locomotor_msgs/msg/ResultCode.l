;; Auto-generated. Do not edit!


(when (boundp 'locomotor_msgs::ResultCode)
  (if (not (find-package "LOCOMOTOR_MSGS"))
    (make-package "LOCOMOTOR_MSGS"))
  (shadow 'ResultCode (find-package "LOCOMOTOR_MSGS")))
(unless (find-package "LOCOMOTOR_MSGS::RESULTCODE")
  (make-package "LOCOMOTOR_MSGS::RESULTCODE"))

(in-package "ROS")
;;//! \htmlinclude ResultCode.msg.html


(intern "*GLOBAL_COSTMAP*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*GLOBAL_COSTMAP* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*GLOBAL_COSTMAP* 1)
(intern "*LOCAL_COSTMAP*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*LOCAL_COSTMAP* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*LOCAL_COSTMAP* 2)
(intern "*GLOBAL_PLANNER*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*GLOBAL_PLANNER* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*GLOBAL_PLANNER* 4)
(intern "*LOCAL_PLANNER*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*LOCAL_PLANNER* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*LOCAL_PLANNER* 8)
(intern "*GENERIC_COSTMAP*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*GENERIC_COSTMAP* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*GENERIC_COSTMAP* 0)
(intern "*COSTMAP_SAFETY*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*COSTMAP_SAFETY* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*COSTMAP_SAFETY* 1)
(intern "*COSTMAP_DATA_LAG*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*COSTMAP_DATA_LAG* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*COSTMAP_DATA_LAG* 2)
(intern "*GENERIC_PLANNER*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*GENERIC_PLANNER* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*GENERIC_PLANNER* 3)
(intern "*GENERIC_GLOBAL_PLANNER*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*GENERIC_GLOBAL_PLANNER* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*GENERIC_GLOBAL_PLANNER* 4)
(intern "*INVALID_START*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*INVALID_START* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*INVALID_START* 5)
(intern "*START_BOUNDS*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*START_BOUNDS* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*START_BOUNDS* 6)
(intern "*OCCUPIED_START*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*OCCUPIED_START* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*OCCUPIED_START* 7)
(intern "*INVALID_GOAL*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*INVALID_GOAL* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*INVALID_GOAL* 8)
(intern "*GOAL_BOUNDS*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*GOAL_BOUNDS* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*GOAL_BOUNDS* 9)
(intern "*OCCUPIED_GOAL*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*OCCUPIED_GOAL* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*OCCUPIED_GOAL* 10)
(intern "*NO_GLOBAL_PATH*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*NO_GLOBAL_PATH* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*NO_GLOBAL_PATH* 11)
(intern "*GLOBAL_PLANNER_TIMEOUT*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*GLOBAL_PLANNER_TIMEOUT* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*GLOBAL_PLANNER_TIMEOUT* 12)
(intern "*GENERIC_LOCAL_PLANNER*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*GENERIC_LOCAL_PLANNER* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*GENERIC_LOCAL_PLANNER* 13)
(intern "*ILLEGAL_TRAJECTORY*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*ILLEGAL_TRAJECTORY* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*ILLEGAL_TRAJECTORY* 14)
(intern "*NO_LEGAL_TRAJECTORIES*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*NO_LEGAL_TRAJECTORIES* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*NO_LEGAL_TRAJECTORIES* 15)
(intern "*PLANNER_TF*" (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(shadow '*PLANNER_TF* (find-package "LOCOMOTOR_MSGS::RESULTCODE"))
(defconstant locomotor_msgs::ResultCode::*PLANNER_TF* 16)

(defun locomotor_msgs::ResultCode-to-symbol (const)
  (cond
        ((= const 1) 'locomotor_msgs::ResultCode::*GLOBAL_COSTMAP*)
        ((= const 2) 'locomotor_msgs::ResultCode::*LOCAL_COSTMAP*)
        ((= const 4) 'locomotor_msgs::ResultCode::*GLOBAL_PLANNER*)
        ((= const 8) 'locomotor_msgs::ResultCode::*LOCAL_PLANNER*)
        ((= const 0) 'locomotor_msgs::ResultCode::*GENERIC_COSTMAP*)
        ((= const 1) 'locomotor_msgs::ResultCode::*COSTMAP_SAFETY*)
        ((= const 2) 'locomotor_msgs::ResultCode::*COSTMAP_DATA_LAG*)
        ((= const 3) 'locomotor_msgs::ResultCode::*GENERIC_PLANNER*)
        ((= const 4) 'locomotor_msgs::ResultCode::*GENERIC_GLOBAL_PLANNER*)
        ((= const 5) 'locomotor_msgs::ResultCode::*INVALID_START*)
        ((= const 6) 'locomotor_msgs::ResultCode::*START_BOUNDS*)
        ((= const 7) 'locomotor_msgs::ResultCode::*OCCUPIED_START*)
        ((= const 8) 'locomotor_msgs::ResultCode::*INVALID_GOAL*)
        ((= const 9) 'locomotor_msgs::ResultCode::*GOAL_BOUNDS*)
        ((= const 10) 'locomotor_msgs::ResultCode::*OCCUPIED_GOAL*)
        ((= const 11) 'locomotor_msgs::ResultCode::*NO_GLOBAL_PATH*)
        ((= const 12) 'locomotor_msgs::ResultCode::*GLOBAL_PLANNER_TIMEOUT*)
        ((= const 13) 'locomotor_msgs::ResultCode::*GENERIC_LOCAL_PLANNER*)
        ((= const 14) 'locomotor_msgs::ResultCode::*ILLEGAL_TRAJECTORY*)
        ((= const 15) 'locomotor_msgs::ResultCode::*NO_LEGAL_TRAJECTORIES*)
        ((= const 16) 'locomotor_msgs::ResultCode::*PLANNER_TF*)
        (t nil)))

(defclass locomotor_msgs::ResultCode
  :super ros::object
  :slots (_component _result_code _message ))

(defmethod locomotor_msgs::ResultCode
  (:init
   (&key
    ((:component __component) 0)
    ((:result_code __result_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _component (round __component))
   (setq _result_code (round __result_code))
   (setq _message (string __message))
   self)
  (:component
   (&optional __component)
   (if __component (setq _component __component)) _component)
  (:result_code
   (&optional __result_code)
   (if __result_code (setq _result_code __result_code)) _result_code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int32 _component
    4
    ;; int32 _result_code
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _component
       (write-long _component s)
     ;; int32 _result_code
       (write-long _result_code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _component
     (setq _component (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _result_code
     (setq _result_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get locomotor_msgs::ResultCode :md5sum-) "9c162cbf5db9d590e1047c78cbd90371")
(setf (get locomotor_msgs::ResultCode :datatype-) "locomotor_msgs/ResultCode")
(setf (get locomotor_msgs::ResultCode :definition-)
      "# This message contains three separate pieces.
#    A) A code indicating which component(s) the error originates from (bitmask style)
#    B) A code corresponding with the result_code defined in nav_core2/s.h
#    C) A freeform string message

# The enumerations below are not necessarily the exclusive values for the codes.
# Others may implement additional values beyond the ones shown, using custom state machines.

########### Component Values ###############################################
int32 GLOBAL_COSTMAP = 1
int32  LOCAL_COSTMAP = 2
int32 GLOBAL_PLANNER = 4
int32  LOCAL_PLANNER = 8

########### Result Codes ###################################################
int32 GENERIC_COSTMAP=0
int32 COSTMAP_SAFETY=1
int32 COSTMAP_DATA_LAG=2
int32 GENERIC_PLANNER=3
int32 GENERIC_GLOBAL_PLANNER=4
int32 INVALID_START=5
int32 START_BOUNDS=6
int32 OCCUPIED_START=7
int32 INVALID_GOAL=8
int32 GOAL_BOUNDS=9
int32 OCCUPIED_GOAL=10
int32 NO_GLOBAL_PATH=11
int32 GLOBAL_PLANNER_TIMEOUT=12
int32 GENERIC_LOCAL_PLANNER=13
int32 ILLEGAL_TRAJECTORY=14
int32 NO_LEGAL_TRAJECTORIES=15
int32 PLANNER_TF=16

########### Actual Data ####################################################
int32 component
int32 result_code
string message

")



(provide :locomotor_msgs/ResultCode "9c162cbf5db9d590e1047c78cbd90371")


