;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::BMSData)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'BMSData (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::BMSDATA")
  (make-package "MIR_MSGS::BMSDATA"))

(in-package "ROS")
;;//! \htmlinclude BMSData.msg.html


(intern "*DISCHARGING*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*DISCHARGING* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*DISCHARGING* 1)
(intern "*CHARGING*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*CHARGING* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*CHARGING* 2)
(intern "*OV*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*OV* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*OV* 4)
(intern "*UV*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*UV* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*UV* 8)
(intern "*COC*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*COC* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*COC* 16)
(intern "*DOC*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*DOC* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*DOC* 32)
(intern "*DOT*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*DOT* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*DOT* 64)
(intern "*DUT*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*DUT* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*DUT* 128)
(intern "*SC*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*SC* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*SC* 512)
(intern "*COT*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*COT* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*COT* 1024)
(intern "*CUT*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*CUT* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*CUT* 2048)
(intern "*FW_STATUS_MSK*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_STATUS_MSK* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_STATUS_MSK* 2031616)
(intern "*FW_STATUS_SHIFT*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_STATUS_SHIFT* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_STATUS_SHIFT* 16)
(intern "*FW_UPD_OK*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_UPD_OK* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_UPD_OK* 0)
(intern "*FW_UPD_RUNNING*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_UPD_RUNNING* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_UPD_RUNNING* 1)
(intern "*FW_UPD_FAILED_BOOT*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_UPD_FAILED_BOOT* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_UPD_FAILED_BOOT* 2)
(intern "*FW_UPD_FAILED_APP*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_UPD_FAILED_APP* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_UPD_FAILED_APP* 3)
(intern "*FW_UPD_FAILED_PARAM*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_UPD_FAILED_PARAM* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_UPD_FAILED_PARAM* 4)
(intern "*FW_STATUS_LOW_BATT*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_STATUS_LOW_BATT* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_STATUS_LOW_BATT* 5)
(intern "*FW_STATUS_FILE_CORRUPTED*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_STATUS_FILE_CORRUPTED* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_STATUS_FILE_CORRUPTED* 6)
(intern "*FW_STATUS_CURRENT_TO_HIGH*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_STATUS_CURRENT_TO_HIGH* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_STATUS_CURRENT_TO_HIGH* 7)
(intern "*FW_STATUS_NO_CAN*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_STATUS_NO_CAN* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_STATUS_NO_CAN* 8)
(intern "*FW_BATTERY_IMBALANCE_HIGH*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*FW_BATTERY_IMBALANCE_HIGH* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*FW_BATTERY_IMBALANCE_HIGH* 9)

(defun mir_msgs::BMSData-to-symbol (const)
  (cond
        ((= const 1) 'mir_msgs::BMSData::*DISCHARGING*)
        ((= const 2) 'mir_msgs::BMSData::*CHARGING*)
        ((= const 4) 'mir_msgs::BMSData::*OV*)
        ((= const 8) 'mir_msgs::BMSData::*UV*)
        ((= const 16) 'mir_msgs::BMSData::*COC*)
        ((= const 32) 'mir_msgs::BMSData::*DOC*)
        ((= const 64) 'mir_msgs::BMSData::*DOT*)
        ((= const 128) 'mir_msgs::BMSData::*DUT*)
        ((= const 512) 'mir_msgs::BMSData::*SC*)
        ((= const 1024) 'mir_msgs::BMSData::*COT*)
        ((= const 2048) 'mir_msgs::BMSData::*CUT*)
        ((= const 2031616) 'mir_msgs::BMSData::*FW_STATUS_MSK*)
        ((= const 16) 'mir_msgs::BMSData::*FW_STATUS_SHIFT*)
        ((= const 0) 'mir_msgs::BMSData::*FW_UPD_OK*)
        ((= const 1) 'mir_msgs::BMSData::*FW_UPD_RUNNING*)
        ((= const 2) 'mir_msgs::BMSData::*FW_UPD_FAILED_BOOT*)
        ((= const 3) 'mir_msgs::BMSData::*FW_UPD_FAILED_APP*)
        ((= const 4) 'mir_msgs::BMSData::*FW_UPD_FAILED_PARAM*)
        ((= const 5) 'mir_msgs::BMSData::*FW_STATUS_LOW_BATT*)
        ((= const 6) 'mir_msgs::BMSData::*FW_STATUS_FILE_CORRUPTED*)
        ((= const 7) 'mir_msgs::BMSData::*FW_STATUS_CURRENT_TO_HIGH*)
        ((= const 8) 'mir_msgs::BMSData::*FW_STATUS_NO_CAN*)
        ((= const 9) 'mir_msgs::BMSData::*FW_BATTERY_IMBALANCE_HIGH*)
        (t nil)))

(defclass mir_msgs::BMSData
  :super ros::object
  :slots (_pack_voltage _charge_current _discharge_current _state_of_charge _remaining_time_to_full_charge _remaining_capacity _state_of_health _status_flags _temperature _cell_voltage _bmz_flag _full_voltage _full_capacity _temperature2 _temperature3 _cycle_count _dsg_overcurrent_counter _chg_overcurrent_counter _hw_major _hw_minor _fw_major _fw_minor _fw_patch _rec_fw_major _rec_fw_minor _bl_major _bl_minor _status_enabled _status_current_limitation _status_switch_off_warn1 _status_switch_off_warn2 _status_fully_discharged _status_nearly_discharged _status_chargefet_on _status_dischargefet_on _status_discharging _status_fully_charged _status_charging _status_temp_charging_err _status_cell_over_voltage _status_cell_under_voltage _status_charge_over_current _status_shortcircuit _status_discharge_over_current _status_temp_discharging_err _status_charger_detected _last_battery_msg_time ))

(defmethod mir_msgs::BMSData
  (:init
   (&key
    ((:pack_voltage __pack_voltage) 0.0)
    ((:charge_current __charge_current) 0.0)
    ((:discharge_current __discharge_current) 0.0)
    ((:state_of_charge __state_of_charge) 0)
    ((:remaining_time_to_full_charge __remaining_time_to_full_charge) 0.0)
    ((:remaining_capacity __remaining_capacity) 0)
    ((:state_of_health __state_of_health) 0)
    ((:status_flags __status_flags) 0)
    ((:temperature __temperature) 0)
    ((:cell_voltage __cell_voltage) (make-array 0 :initial-element 0 :element-type :integer))
    ((:bmz_flag __bmz_flag) 0)
    ((:full_voltage __full_voltage) 0.0)
    ((:full_capacity __full_capacity) 0)
    ((:temperature2 __temperature2) 0)
    ((:temperature3 __temperature3) 0)
    ((:cycle_count __cycle_count) 0)
    ((:dsg_overcurrent_counter __dsg_overcurrent_counter) 0)
    ((:chg_overcurrent_counter __chg_overcurrent_counter) 0)
    ((:hw_major __hw_major) 0)
    ((:hw_minor __hw_minor) 0)
    ((:fw_major __fw_major) 0)
    ((:fw_minor __fw_minor) 0)
    ((:fw_patch __fw_patch) 0)
    ((:rec_fw_major __rec_fw_major) 0)
    ((:rec_fw_minor __rec_fw_minor) 0)
    ((:bl_major __bl_major) 0)
    ((:bl_minor __bl_minor) 0)
    ((:status_enabled __status_enabled) 0)
    ((:status_current_limitation __status_current_limitation) 0)
    ((:status_switch_off_warn1 __status_switch_off_warn1) 0)
    ((:status_switch_off_warn2 __status_switch_off_warn2) 0)
    ((:status_fully_discharged __status_fully_discharged) 0)
    ((:status_nearly_discharged __status_nearly_discharged) 0)
    ((:status_chargefet_on __status_chargefet_on) 0)
    ((:status_dischargefet_on __status_dischargefet_on) 0)
    ((:status_discharging __status_discharging) 0)
    ((:status_fully_charged __status_fully_charged) 0)
    ((:status_charging __status_charging) 0)
    ((:status_temp_charging_err __status_temp_charging_err) 0)
    ((:status_cell_over_voltage __status_cell_over_voltage) 0)
    ((:status_cell_under_voltage __status_cell_under_voltage) 0)
    ((:status_charge_over_current __status_charge_over_current) 0)
    ((:status_shortcircuit __status_shortcircuit) 0)
    ((:status_discharge_over_current __status_discharge_over_current) 0)
    ((:status_temp_discharging_err __status_temp_discharging_err) 0)
    ((:status_charger_detected __status_charger_detected) 0)
    ((:last_battery_msg_time __last_battery_msg_time) 0.0)
    )
   (send-super :init)
   (setq _pack_voltage (float __pack_voltage))
   (setq _charge_current (float __charge_current))
   (setq _discharge_current (float __discharge_current))
   (setq _state_of_charge (round __state_of_charge))
   (setq _remaining_time_to_full_charge (float __remaining_time_to_full_charge))
   (setq _remaining_capacity (round __remaining_capacity))
   (setq _state_of_health (round __state_of_health))
   (setq _status_flags (round __status_flags))
   (setq _temperature (round __temperature))
   (setq _cell_voltage __cell_voltage)
   (setq _bmz_flag (round __bmz_flag))
   (setq _full_voltage (float __full_voltage))
   (setq _full_capacity (round __full_capacity))
   (setq _temperature2 (round __temperature2))
   (setq _temperature3 (round __temperature3))
   (setq _cycle_count (round __cycle_count))
   (setq _dsg_overcurrent_counter (round __dsg_overcurrent_counter))
   (setq _chg_overcurrent_counter (round __chg_overcurrent_counter))
   (setq _hw_major (round __hw_major))
   (setq _hw_minor (round __hw_minor))
   (setq _fw_major (round __fw_major))
   (setq _fw_minor (round __fw_minor))
   (setq _fw_patch (round __fw_patch))
   (setq _rec_fw_major (round __rec_fw_major))
   (setq _rec_fw_minor (round __rec_fw_minor))
   (setq _bl_major (round __bl_major))
   (setq _bl_minor (round __bl_minor))
   (setq _status_enabled (round __status_enabled))
   (setq _status_current_limitation (round __status_current_limitation))
   (setq _status_switch_off_warn1 (round __status_switch_off_warn1))
   (setq _status_switch_off_warn2 (round __status_switch_off_warn2))
   (setq _status_fully_discharged (round __status_fully_discharged))
   (setq _status_nearly_discharged (round __status_nearly_discharged))
   (setq _status_chargefet_on (round __status_chargefet_on))
   (setq _status_dischargefet_on (round __status_dischargefet_on))
   (setq _status_discharging (round __status_discharging))
   (setq _status_fully_charged (round __status_fully_charged))
   (setq _status_charging (round __status_charging))
   (setq _status_temp_charging_err (round __status_temp_charging_err))
   (setq _status_cell_over_voltage (round __status_cell_over_voltage))
   (setq _status_cell_under_voltage (round __status_cell_under_voltage))
   (setq _status_charge_over_current (round __status_charge_over_current))
   (setq _status_shortcircuit (round __status_shortcircuit))
   (setq _status_discharge_over_current (round __status_discharge_over_current))
   (setq _status_temp_discharging_err (round __status_temp_discharging_err))
   (setq _status_charger_detected (round __status_charger_detected))
   (setq _last_battery_msg_time (float __last_battery_msg_time))
   self)
  (:pack_voltage
   (&optional __pack_voltage)
   (if __pack_voltage (setq _pack_voltage __pack_voltage)) _pack_voltage)
  (:charge_current
   (&optional __charge_current)
   (if __charge_current (setq _charge_current __charge_current)) _charge_current)
  (:discharge_current
   (&optional __discharge_current)
   (if __discharge_current (setq _discharge_current __discharge_current)) _discharge_current)
  (:state_of_charge
   (&optional __state_of_charge)
   (if __state_of_charge (setq _state_of_charge __state_of_charge)) _state_of_charge)
  (:remaining_time_to_full_charge
   (&optional __remaining_time_to_full_charge)
   (if __remaining_time_to_full_charge (setq _remaining_time_to_full_charge __remaining_time_to_full_charge)) _remaining_time_to_full_charge)
  (:remaining_capacity
   (&optional __remaining_capacity)
   (if __remaining_capacity (setq _remaining_capacity __remaining_capacity)) _remaining_capacity)
  (:state_of_health
   (&optional __state_of_health)
   (if __state_of_health (setq _state_of_health __state_of_health)) _state_of_health)
  (:status_flags
   (&optional __status_flags)
   (if __status_flags (setq _status_flags __status_flags)) _status_flags)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:cell_voltage
   (&optional __cell_voltage)
   (if __cell_voltage (setq _cell_voltage __cell_voltage)) _cell_voltage)
  (:bmz_flag
   (&optional __bmz_flag)
   (if __bmz_flag (setq _bmz_flag __bmz_flag)) _bmz_flag)
  (:full_voltage
   (&optional __full_voltage)
   (if __full_voltage (setq _full_voltage __full_voltage)) _full_voltage)
  (:full_capacity
   (&optional __full_capacity)
   (if __full_capacity (setq _full_capacity __full_capacity)) _full_capacity)
  (:temperature2
   (&optional __temperature2)
   (if __temperature2 (setq _temperature2 __temperature2)) _temperature2)
  (:temperature3
   (&optional __temperature3)
   (if __temperature3 (setq _temperature3 __temperature3)) _temperature3)
  (:cycle_count
   (&optional __cycle_count)
   (if __cycle_count (setq _cycle_count __cycle_count)) _cycle_count)
  (:dsg_overcurrent_counter
   (&optional __dsg_overcurrent_counter)
   (if __dsg_overcurrent_counter (setq _dsg_overcurrent_counter __dsg_overcurrent_counter)) _dsg_overcurrent_counter)
  (:chg_overcurrent_counter
   (&optional __chg_overcurrent_counter)
   (if __chg_overcurrent_counter (setq _chg_overcurrent_counter __chg_overcurrent_counter)) _chg_overcurrent_counter)
  (:hw_major
   (&optional __hw_major)
   (if __hw_major (setq _hw_major __hw_major)) _hw_major)
  (:hw_minor
   (&optional __hw_minor)
   (if __hw_minor (setq _hw_minor __hw_minor)) _hw_minor)
  (:fw_major
   (&optional __fw_major)
   (if __fw_major (setq _fw_major __fw_major)) _fw_major)
  (:fw_minor
   (&optional __fw_minor)
   (if __fw_minor (setq _fw_minor __fw_minor)) _fw_minor)
  (:fw_patch
   (&optional __fw_patch)
   (if __fw_patch (setq _fw_patch __fw_patch)) _fw_patch)
  (:rec_fw_major
   (&optional __rec_fw_major)
   (if __rec_fw_major (setq _rec_fw_major __rec_fw_major)) _rec_fw_major)
  (:rec_fw_minor
   (&optional __rec_fw_minor)
   (if __rec_fw_minor (setq _rec_fw_minor __rec_fw_minor)) _rec_fw_minor)
  (:bl_major
   (&optional __bl_major)
   (if __bl_major (setq _bl_major __bl_major)) _bl_major)
  (:bl_minor
   (&optional __bl_minor)
   (if __bl_minor (setq _bl_minor __bl_minor)) _bl_minor)
  (:status_enabled
   (&optional __status_enabled)
   (if __status_enabled (setq _status_enabled __status_enabled)) _status_enabled)
  (:status_current_limitation
   (&optional __status_current_limitation)
   (if __status_current_limitation (setq _status_current_limitation __status_current_limitation)) _status_current_limitation)
  (:status_switch_off_warn1
   (&optional __status_switch_off_warn1)
   (if __status_switch_off_warn1 (setq _status_switch_off_warn1 __status_switch_off_warn1)) _status_switch_off_warn1)
  (:status_switch_off_warn2
   (&optional __status_switch_off_warn2)
   (if __status_switch_off_warn2 (setq _status_switch_off_warn2 __status_switch_off_warn2)) _status_switch_off_warn2)
  (:status_fully_discharged
   (&optional __status_fully_discharged)
   (if __status_fully_discharged (setq _status_fully_discharged __status_fully_discharged)) _status_fully_discharged)
  (:status_nearly_discharged
   (&optional __status_nearly_discharged)
   (if __status_nearly_discharged (setq _status_nearly_discharged __status_nearly_discharged)) _status_nearly_discharged)
  (:status_chargefet_on
   (&optional __status_chargefet_on)
   (if __status_chargefet_on (setq _status_chargefet_on __status_chargefet_on)) _status_chargefet_on)
  (:status_dischargefet_on
   (&optional __status_dischargefet_on)
   (if __status_dischargefet_on (setq _status_dischargefet_on __status_dischargefet_on)) _status_dischargefet_on)
  (:status_discharging
   (&optional __status_discharging)
   (if __status_discharging (setq _status_discharging __status_discharging)) _status_discharging)
  (:status_fully_charged
   (&optional __status_fully_charged)
   (if __status_fully_charged (setq _status_fully_charged __status_fully_charged)) _status_fully_charged)
  (:status_charging
   (&optional __status_charging)
   (if __status_charging (setq _status_charging __status_charging)) _status_charging)
  (:status_temp_charging_err
   (&optional __status_temp_charging_err)
   (if __status_temp_charging_err (setq _status_temp_charging_err __status_temp_charging_err)) _status_temp_charging_err)
  (:status_cell_over_voltage
   (&optional __status_cell_over_voltage)
   (if __status_cell_over_voltage (setq _status_cell_over_voltage __status_cell_over_voltage)) _status_cell_over_voltage)
  (:status_cell_under_voltage
   (&optional __status_cell_under_voltage)
   (if __status_cell_under_voltage (setq _status_cell_under_voltage __status_cell_under_voltage)) _status_cell_under_voltage)
  (:status_charge_over_current
   (&optional __status_charge_over_current)
   (if __status_charge_over_current (setq _status_charge_over_current __status_charge_over_current)) _status_charge_over_current)
  (:status_shortcircuit
   (&optional __status_shortcircuit)
   (if __status_shortcircuit (setq _status_shortcircuit __status_shortcircuit)) _status_shortcircuit)
  (:status_discharge_over_current
   (&optional __status_discharge_over_current)
   (if __status_discharge_over_current (setq _status_discharge_over_current __status_discharge_over_current)) _status_discharge_over_current)
  (:status_temp_discharging_err
   (&optional __status_temp_discharging_err)
   (if __status_temp_discharging_err (setq _status_temp_discharging_err __status_temp_discharging_err)) _status_temp_discharging_err)
  (:status_charger_detected
   (&optional __status_charger_detected)
   (if __status_charger_detected (setq _status_charger_detected __status_charger_detected)) _status_charger_detected)
  (:last_battery_msg_time
   (&optional __last_battery_msg_time)
   (if __last_battery_msg_time (setq _last_battery_msg_time __last_battery_msg_time)) _last_battery_msg_time)
  (:serialization-length
   ()
   (+
    ;; float64 _pack_voltage
    8
    ;; float64 _charge_current
    8
    ;; float64 _discharge_current
    8
    ;; int32 _state_of_charge
    4
    ;; float64 _remaining_time_to_full_charge
    8
    ;; int32 _remaining_capacity
    4
    ;; int32 _state_of_health
    4
    ;; int32 _status_flags
    4
    ;; int32 _temperature
    4
    ;; uint32[] _cell_voltage
    (* 4    (length _cell_voltage)) 4
    ;; uint32 _bmz_flag
    4
    ;; float64 _full_voltage
    8
    ;; int32 _full_capacity
    4
    ;; int32 _temperature2
    4
    ;; int32 _temperature3
    4
    ;; int32 _cycle_count
    4
    ;; int32 _dsg_overcurrent_counter
    4
    ;; int32 _chg_overcurrent_counter
    4
    ;; int32 _hw_major
    4
    ;; int32 _hw_minor
    4
    ;; int32 _fw_major
    4
    ;; int32 _fw_minor
    4
    ;; int32 _fw_patch
    4
    ;; int32 _rec_fw_major
    4
    ;; int32 _rec_fw_minor
    4
    ;; int32 _bl_major
    4
    ;; int32 _bl_minor
    4
    ;; uint32 _status_enabled
    4
    ;; uint32 _status_current_limitation
    4
    ;; uint32 _status_switch_off_warn1
    4
    ;; uint32 _status_switch_off_warn2
    4
    ;; uint32 _status_fully_discharged
    4
    ;; uint32 _status_nearly_discharged
    4
    ;; uint32 _status_chargefet_on
    4
    ;; uint32 _status_dischargefet_on
    4
    ;; uint32 _status_discharging
    4
    ;; uint32 _status_fully_charged
    4
    ;; uint32 _status_charging
    4
    ;; uint32 _status_temp_charging_err
    4
    ;; uint32 _status_cell_over_voltage
    4
    ;; uint32 _status_cell_under_voltage
    4
    ;; uint32 _status_charge_over_current
    4
    ;; uint32 _status_shortcircuit
    4
    ;; uint32 _status_discharge_over_current
    4
    ;; uint32 _status_temp_discharging_err
    4
    ;; uint32 _status_charger_detected
    4
    ;; float64 _last_battery_msg_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _pack_voltage
       (sys::poke _pack_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _charge_current
       (sys::poke _charge_current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _discharge_current
       (sys::poke _discharge_current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _state_of_charge
       (write-long _state_of_charge s)
     ;; float64 _remaining_time_to_full_charge
       (sys::poke _remaining_time_to_full_charge (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _remaining_capacity
       (write-long _remaining_capacity s)
     ;; int32 _state_of_health
       (write-long _state_of_health s)
     ;; int32 _status_flags
       (write-long _status_flags s)
     ;; int32 _temperature
       (write-long _temperature s)
     ;; uint32[] _cell_voltage
     (write-long (length _cell_voltage) s)
     (dotimes (i (length _cell_voltage))
       (write-long (elt _cell_voltage i) s)
       )
     ;; uint32 _bmz_flag
       (write-long _bmz_flag s)
     ;; float64 _full_voltage
       (sys::poke _full_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _full_capacity
       (write-long _full_capacity s)
     ;; int32 _temperature2
       (write-long _temperature2 s)
     ;; int32 _temperature3
       (write-long _temperature3 s)
     ;; int32 _cycle_count
       (write-long _cycle_count s)
     ;; int32 _dsg_overcurrent_counter
       (write-long _dsg_overcurrent_counter s)
     ;; int32 _chg_overcurrent_counter
       (write-long _chg_overcurrent_counter s)
     ;; int32 _hw_major
       (write-long _hw_major s)
     ;; int32 _hw_minor
       (write-long _hw_minor s)
     ;; int32 _fw_major
       (write-long _fw_major s)
     ;; int32 _fw_minor
       (write-long _fw_minor s)
     ;; int32 _fw_patch
       (write-long _fw_patch s)
     ;; int32 _rec_fw_major
       (write-long _rec_fw_major s)
     ;; int32 _rec_fw_minor
       (write-long _rec_fw_minor s)
     ;; int32 _bl_major
       (write-long _bl_major s)
     ;; int32 _bl_minor
       (write-long _bl_minor s)
     ;; uint32 _status_enabled
       (write-long _status_enabled s)
     ;; uint32 _status_current_limitation
       (write-long _status_current_limitation s)
     ;; uint32 _status_switch_off_warn1
       (write-long _status_switch_off_warn1 s)
     ;; uint32 _status_switch_off_warn2
       (write-long _status_switch_off_warn2 s)
     ;; uint32 _status_fully_discharged
       (write-long _status_fully_discharged s)
     ;; uint32 _status_nearly_discharged
       (write-long _status_nearly_discharged s)
     ;; uint32 _status_chargefet_on
       (write-long _status_chargefet_on s)
     ;; uint32 _status_dischargefet_on
       (write-long _status_dischargefet_on s)
     ;; uint32 _status_discharging
       (write-long _status_discharging s)
     ;; uint32 _status_fully_charged
       (write-long _status_fully_charged s)
     ;; uint32 _status_charging
       (write-long _status_charging s)
     ;; uint32 _status_temp_charging_err
       (write-long _status_temp_charging_err s)
     ;; uint32 _status_cell_over_voltage
       (write-long _status_cell_over_voltage s)
     ;; uint32 _status_cell_under_voltage
       (write-long _status_cell_under_voltage s)
     ;; uint32 _status_charge_over_current
       (write-long _status_charge_over_current s)
     ;; uint32 _status_shortcircuit
       (write-long _status_shortcircuit s)
     ;; uint32 _status_discharge_over_current
       (write-long _status_discharge_over_current s)
     ;; uint32 _status_temp_discharging_err
       (write-long _status_temp_discharging_err s)
     ;; uint32 _status_charger_detected
       (write-long _status_charger_detected s)
     ;; float64 _last_battery_msg_time
       (sys::poke _last_battery_msg_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _pack_voltage
     (setq _pack_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _charge_current
     (setq _charge_current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _discharge_current
     (setq _discharge_current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _state_of_charge
     (setq _state_of_charge (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _remaining_time_to_full_charge
     (setq _remaining_time_to_full_charge (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _remaining_capacity
     (setq _remaining_capacity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state_of_health
     (setq _state_of_health (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _status_flags
     (setq _status_flags (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _temperature
     (setq _temperature (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _cell_voltage
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cell_voltage (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cell_voltage i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32 _bmz_flag
     (setq _bmz_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _full_voltage
     (setq _full_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _full_capacity
     (setq _full_capacity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _temperature2
     (setq _temperature2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _temperature3
     (setq _temperature3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cycle_count
     (setq _cycle_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dsg_overcurrent_counter
     (setq _dsg_overcurrent_counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _chg_overcurrent_counter
     (setq _chg_overcurrent_counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _hw_major
     (setq _hw_major (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _hw_minor
     (setq _hw_minor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fw_major
     (setq _fw_major (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fw_minor
     (setq _fw_minor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fw_patch
     (setq _fw_patch (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rec_fw_major
     (setq _rec_fw_major (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rec_fw_minor
     (setq _rec_fw_minor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _bl_major
     (setq _bl_major (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _bl_minor
     (setq _bl_minor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_enabled
     (setq _status_enabled (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_current_limitation
     (setq _status_current_limitation (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_switch_off_warn1
     (setq _status_switch_off_warn1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_switch_off_warn2
     (setq _status_switch_off_warn2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_fully_discharged
     (setq _status_fully_discharged (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_nearly_discharged
     (setq _status_nearly_discharged (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_chargefet_on
     (setq _status_chargefet_on (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_dischargefet_on
     (setq _status_dischargefet_on (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_discharging
     (setq _status_discharging (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_fully_charged
     (setq _status_fully_charged (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_charging
     (setq _status_charging (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_temp_charging_err
     (setq _status_temp_charging_err (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_cell_over_voltage
     (setq _status_cell_over_voltage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_cell_under_voltage
     (setq _status_cell_under_voltage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_charge_over_current
     (setq _status_charge_over_current (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_shortcircuit
     (setq _status_shortcircuit (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_discharge_over_current
     (setq _status_discharge_over_current (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_temp_discharging_err
     (setq _status_temp_discharging_err (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status_charger_detected
     (setq _status_charger_detected (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _last_battery_msg_time
     (setq _last_battery_msg_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mir_msgs::BMSData :md5sum-) "d60e43d26f083554a17e9b16c16317d3")
(setf (get mir_msgs::BMSData :datatype-) "mir_msgs/BMSData")
(setf (get mir_msgs::BMSData :definition-)
      "float64 pack_voltage
float64 charge_current
float64 discharge_current
int32 state_of_charge
float64 remaining_time_to_full_charge
int32 remaining_capacity
int32 state_of_health
int32 DISCHARGING=1 #bit 0
int32 CHARGING=2    #bit 1
int32 OV=4         #bit 2 Over voltage
int32 UV=8          #bit 3 Under voltage
int32 COC=16         #bit 4 Charge over current
int32 DOC=32         #bit 5 Discharge over current
int32 DOT=64         #bit 6 Discharge over temperature
int32 DUT=128         #bit 7 Discharge under temperature
int32  SC=512         #bit 9
int32 COT=1024         #bit 10 Charge over temperature
int32 CUT=2048         #bit 11 Charge under temperature
int32 FW_STATUS_MSK=2031616 # to get Battery_Firmware_Status  do the following:
int32 FW_STATUS_SHIFT=16    # batt_fw_stat=(status_flags & FW_STATUS_MSK)>>FW_STATUS_SHIFT
int32 FW_UPD_OK=0                  #Battery firmware update finished OK.
int32 FW_UPD_RUNNING=1             #Battery firmware update running.
int32 FW_UPD_FAILED_BOOT=2         #Battery firmware update failed in Bootloader (Robot must not drive)
int32 FW_UPD_FAILED_APP=3          #Battery firmware update failed updating the application (Robot can drive with old FW)
int32 FW_UPD_FAILED_PARAM=4        #Battery firmware update failed uploading parameters (Robot can drive with old fw and parameters.)
int32 FW_STATUS_LOW_BATT=5         #Battery firmware update skipped battery too low (Robot can drive with old parameters.)
int32 FW_STATUS_FILE_CORRUPTED=6   #Battery firmware file corrupted (Robot can drive with old parameters.)
int32 FW_STATUS_CURRENT_TO_HIGH=7  #Battery firmware file corrupted (Robot can drive with old parameters.)
int32 FW_STATUS_NO_CAN=8           #Battery firmware update skipped no CAN communication (Robot can drive with old fw and parameters.)
int32 FW_BATTERY_IMBALANCE_HIGH=9  #Battery firmware update is enforced and the battery will be shut off by the new firmware
int32 status_flags
int32 temperature
uint32[] cell_voltage # In Mk2 robots and above the BMS provides data for 8 battery cells. 2Gen robots have BMS for 13 battery cells

# Exteded diagnosticts for BMZ battery
uint32 bmz_flag # Flag for enabling extended diagnosticts
float64 full_voltage
int32 full_capacity
int32 temperature2
int32 temperature3
int32 cycle_count
int32 dsg_overcurrent_counter
int32 chg_overcurrent_counter
int32 hw_major
int32 hw_minor
int32 fw_major
int32 fw_minor
int32 fw_patch
int32 rec_fw_major
int32 rec_fw_minor
int32 bl_major
int32 bl_minor
uint32 status_enabled
uint32 status_current_limitation
uint32 status_switch_off_warn1
uint32 status_switch_off_warn2
uint32 status_fully_discharged
uint32 status_nearly_discharged
uint32 status_chargefet_on
uint32 status_dischargefet_on
uint32 status_discharging
uint32 status_fully_charged
uint32 status_charging
uint32 status_temp_charging_err
uint32 status_cell_over_voltage
uint32 status_cell_under_voltage
uint32 status_charge_over_current
uint32 status_shortcircuit
uint32 status_discharge_over_current
uint32 status_temp_discharging_err
uint32 status_charger_detected

float64 last_battery_msg_time

")



(provide :mir_msgs/BMSData "d60e43d26f083554a17e9b16c16317d3")


