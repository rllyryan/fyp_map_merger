; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude BMSData.msg.html

(cl:defclass <BMSData> (roslisp-msg-protocol:ros-message)
  ((pack_voltage
    :reader pack_voltage
    :initarg :pack_voltage
    :type cl:float
    :initform 0.0)
   (charge_current
    :reader charge_current
    :initarg :charge_current
    :type cl:float
    :initform 0.0)
   (discharge_current
    :reader discharge_current
    :initarg :discharge_current
    :type cl:float
    :initform 0.0)
   (state_of_charge
    :reader state_of_charge
    :initarg :state_of_charge
    :type cl:integer
    :initform 0)
   (remaining_time_to_full_charge
    :reader remaining_time_to_full_charge
    :initarg :remaining_time_to_full_charge
    :type cl:float
    :initform 0.0)
   (remaining_capacity
    :reader remaining_capacity
    :initarg :remaining_capacity
    :type cl:integer
    :initform 0)
   (state_of_health
    :reader state_of_health
    :initarg :state_of_health
    :type cl:integer
    :initform 0)
   (status_flags
    :reader status_flags
    :initarg :status_flags
    :type cl:integer
    :initform 0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:integer
    :initform 0)
   (cell_voltage
    :reader cell_voltage
    :initarg :cell_voltage
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (bmz_flag
    :reader bmz_flag
    :initarg :bmz_flag
    :type cl:integer
    :initform 0)
   (full_voltage
    :reader full_voltage
    :initarg :full_voltage
    :type cl:float
    :initform 0.0)
   (full_capacity
    :reader full_capacity
    :initarg :full_capacity
    :type cl:integer
    :initform 0)
   (temperature2
    :reader temperature2
    :initarg :temperature2
    :type cl:integer
    :initform 0)
   (temperature3
    :reader temperature3
    :initarg :temperature3
    :type cl:integer
    :initform 0)
   (cycle_count
    :reader cycle_count
    :initarg :cycle_count
    :type cl:integer
    :initform 0)
   (dsg_overcurrent_counter
    :reader dsg_overcurrent_counter
    :initarg :dsg_overcurrent_counter
    :type cl:integer
    :initform 0)
   (chg_overcurrent_counter
    :reader chg_overcurrent_counter
    :initarg :chg_overcurrent_counter
    :type cl:integer
    :initform 0)
   (hw_major
    :reader hw_major
    :initarg :hw_major
    :type cl:integer
    :initform 0)
   (hw_minor
    :reader hw_minor
    :initarg :hw_minor
    :type cl:integer
    :initform 0)
   (fw_major
    :reader fw_major
    :initarg :fw_major
    :type cl:integer
    :initform 0)
   (fw_minor
    :reader fw_minor
    :initarg :fw_minor
    :type cl:integer
    :initform 0)
   (fw_patch
    :reader fw_patch
    :initarg :fw_patch
    :type cl:integer
    :initform 0)
   (rec_fw_major
    :reader rec_fw_major
    :initarg :rec_fw_major
    :type cl:integer
    :initform 0)
   (rec_fw_minor
    :reader rec_fw_minor
    :initarg :rec_fw_minor
    :type cl:integer
    :initform 0)
   (bl_major
    :reader bl_major
    :initarg :bl_major
    :type cl:integer
    :initform 0)
   (bl_minor
    :reader bl_minor
    :initarg :bl_minor
    :type cl:integer
    :initform 0)
   (status_enabled
    :reader status_enabled
    :initarg :status_enabled
    :type cl:integer
    :initform 0)
   (status_current_limitation
    :reader status_current_limitation
    :initarg :status_current_limitation
    :type cl:integer
    :initform 0)
   (status_switch_off_warn1
    :reader status_switch_off_warn1
    :initarg :status_switch_off_warn1
    :type cl:integer
    :initform 0)
   (status_switch_off_warn2
    :reader status_switch_off_warn2
    :initarg :status_switch_off_warn2
    :type cl:integer
    :initform 0)
   (status_fully_discharged
    :reader status_fully_discharged
    :initarg :status_fully_discharged
    :type cl:integer
    :initform 0)
   (status_nearly_discharged
    :reader status_nearly_discharged
    :initarg :status_nearly_discharged
    :type cl:integer
    :initform 0)
   (status_chargefet_on
    :reader status_chargefet_on
    :initarg :status_chargefet_on
    :type cl:integer
    :initform 0)
   (status_dischargefet_on
    :reader status_dischargefet_on
    :initarg :status_dischargefet_on
    :type cl:integer
    :initform 0)
   (status_discharging
    :reader status_discharging
    :initarg :status_discharging
    :type cl:integer
    :initform 0)
   (status_fully_charged
    :reader status_fully_charged
    :initarg :status_fully_charged
    :type cl:integer
    :initform 0)
   (status_charging
    :reader status_charging
    :initarg :status_charging
    :type cl:integer
    :initform 0)
   (status_temp_charging_err
    :reader status_temp_charging_err
    :initarg :status_temp_charging_err
    :type cl:integer
    :initform 0)
   (status_cell_over_voltage
    :reader status_cell_over_voltage
    :initarg :status_cell_over_voltage
    :type cl:integer
    :initform 0)
   (status_cell_under_voltage
    :reader status_cell_under_voltage
    :initarg :status_cell_under_voltage
    :type cl:integer
    :initform 0)
   (status_charge_over_current
    :reader status_charge_over_current
    :initarg :status_charge_over_current
    :type cl:integer
    :initform 0)
   (status_shortcircuit
    :reader status_shortcircuit
    :initarg :status_shortcircuit
    :type cl:integer
    :initform 0)
   (status_discharge_over_current
    :reader status_discharge_over_current
    :initarg :status_discharge_over_current
    :type cl:integer
    :initform 0)
   (status_temp_discharging_err
    :reader status_temp_discharging_err
    :initarg :status_temp_discharging_err
    :type cl:integer
    :initform 0)
   (status_charger_detected
    :reader status_charger_detected
    :initarg :status_charger_detected
    :type cl:integer
    :initform 0)
   (last_battery_msg_time
    :reader last_battery_msg_time
    :initarg :last_battery_msg_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass BMSData (<BMSData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BMSData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BMSData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<BMSData> is deprecated: use mir_msgs-msg:BMSData instead.")))

(cl:ensure-generic-function 'pack_voltage-val :lambda-list '(m))
(cl:defmethod pack_voltage-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:pack_voltage-val is deprecated.  Use mir_msgs-msg:pack_voltage instead.")
  (pack_voltage m))

(cl:ensure-generic-function 'charge_current-val :lambda-list '(m))
(cl:defmethod charge_current-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:charge_current-val is deprecated.  Use mir_msgs-msg:charge_current instead.")
  (charge_current m))

(cl:ensure-generic-function 'discharge_current-val :lambda-list '(m))
(cl:defmethod discharge_current-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:discharge_current-val is deprecated.  Use mir_msgs-msg:discharge_current instead.")
  (discharge_current m))

(cl:ensure-generic-function 'state_of_charge-val :lambda-list '(m))
(cl:defmethod state_of_charge-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:state_of_charge-val is deprecated.  Use mir_msgs-msg:state_of_charge instead.")
  (state_of_charge m))

(cl:ensure-generic-function 'remaining_time_to_full_charge-val :lambda-list '(m))
(cl:defmethod remaining_time_to_full_charge-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:remaining_time_to_full_charge-val is deprecated.  Use mir_msgs-msg:remaining_time_to_full_charge instead.")
  (remaining_time_to_full_charge m))

(cl:ensure-generic-function 'remaining_capacity-val :lambda-list '(m))
(cl:defmethod remaining_capacity-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:remaining_capacity-val is deprecated.  Use mir_msgs-msg:remaining_capacity instead.")
  (remaining_capacity m))

(cl:ensure-generic-function 'state_of_health-val :lambda-list '(m))
(cl:defmethod state_of_health-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:state_of_health-val is deprecated.  Use mir_msgs-msg:state_of_health instead.")
  (state_of_health m))

(cl:ensure-generic-function 'status_flags-val :lambda-list '(m))
(cl:defmethod status_flags-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_flags-val is deprecated.  Use mir_msgs-msg:status_flags instead.")
  (status_flags m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:temperature-val is deprecated.  Use mir_msgs-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'cell_voltage-val :lambda-list '(m))
(cl:defmethod cell_voltage-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:cell_voltage-val is deprecated.  Use mir_msgs-msg:cell_voltage instead.")
  (cell_voltage m))

(cl:ensure-generic-function 'bmz_flag-val :lambda-list '(m))
(cl:defmethod bmz_flag-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:bmz_flag-val is deprecated.  Use mir_msgs-msg:bmz_flag instead.")
  (bmz_flag m))

(cl:ensure-generic-function 'full_voltage-val :lambda-list '(m))
(cl:defmethod full_voltage-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:full_voltage-val is deprecated.  Use mir_msgs-msg:full_voltage instead.")
  (full_voltage m))

(cl:ensure-generic-function 'full_capacity-val :lambda-list '(m))
(cl:defmethod full_capacity-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:full_capacity-val is deprecated.  Use mir_msgs-msg:full_capacity instead.")
  (full_capacity m))

(cl:ensure-generic-function 'temperature2-val :lambda-list '(m))
(cl:defmethod temperature2-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:temperature2-val is deprecated.  Use mir_msgs-msg:temperature2 instead.")
  (temperature2 m))

(cl:ensure-generic-function 'temperature3-val :lambda-list '(m))
(cl:defmethod temperature3-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:temperature3-val is deprecated.  Use mir_msgs-msg:temperature3 instead.")
  (temperature3 m))

(cl:ensure-generic-function 'cycle_count-val :lambda-list '(m))
(cl:defmethod cycle_count-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:cycle_count-val is deprecated.  Use mir_msgs-msg:cycle_count instead.")
  (cycle_count m))

(cl:ensure-generic-function 'dsg_overcurrent_counter-val :lambda-list '(m))
(cl:defmethod dsg_overcurrent_counter-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:dsg_overcurrent_counter-val is deprecated.  Use mir_msgs-msg:dsg_overcurrent_counter instead.")
  (dsg_overcurrent_counter m))

(cl:ensure-generic-function 'chg_overcurrent_counter-val :lambda-list '(m))
(cl:defmethod chg_overcurrent_counter-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:chg_overcurrent_counter-val is deprecated.  Use mir_msgs-msg:chg_overcurrent_counter instead.")
  (chg_overcurrent_counter m))

(cl:ensure-generic-function 'hw_major-val :lambda-list '(m))
(cl:defmethod hw_major-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:hw_major-val is deprecated.  Use mir_msgs-msg:hw_major instead.")
  (hw_major m))

(cl:ensure-generic-function 'hw_minor-val :lambda-list '(m))
(cl:defmethod hw_minor-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:hw_minor-val is deprecated.  Use mir_msgs-msg:hw_minor instead.")
  (hw_minor m))

(cl:ensure-generic-function 'fw_major-val :lambda-list '(m))
(cl:defmethod fw_major-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:fw_major-val is deprecated.  Use mir_msgs-msg:fw_major instead.")
  (fw_major m))

(cl:ensure-generic-function 'fw_minor-val :lambda-list '(m))
(cl:defmethod fw_minor-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:fw_minor-val is deprecated.  Use mir_msgs-msg:fw_minor instead.")
  (fw_minor m))

(cl:ensure-generic-function 'fw_patch-val :lambda-list '(m))
(cl:defmethod fw_patch-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:fw_patch-val is deprecated.  Use mir_msgs-msg:fw_patch instead.")
  (fw_patch m))

(cl:ensure-generic-function 'rec_fw_major-val :lambda-list '(m))
(cl:defmethod rec_fw_major-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:rec_fw_major-val is deprecated.  Use mir_msgs-msg:rec_fw_major instead.")
  (rec_fw_major m))

(cl:ensure-generic-function 'rec_fw_minor-val :lambda-list '(m))
(cl:defmethod rec_fw_minor-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:rec_fw_minor-val is deprecated.  Use mir_msgs-msg:rec_fw_minor instead.")
  (rec_fw_minor m))

(cl:ensure-generic-function 'bl_major-val :lambda-list '(m))
(cl:defmethod bl_major-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:bl_major-val is deprecated.  Use mir_msgs-msg:bl_major instead.")
  (bl_major m))

(cl:ensure-generic-function 'bl_minor-val :lambda-list '(m))
(cl:defmethod bl_minor-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:bl_minor-val is deprecated.  Use mir_msgs-msg:bl_minor instead.")
  (bl_minor m))

(cl:ensure-generic-function 'status_enabled-val :lambda-list '(m))
(cl:defmethod status_enabled-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_enabled-val is deprecated.  Use mir_msgs-msg:status_enabled instead.")
  (status_enabled m))

(cl:ensure-generic-function 'status_current_limitation-val :lambda-list '(m))
(cl:defmethod status_current_limitation-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_current_limitation-val is deprecated.  Use mir_msgs-msg:status_current_limitation instead.")
  (status_current_limitation m))

(cl:ensure-generic-function 'status_switch_off_warn1-val :lambda-list '(m))
(cl:defmethod status_switch_off_warn1-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_switch_off_warn1-val is deprecated.  Use mir_msgs-msg:status_switch_off_warn1 instead.")
  (status_switch_off_warn1 m))

(cl:ensure-generic-function 'status_switch_off_warn2-val :lambda-list '(m))
(cl:defmethod status_switch_off_warn2-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_switch_off_warn2-val is deprecated.  Use mir_msgs-msg:status_switch_off_warn2 instead.")
  (status_switch_off_warn2 m))

(cl:ensure-generic-function 'status_fully_discharged-val :lambda-list '(m))
(cl:defmethod status_fully_discharged-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_fully_discharged-val is deprecated.  Use mir_msgs-msg:status_fully_discharged instead.")
  (status_fully_discharged m))

(cl:ensure-generic-function 'status_nearly_discharged-val :lambda-list '(m))
(cl:defmethod status_nearly_discharged-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_nearly_discharged-val is deprecated.  Use mir_msgs-msg:status_nearly_discharged instead.")
  (status_nearly_discharged m))

(cl:ensure-generic-function 'status_chargefet_on-val :lambda-list '(m))
(cl:defmethod status_chargefet_on-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_chargefet_on-val is deprecated.  Use mir_msgs-msg:status_chargefet_on instead.")
  (status_chargefet_on m))

(cl:ensure-generic-function 'status_dischargefet_on-val :lambda-list '(m))
(cl:defmethod status_dischargefet_on-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_dischargefet_on-val is deprecated.  Use mir_msgs-msg:status_dischargefet_on instead.")
  (status_dischargefet_on m))

(cl:ensure-generic-function 'status_discharging-val :lambda-list '(m))
(cl:defmethod status_discharging-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_discharging-val is deprecated.  Use mir_msgs-msg:status_discharging instead.")
  (status_discharging m))

(cl:ensure-generic-function 'status_fully_charged-val :lambda-list '(m))
(cl:defmethod status_fully_charged-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_fully_charged-val is deprecated.  Use mir_msgs-msg:status_fully_charged instead.")
  (status_fully_charged m))

(cl:ensure-generic-function 'status_charging-val :lambda-list '(m))
(cl:defmethod status_charging-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_charging-val is deprecated.  Use mir_msgs-msg:status_charging instead.")
  (status_charging m))

(cl:ensure-generic-function 'status_temp_charging_err-val :lambda-list '(m))
(cl:defmethod status_temp_charging_err-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_temp_charging_err-val is deprecated.  Use mir_msgs-msg:status_temp_charging_err instead.")
  (status_temp_charging_err m))

(cl:ensure-generic-function 'status_cell_over_voltage-val :lambda-list '(m))
(cl:defmethod status_cell_over_voltage-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_cell_over_voltage-val is deprecated.  Use mir_msgs-msg:status_cell_over_voltage instead.")
  (status_cell_over_voltage m))

(cl:ensure-generic-function 'status_cell_under_voltage-val :lambda-list '(m))
(cl:defmethod status_cell_under_voltage-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_cell_under_voltage-val is deprecated.  Use mir_msgs-msg:status_cell_under_voltage instead.")
  (status_cell_under_voltage m))

(cl:ensure-generic-function 'status_charge_over_current-val :lambda-list '(m))
(cl:defmethod status_charge_over_current-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_charge_over_current-val is deprecated.  Use mir_msgs-msg:status_charge_over_current instead.")
  (status_charge_over_current m))

(cl:ensure-generic-function 'status_shortcircuit-val :lambda-list '(m))
(cl:defmethod status_shortcircuit-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_shortcircuit-val is deprecated.  Use mir_msgs-msg:status_shortcircuit instead.")
  (status_shortcircuit m))

(cl:ensure-generic-function 'status_discharge_over_current-val :lambda-list '(m))
(cl:defmethod status_discharge_over_current-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_discharge_over_current-val is deprecated.  Use mir_msgs-msg:status_discharge_over_current instead.")
  (status_discharge_over_current m))

(cl:ensure-generic-function 'status_temp_discharging_err-val :lambda-list '(m))
(cl:defmethod status_temp_discharging_err-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_temp_discharging_err-val is deprecated.  Use mir_msgs-msg:status_temp_discharging_err instead.")
  (status_temp_discharging_err m))

(cl:ensure-generic-function 'status_charger_detected-val :lambda-list '(m))
(cl:defmethod status_charger_detected-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_charger_detected-val is deprecated.  Use mir_msgs-msg:status_charger_detected instead.")
  (status_charger_detected m))

(cl:ensure-generic-function 'last_battery_msg_time-val :lambda-list '(m))
(cl:defmethod last_battery_msg_time-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:last_battery_msg_time-val is deprecated.  Use mir_msgs-msg:last_battery_msg_time instead.")
  (last_battery_msg_time m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BMSData>)))
    "Constants for message type '<BMSData>"
  '((:DISCHARGING . 1)
    (:CHARGING . 2)
    (:OV . 4)
    (:UV . 8)
    (:COC . 16)
    (:DOC . 32)
    (:DOT . 64)
    (:DUT . 128)
    (:SC . 512)
    (:COT . 1024)
    (:CUT . 2048)
    (:FW_STATUS_MSK . 2031616)
    (:FW_STATUS_SHIFT . 16)
    (:FW_UPD_OK . 0)
    (:FW_UPD_RUNNING . 1)
    (:FW_UPD_FAILED_BOOT . 2)
    (:FW_UPD_FAILED_APP . 3)
    (:FW_UPD_FAILED_PARAM . 4)
    (:FW_STATUS_LOW_BATT . 5)
    (:FW_STATUS_FILE_CORRUPTED . 6)
    (:FW_STATUS_CURRENT_TO_HIGH . 7)
    (:FW_STATUS_NO_CAN . 8)
    (:FW_BATTERY_IMBALANCE_HIGH . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BMSData)))
    "Constants for message type 'BMSData"
  '((:DISCHARGING . 1)
    (:CHARGING . 2)
    (:OV . 4)
    (:UV . 8)
    (:COC . 16)
    (:DOC . 32)
    (:DOT . 64)
    (:DUT . 128)
    (:SC . 512)
    (:COT . 1024)
    (:CUT . 2048)
    (:FW_STATUS_MSK . 2031616)
    (:FW_STATUS_SHIFT . 16)
    (:FW_UPD_OK . 0)
    (:FW_UPD_RUNNING . 1)
    (:FW_UPD_FAILED_BOOT . 2)
    (:FW_UPD_FAILED_APP . 3)
    (:FW_UPD_FAILED_PARAM . 4)
    (:FW_STATUS_LOW_BATT . 5)
    (:FW_STATUS_FILE_CORRUPTED . 6)
    (:FW_STATUS_CURRENT_TO_HIGH . 7)
    (:FW_STATUS_NO_CAN . 8)
    (:FW_BATTERY_IMBALANCE_HIGH . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BMSData>) ostream)
  "Serializes a message object of type '<BMSData>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pack_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'charge_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'discharge_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'state_of_charge)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'remaining_time_to_full_charge))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'remaining_capacity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'state_of_health)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'status_flags)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cell_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'cell_voltage))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bmz_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bmz_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bmz_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bmz_flag)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'full_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'full_capacity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'temperature2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'temperature3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cycle_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dsg_overcurrent_counter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'chg_overcurrent_counter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'hw_major)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'hw_minor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fw_major)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fw_minor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fw_patch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rec_fw_major)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rec_fw_minor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'bl_major)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'bl_minor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_enabled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_enabled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_enabled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_enabled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_current_limitation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_current_limitation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_current_limitation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_current_limitation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_switch_off_warn1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_switch_off_warn1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_switch_off_warn1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_switch_off_warn1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_switch_off_warn2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_switch_off_warn2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_switch_off_warn2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_switch_off_warn2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_fully_discharged)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_fully_discharged)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_fully_discharged)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_fully_discharged)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_nearly_discharged)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_nearly_discharged)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_nearly_discharged)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_nearly_discharged)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_chargefet_on)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_chargefet_on)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_chargefet_on)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_chargefet_on)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_dischargefet_on)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_dischargefet_on)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_dischargefet_on)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_dischargefet_on)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_discharging)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_discharging)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_discharging)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_discharging)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_fully_charged)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_fully_charged)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_fully_charged)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_fully_charged)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_charging)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_charging)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_charging)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_charging)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_temp_charging_err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_temp_charging_err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_temp_charging_err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_temp_charging_err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_cell_over_voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_cell_over_voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_cell_over_voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_cell_over_voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_cell_under_voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_cell_under_voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_cell_under_voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_cell_under_voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_charge_over_current)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_charge_over_current)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_charge_over_current)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_charge_over_current)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_shortcircuit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_shortcircuit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_shortcircuit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_shortcircuit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_discharge_over_current)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_discharge_over_current)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_discharge_over_current)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_discharge_over_current)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_temp_discharging_err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_temp_discharging_err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_temp_discharging_err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_temp_discharging_err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_charger_detected)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_charger_detected)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_charger_detected)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_charger_detected)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'last_battery_msg_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BMSData>) istream)
  "Deserializes a message object of type '<BMSData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pack_voltage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'charge_current) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'discharge_current) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_of_charge) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'remaining_time_to_full_charge) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'remaining_capacity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_of_health) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_flags) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cell_voltage) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cell_voltage)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bmz_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bmz_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bmz_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bmz_flag)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'full_voltage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'full_capacity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cycle_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dsg_overcurrent_counter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chg_overcurrent_counter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hw_major) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hw_minor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fw_major) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fw_minor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fw_patch) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rec_fw_major) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rec_fw_minor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bl_major) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bl_minor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_enabled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_enabled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_enabled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_enabled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_current_limitation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_current_limitation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_current_limitation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_current_limitation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_switch_off_warn1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_switch_off_warn1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_switch_off_warn1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_switch_off_warn1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_switch_off_warn2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_switch_off_warn2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_switch_off_warn2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_switch_off_warn2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_fully_discharged)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_fully_discharged)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_fully_discharged)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_fully_discharged)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_nearly_discharged)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_nearly_discharged)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_nearly_discharged)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_nearly_discharged)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_chargefet_on)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_chargefet_on)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_chargefet_on)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_chargefet_on)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_dischargefet_on)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_dischargefet_on)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_dischargefet_on)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_dischargefet_on)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_discharging)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_discharging)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_discharging)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_discharging)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_fully_charged)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_fully_charged)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_fully_charged)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_fully_charged)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_charging)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_charging)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_charging)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_charging)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_temp_charging_err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_temp_charging_err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_temp_charging_err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_temp_charging_err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_cell_over_voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_cell_over_voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_cell_over_voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_cell_over_voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_cell_under_voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_cell_under_voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_cell_under_voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_cell_under_voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_charge_over_current)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_charge_over_current)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_charge_over_current)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_charge_over_current)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_shortcircuit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_shortcircuit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_shortcircuit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_shortcircuit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_discharge_over_current)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_discharge_over_current)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_discharge_over_current)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_discharge_over_current)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_temp_discharging_err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_temp_discharging_err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_temp_discharging_err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_temp_discharging_err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_charger_detected)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status_charger_detected)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status_charger_detected)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status_charger_detected)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'last_battery_msg_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BMSData>)))
  "Returns string type for a message object of type '<BMSData>"
  "mir_msgs/BMSData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BMSData)))
  "Returns string type for a message object of type 'BMSData"
  "mir_msgs/BMSData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BMSData>)))
  "Returns md5sum for a message object of type '<BMSData>"
  "d60e43d26f083554a17e9b16c16317d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BMSData)))
  "Returns md5sum for a message object of type 'BMSData"
  "d60e43d26f083554a17e9b16c16317d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BMSData>)))
  "Returns full string definition for message of type '<BMSData>"
  (cl:format cl:nil "float64 pack_voltage~%float64 charge_current~%float64 discharge_current~%int32 state_of_charge~%float64 remaining_time_to_full_charge~%int32 remaining_capacity~%int32 state_of_health~%int32 DISCHARGING=1 #bit 0~%int32 CHARGING=2    #bit 1~%int32 OV=4         #bit 2 Over voltage~%int32 UV=8          #bit 3 Under voltage~%int32 COC=16         #bit 4 Charge over current~%int32 DOC=32         #bit 5 Discharge over current~%int32 DOT=64         #bit 6 Discharge over temperature~%int32 DUT=128         #bit 7 Discharge under temperature~%int32  SC=512         #bit 9~%int32 COT=1024         #bit 10 Charge over temperature~%int32 CUT=2048         #bit 11 Charge under temperature~%int32 FW_STATUS_MSK=2031616 # to get Battery_Firmware_Status  do the following:~%int32 FW_STATUS_SHIFT=16    # batt_fw_stat=(status_flags & FW_STATUS_MSK)>>FW_STATUS_SHIFT~%int32 FW_UPD_OK=0                  #Battery firmware update finished OK.~%int32 FW_UPD_RUNNING=1             #Battery firmware update running.~%int32 FW_UPD_FAILED_BOOT=2         #Battery firmware update failed in Bootloader (Robot must not drive)~%int32 FW_UPD_FAILED_APP=3          #Battery firmware update failed updating the application (Robot can drive with old FW)~%int32 FW_UPD_FAILED_PARAM=4        #Battery firmware update failed uploading parameters (Robot can drive with old fw and parameters.)~%int32 FW_STATUS_LOW_BATT=5         #Battery firmware update skipped battery too low (Robot can drive with old parameters.)~%int32 FW_STATUS_FILE_CORRUPTED=6   #Battery firmware file corrupted (Robot can drive with old parameters.)~%int32 FW_STATUS_CURRENT_TO_HIGH=7  #Battery firmware file corrupted (Robot can drive with old parameters.)~%int32 FW_STATUS_NO_CAN=8           #Battery firmware update skipped no CAN communication (Robot can drive with old fw and parameters.)~%int32 FW_BATTERY_IMBALANCE_HIGH=9  #Battery firmware update is enforced and the battery will be shut off by the new firmware~%int32 status_flags~%int32 temperature~%uint32[] cell_voltage # In Mk2 robots and above the BMS provides data for 8 battery cells. 2Gen robots have BMS for 13 battery cells~%~%# Exteded diagnosticts for BMZ battery~%uint32 bmz_flag # Flag for enabling extended diagnosticts~%float64 full_voltage~%int32 full_capacity~%int32 temperature2~%int32 temperature3~%int32 cycle_count~%int32 dsg_overcurrent_counter~%int32 chg_overcurrent_counter~%int32 hw_major~%int32 hw_minor~%int32 fw_major~%int32 fw_minor~%int32 fw_patch~%int32 rec_fw_major~%int32 rec_fw_minor~%int32 bl_major~%int32 bl_minor~%uint32 status_enabled~%uint32 status_current_limitation~%uint32 status_switch_off_warn1~%uint32 status_switch_off_warn2~%uint32 status_fully_discharged~%uint32 status_nearly_discharged~%uint32 status_chargefet_on~%uint32 status_dischargefet_on~%uint32 status_discharging~%uint32 status_fully_charged~%uint32 status_charging~%uint32 status_temp_charging_err~%uint32 status_cell_over_voltage~%uint32 status_cell_under_voltage~%uint32 status_charge_over_current~%uint32 status_shortcircuit~%uint32 status_discharge_over_current~%uint32 status_temp_discharging_err~%uint32 status_charger_detected~%~%float64 last_battery_msg_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BMSData)))
  "Returns full string definition for message of type 'BMSData"
  (cl:format cl:nil "float64 pack_voltage~%float64 charge_current~%float64 discharge_current~%int32 state_of_charge~%float64 remaining_time_to_full_charge~%int32 remaining_capacity~%int32 state_of_health~%int32 DISCHARGING=1 #bit 0~%int32 CHARGING=2    #bit 1~%int32 OV=4         #bit 2 Over voltage~%int32 UV=8          #bit 3 Under voltage~%int32 COC=16         #bit 4 Charge over current~%int32 DOC=32         #bit 5 Discharge over current~%int32 DOT=64         #bit 6 Discharge over temperature~%int32 DUT=128         #bit 7 Discharge under temperature~%int32  SC=512         #bit 9~%int32 COT=1024         #bit 10 Charge over temperature~%int32 CUT=2048         #bit 11 Charge under temperature~%int32 FW_STATUS_MSK=2031616 # to get Battery_Firmware_Status  do the following:~%int32 FW_STATUS_SHIFT=16    # batt_fw_stat=(status_flags & FW_STATUS_MSK)>>FW_STATUS_SHIFT~%int32 FW_UPD_OK=0                  #Battery firmware update finished OK.~%int32 FW_UPD_RUNNING=1             #Battery firmware update running.~%int32 FW_UPD_FAILED_BOOT=2         #Battery firmware update failed in Bootloader (Robot must not drive)~%int32 FW_UPD_FAILED_APP=3          #Battery firmware update failed updating the application (Robot can drive with old FW)~%int32 FW_UPD_FAILED_PARAM=4        #Battery firmware update failed uploading parameters (Robot can drive with old fw and parameters.)~%int32 FW_STATUS_LOW_BATT=5         #Battery firmware update skipped battery too low (Robot can drive with old parameters.)~%int32 FW_STATUS_FILE_CORRUPTED=6   #Battery firmware file corrupted (Robot can drive with old parameters.)~%int32 FW_STATUS_CURRENT_TO_HIGH=7  #Battery firmware file corrupted (Robot can drive with old parameters.)~%int32 FW_STATUS_NO_CAN=8           #Battery firmware update skipped no CAN communication (Robot can drive with old fw and parameters.)~%int32 FW_BATTERY_IMBALANCE_HIGH=9  #Battery firmware update is enforced and the battery will be shut off by the new firmware~%int32 status_flags~%int32 temperature~%uint32[] cell_voltage # In Mk2 robots and above the BMS provides data for 8 battery cells. 2Gen robots have BMS for 13 battery cells~%~%# Exteded diagnosticts for BMZ battery~%uint32 bmz_flag # Flag for enabling extended diagnosticts~%float64 full_voltage~%int32 full_capacity~%int32 temperature2~%int32 temperature3~%int32 cycle_count~%int32 dsg_overcurrent_counter~%int32 chg_overcurrent_counter~%int32 hw_major~%int32 hw_minor~%int32 fw_major~%int32 fw_minor~%int32 fw_patch~%int32 rec_fw_major~%int32 rec_fw_minor~%int32 bl_major~%int32 bl_minor~%uint32 status_enabled~%uint32 status_current_limitation~%uint32 status_switch_off_warn1~%uint32 status_switch_off_warn2~%uint32 status_fully_discharged~%uint32 status_nearly_discharged~%uint32 status_chargefet_on~%uint32 status_dischargefet_on~%uint32 status_discharging~%uint32 status_fully_charged~%uint32 status_charging~%uint32 status_temp_charging_err~%uint32 status_cell_over_voltage~%uint32 status_cell_under_voltage~%uint32 status_charge_over_current~%uint32 status_shortcircuit~%uint32 status_discharge_over_current~%uint32 status_temp_discharging_err~%uint32 status_charger_detected~%~%float64 last_battery_msg_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BMSData>))
  (cl:+ 0
     8
     8
     8
     4
     8
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cell_voltage) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     8
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BMSData>))
  "Converts a ROS message object to a list"
  (cl:list 'BMSData
    (cl:cons ':pack_voltage (pack_voltage msg))
    (cl:cons ':charge_current (charge_current msg))
    (cl:cons ':discharge_current (discharge_current msg))
    (cl:cons ':state_of_charge (state_of_charge msg))
    (cl:cons ':remaining_time_to_full_charge (remaining_time_to_full_charge msg))
    (cl:cons ':remaining_capacity (remaining_capacity msg))
    (cl:cons ':state_of_health (state_of_health msg))
    (cl:cons ':status_flags (status_flags msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':cell_voltage (cell_voltage msg))
    (cl:cons ':bmz_flag (bmz_flag msg))
    (cl:cons ':full_voltage (full_voltage msg))
    (cl:cons ':full_capacity (full_capacity msg))
    (cl:cons ':temperature2 (temperature2 msg))
    (cl:cons ':temperature3 (temperature3 msg))
    (cl:cons ':cycle_count (cycle_count msg))
    (cl:cons ':dsg_overcurrent_counter (dsg_overcurrent_counter msg))
    (cl:cons ':chg_overcurrent_counter (chg_overcurrent_counter msg))
    (cl:cons ':hw_major (hw_major msg))
    (cl:cons ':hw_minor (hw_minor msg))
    (cl:cons ':fw_major (fw_major msg))
    (cl:cons ':fw_minor (fw_minor msg))
    (cl:cons ':fw_patch (fw_patch msg))
    (cl:cons ':rec_fw_major (rec_fw_major msg))
    (cl:cons ':rec_fw_minor (rec_fw_minor msg))
    (cl:cons ':bl_major (bl_major msg))
    (cl:cons ':bl_minor (bl_minor msg))
    (cl:cons ':status_enabled (status_enabled msg))
    (cl:cons ':status_current_limitation (status_current_limitation msg))
    (cl:cons ':status_switch_off_warn1 (status_switch_off_warn1 msg))
    (cl:cons ':status_switch_off_warn2 (status_switch_off_warn2 msg))
    (cl:cons ':status_fully_discharged (status_fully_discharged msg))
    (cl:cons ':status_nearly_discharged (status_nearly_discharged msg))
    (cl:cons ':status_chargefet_on (status_chargefet_on msg))
    (cl:cons ':status_dischargefet_on (status_dischargefet_on msg))
    (cl:cons ':status_discharging (status_discharging msg))
    (cl:cons ':status_fully_charged (status_fully_charged msg))
    (cl:cons ':status_charging (status_charging msg))
    (cl:cons ':status_temp_charging_err (status_temp_charging_err msg))
    (cl:cons ':status_cell_over_voltage (status_cell_over_voltage msg))
    (cl:cons ':status_cell_under_voltage (status_cell_under_voltage msg))
    (cl:cons ':status_charge_over_current (status_charge_over_current msg))
    (cl:cons ':status_shortcircuit (status_shortcircuit msg))
    (cl:cons ':status_discharge_over_current (status_discharge_over_current msg))
    (cl:cons ':status_temp_discharging_err (status_temp_discharging_err msg))
    (cl:cons ':status_charger_detected (status_charger_detected msg))
    (cl:cons ':last_battery_msg_time (last_battery_msg_time msg))
))
