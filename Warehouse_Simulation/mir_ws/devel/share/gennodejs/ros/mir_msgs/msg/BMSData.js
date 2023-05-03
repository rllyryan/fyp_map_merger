// Auto-generated. Do not edit!

// (in-package mir_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BMSData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pack_voltage = null;
      this.charge_current = null;
      this.discharge_current = null;
      this.state_of_charge = null;
      this.remaining_time_to_full_charge = null;
      this.remaining_capacity = null;
      this.state_of_health = null;
      this.status_flags = null;
      this.temperature = null;
      this.cell_voltage = null;
      this.bmz_flag = null;
      this.full_voltage = null;
      this.full_capacity = null;
      this.temperature2 = null;
      this.temperature3 = null;
      this.cycle_count = null;
      this.dsg_overcurrent_counter = null;
      this.chg_overcurrent_counter = null;
      this.hw_major = null;
      this.hw_minor = null;
      this.fw_major = null;
      this.fw_minor = null;
      this.fw_patch = null;
      this.rec_fw_major = null;
      this.rec_fw_minor = null;
      this.bl_major = null;
      this.bl_minor = null;
      this.status_enabled = null;
      this.status_current_limitation = null;
      this.status_switch_off_warn1 = null;
      this.status_switch_off_warn2 = null;
      this.status_fully_discharged = null;
      this.status_nearly_discharged = null;
      this.status_chargefet_on = null;
      this.status_dischargefet_on = null;
      this.status_discharging = null;
      this.status_fully_charged = null;
      this.status_charging = null;
      this.status_temp_charging_err = null;
      this.status_cell_over_voltage = null;
      this.status_cell_under_voltage = null;
      this.status_charge_over_current = null;
      this.status_shortcircuit = null;
      this.status_discharge_over_current = null;
      this.status_temp_discharging_err = null;
      this.status_charger_detected = null;
      this.last_battery_msg_time = null;
    }
    else {
      if (initObj.hasOwnProperty('pack_voltage')) {
        this.pack_voltage = initObj.pack_voltage
      }
      else {
        this.pack_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('charge_current')) {
        this.charge_current = initObj.charge_current
      }
      else {
        this.charge_current = 0.0;
      }
      if (initObj.hasOwnProperty('discharge_current')) {
        this.discharge_current = initObj.discharge_current
      }
      else {
        this.discharge_current = 0.0;
      }
      if (initObj.hasOwnProperty('state_of_charge')) {
        this.state_of_charge = initObj.state_of_charge
      }
      else {
        this.state_of_charge = 0;
      }
      if (initObj.hasOwnProperty('remaining_time_to_full_charge')) {
        this.remaining_time_to_full_charge = initObj.remaining_time_to_full_charge
      }
      else {
        this.remaining_time_to_full_charge = 0.0;
      }
      if (initObj.hasOwnProperty('remaining_capacity')) {
        this.remaining_capacity = initObj.remaining_capacity
      }
      else {
        this.remaining_capacity = 0;
      }
      if (initObj.hasOwnProperty('state_of_health')) {
        this.state_of_health = initObj.state_of_health
      }
      else {
        this.state_of_health = 0;
      }
      if (initObj.hasOwnProperty('status_flags')) {
        this.status_flags = initObj.status_flags
      }
      else {
        this.status_flags = 0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0;
      }
      if (initObj.hasOwnProperty('cell_voltage')) {
        this.cell_voltage = initObj.cell_voltage
      }
      else {
        this.cell_voltage = [];
      }
      if (initObj.hasOwnProperty('bmz_flag')) {
        this.bmz_flag = initObj.bmz_flag
      }
      else {
        this.bmz_flag = 0;
      }
      if (initObj.hasOwnProperty('full_voltage')) {
        this.full_voltage = initObj.full_voltage
      }
      else {
        this.full_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('full_capacity')) {
        this.full_capacity = initObj.full_capacity
      }
      else {
        this.full_capacity = 0;
      }
      if (initObj.hasOwnProperty('temperature2')) {
        this.temperature2 = initObj.temperature2
      }
      else {
        this.temperature2 = 0;
      }
      if (initObj.hasOwnProperty('temperature3')) {
        this.temperature3 = initObj.temperature3
      }
      else {
        this.temperature3 = 0;
      }
      if (initObj.hasOwnProperty('cycle_count')) {
        this.cycle_count = initObj.cycle_count
      }
      else {
        this.cycle_count = 0;
      }
      if (initObj.hasOwnProperty('dsg_overcurrent_counter')) {
        this.dsg_overcurrent_counter = initObj.dsg_overcurrent_counter
      }
      else {
        this.dsg_overcurrent_counter = 0;
      }
      if (initObj.hasOwnProperty('chg_overcurrent_counter')) {
        this.chg_overcurrent_counter = initObj.chg_overcurrent_counter
      }
      else {
        this.chg_overcurrent_counter = 0;
      }
      if (initObj.hasOwnProperty('hw_major')) {
        this.hw_major = initObj.hw_major
      }
      else {
        this.hw_major = 0;
      }
      if (initObj.hasOwnProperty('hw_minor')) {
        this.hw_minor = initObj.hw_minor
      }
      else {
        this.hw_minor = 0;
      }
      if (initObj.hasOwnProperty('fw_major')) {
        this.fw_major = initObj.fw_major
      }
      else {
        this.fw_major = 0;
      }
      if (initObj.hasOwnProperty('fw_minor')) {
        this.fw_minor = initObj.fw_minor
      }
      else {
        this.fw_minor = 0;
      }
      if (initObj.hasOwnProperty('fw_patch')) {
        this.fw_patch = initObj.fw_patch
      }
      else {
        this.fw_patch = 0;
      }
      if (initObj.hasOwnProperty('rec_fw_major')) {
        this.rec_fw_major = initObj.rec_fw_major
      }
      else {
        this.rec_fw_major = 0;
      }
      if (initObj.hasOwnProperty('rec_fw_minor')) {
        this.rec_fw_minor = initObj.rec_fw_minor
      }
      else {
        this.rec_fw_minor = 0;
      }
      if (initObj.hasOwnProperty('bl_major')) {
        this.bl_major = initObj.bl_major
      }
      else {
        this.bl_major = 0;
      }
      if (initObj.hasOwnProperty('bl_minor')) {
        this.bl_minor = initObj.bl_minor
      }
      else {
        this.bl_minor = 0;
      }
      if (initObj.hasOwnProperty('status_enabled')) {
        this.status_enabled = initObj.status_enabled
      }
      else {
        this.status_enabled = 0;
      }
      if (initObj.hasOwnProperty('status_current_limitation')) {
        this.status_current_limitation = initObj.status_current_limitation
      }
      else {
        this.status_current_limitation = 0;
      }
      if (initObj.hasOwnProperty('status_switch_off_warn1')) {
        this.status_switch_off_warn1 = initObj.status_switch_off_warn1
      }
      else {
        this.status_switch_off_warn1 = 0;
      }
      if (initObj.hasOwnProperty('status_switch_off_warn2')) {
        this.status_switch_off_warn2 = initObj.status_switch_off_warn2
      }
      else {
        this.status_switch_off_warn2 = 0;
      }
      if (initObj.hasOwnProperty('status_fully_discharged')) {
        this.status_fully_discharged = initObj.status_fully_discharged
      }
      else {
        this.status_fully_discharged = 0;
      }
      if (initObj.hasOwnProperty('status_nearly_discharged')) {
        this.status_nearly_discharged = initObj.status_nearly_discharged
      }
      else {
        this.status_nearly_discharged = 0;
      }
      if (initObj.hasOwnProperty('status_chargefet_on')) {
        this.status_chargefet_on = initObj.status_chargefet_on
      }
      else {
        this.status_chargefet_on = 0;
      }
      if (initObj.hasOwnProperty('status_dischargefet_on')) {
        this.status_dischargefet_on = initObj.status_dischargefet_on
      }
      else {
        this.status_dischargefet_on = 0;
      }
      if (initObj.hasOwnProperty('status_discharging')) {
        this.status_discharging = initObj.status_discharging
      }
      else {
        this.status_discharging = 0;
      }
      if (initObj.hasOwnProperty('status_fully_charged')) {
        this.status_fully_charged = initObj.status_fully_charged
      }
      else {
        this.status_fully_charged = 0;
      }
      if (initObj.hasOwnProperty('status_charging')) {
        this.status_charging = initObj.status_charging
      }
      else {
        this.status_charging = 0;
      }
      if (initObj.hasOwnProperty('status_temp_charging_err')) {
        this.status_temp_charging_err = initObj.status_temp_charging_err
      }
      else {
        this.status_temp_charging_err = 0;
      }
      if (initObj.hasOwnProperty('status_cell_over_voltage')) {
        this.status_cell_over_voltage = initObj.status_cell_over_voltage
      }
      else {
        this.status_cell_over_voltage = 0;
      }
      if (initObj.hasOwnProperty('status_cell_under_voltage')) {
        this.status_cell_under_voltage = initObj.status_cell_under_voltage
      }
      else {
        this.status_cell_under_voltage = 0;
      }
      if (initObj.hasOwnProperty('status_charge_over_current')) {
        this.status_charge_over_current = initObj.status_charge_over_current
      }
      else {
        this.status_charge_over_current = 0;
      }
      if (initObj.hasOwnProperty('status_shortcircuit')) {
        this.status_shortcircuit = initObj.status_shortcircuit
      }
      else {
        this.status_shortcircuit = 0;
      }
      if (initObj.hasOwnProperty('status_discharge_over_current')) {
        this.status_discharge_over_current = initObj.status_discharge_over_current
      }
      else {
        this.status_discharge_over_current = 0;
      }
      if (initObj.hasOwnProperty('status_temp_discharging_err')) {
        this.status_temp_discharging_err = initObj.status_temp_discharging_err
      }
      else {
        this.status_temp_discharging_err = 0;
      }
      if (initObj.hasOwnProperty('status_charger_detected')) {
        this.status_charger_detected = initObj.status_charger_detected
      }
      else {
        this.status_charger_detected = 0;
      }
      if (initObj.hasOwnProperty('last_battery_msg_time')) {
        this.last_battery_msg_time = initObj.last_battery_msg_time
      }
      else {
        this.last_battery_msg_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BMSData
    // Serialize message field [pack_voltage]
    bufferOffset = _serializer.float64(obj.pack_voltage, buffer, bufferOffset);
    // Serialize message field [charge_current]
    bufferOffset = _serializer.float64(obj.charge_current, buffer, bufferOffset);
    // Serialize message field [discharge_current]
    bufferOffset = _serializer.float64(obj.discharge_current, buffer, bufferOffset);
    // Serialize message field [state_of_charge]
    bufferOffset = _serializer.int32(obj.state_of_charge, buffer, bufferOffset);
    // Serialize message field [remaining_time_to_full_charge]
    bufferOffset = _serializer.float64(obj.remaining_time_to_full_charge, buffer, bufferOffset);
    // Serialize message field [remaining_capacity]
    bufferOffset = _serializer.int32(obj.remaining_capacity, buffer, bufferOffset);
    // Serialize message field [state_of_health]
    bufferOffset = _serializer.int32(obj.state_of_health, buffer, bufferOffset);
    // Serialize message field [status_flags]
    bufferOffset = _serializer.int32(obj.status_flags, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.int32(obj.temperature, buffer, bufferOffset);
    // Serialize message field [cell_voltage]
    bufferOffset = _arraySerializer.uint32(obj.cell_voltage, buffer, bufferOffset, null);
    // Serialize message field [bmz_flag]
    bufferOffset = _serializer.uint32(obj.bmz_flag, buffer, bufferOffset);
    // Serialize message field [full_voltage]
    bufferOffset = _serializer.float64(obj.full_voltage, buffer, bufferOffset);
    // Serialize message field [full_capacity]
    bufferOffset = _serializer.int32(obj.full_capacity, buffer, bufferOffset);
    // Serialize message field [temperature2]
    bufferOffset = _serializer.int32(obj.temperature2, buffer, bufferOffset);
    // Serialize message field [temperature3]
    bufferOffset = _serializer.int32(obj.temperature3, buffer, bufferOffset);
    // Serialize message field [cycle_count]
    bufferOffset = _serializer.int32(obj.cycle_count, buffer, bufferOffset);
    // Serialize message field [dsg_overcurrent_counter]
    bufferOffset = _serializer.int32(obj.dsg_overcurrent_counter, buffer, bufferOffset);
    // Serialize message field [chg_overcurrent_counter]
    bufferOffset = _serializer.int32(obj.chg_overcurrent_counter, buffer, bufferOffset);
    // Serialize message field [hw_major]
    bufferOffset = _serializer.int32(obj.hw_major, buffer, bufferOffset);
    // Serialize message field [hw_minor]
    bufferOffset = _serializer.int32(obj.hw_minor, buffer, bufferOffset);
    // Serialize message field [fw_major]
    bufferOffset = _serializer.int32(obj.fw_major, buffer, bufferOffset);
    // Serialize message field [fw_minor]
    bufferOffset = _serializer.int32(obj.fw_minor, buffer, bufferOffset);
    // Serialize message field [fw_patch]
    bufferOffset = _serializer.int32(obj.fw_patch, buffer, bufferOffset);
    // Serialize message field [rec_fw_major]
    bufferOffset = _serializer.int32(obj.rec_fw_major, buffer, bufferOffset);
    // Serialize message field [rec_fw_minor]
    bufferOffset = _serializer.int32(obj.rec_fw_minor, buffer, bufferOffset);
    // Serialize message field [bl_major]
    bufferOffset = _serializer.int32(obj.bl_major, buffer, bufferOffset);
    // Serialize message field [bl_minor]
    bufferOffset = _serializer.int32(obj.bl_minor, buffer, bufferOffset);
    // Serialize message field [status_enabled]
    bufferOffset = _serializer.uint32(obj.status_enabled, buffer, bufferOffset);
    // Serialize message field [status_current_limitation]
    bufferOffset = _serializer.uint32(obj.status_current_limitation, buffer, bufferOffset);
    // Serialize message field [status_switch_off_warn1]
    bufferOffset = _serializer.uint32(obj.status_switch_off_warn1, buffer, bufferOffset);
    // Serialize message field [status_switch_off_warn2]
    bufferOffset = _serializer.uint32(obj.status_switch_off_warn2, buffer, bufferOffset);
    // Serialize message field [status_fully_discharged]
    bufferOffset = _serializer.uint32(obj.status_fully_discharged, buffer, bufferOffset);
    // Serialize message field [status_nearly_discharged]
    bufferOffset = _serializer.uint32(obj.status_nearly_discharged, buffer, bufferOffset);
    // Serialize message field [status_chargefet_on]
    bufferOffset = _serializer.uint32(obj.status_chargefet_on, buffer, bufferOffset);
    // Serialize message field [status_dischargefet_on]
    bufferOffset = _serializer.uint32(obj.status_dischargefet_on, buffer, bufferOffset);
    // Serialize message field [status_discharging]
    bufferOffset = _serializer.uint32(obj.status_discharging, buffer, bufferOffset);
    // Serialize message field [status_fully_charged]
    bufferOffset = _serializer.uint32(obj.status_fully_charged, buffer, bufferOffset);
    // Serialize message field [status_charging]
    bufferOffset = _serializer.uint32(obj.status_charging, buffer, bufferOffset);
    // Serialize message field [status_temp_charging_err]
    bufferOffset = _serializer.uint32(obj.status_temp_charging_err, buffer, bufferOffset);
    // Serialize message field [status_cell_over_voltage]
    bufferOffset = _serializer.uint32(obj.status_cell_over_voltage, buffer, bufferOffset);
    // Serialize message field [status_cell_under_voltage]
    bufferOffset = _serializer.uint32(obj.status_cell_under_voltage, buffer, bufferOffset);
    // Serialize message field [status_charge_over_current]
    bufferOffset = _serializer.uint32(obj.status_charge_over_current, buffer, bufferOffset);
    // Serialize message field [status_shortcircuit]
    bufferOffset = _serializer.uint32(obj.status_shortcircuit, buffer, bufferOffset);
    // Serialize message field [status_discharge_over_current]
    bufferOffset = _serializer.uint32(obj.status_discharge_over_current, buffer, bufferOffset);
    // Serialize message field [status_temp_discharging_err]
    bufferOffset = _serializer.uint32(obj.status_temp_discharging_err, buffer, bufferOffset);
    // Serialize message field [status_charger_detected]
    bufferOffset = _serializer.uint32(obj.status_charger_detected, buffer, bufferOffset);
    // Serialize message field [last_battery_msg_time]
    bufferOffset = _serializer.float64(obj.last_battery_msg_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BMSData
    let len;
    let data = new BMSData(null);
    // Deserialize message field [pack_voltage]
    data.pack_voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [charge_current]
    data.charge_current = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [discharge_current]
    data.discharge_current = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [state_of_charge]
    data.state_of_charge = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [remaining_time_to_full_charge]
    data.remaining_time_to_full_charge = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [remaining_capacity]
    data.remaining_capacity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [state_of_health]
    data.state_of_health = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status_flags]
    data.status_flags = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cell_voltage]
    data.cell_voltage = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [bmz_flag]
    data.bmz_flag = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [full_voltage]
    data.full_voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [full_capacity]
    data.full_capacity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [temperature2]
    data.temperature2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [temperature3]
    data.temperature3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cycle_count]
    data.cycle_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dsg_overcurrent_counter]
    data.dsg_overcurrent_counter = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [chg_overcurrent_counter]
    data.chg_overcurrent_counter = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hw_major]
    data.hw_major = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hw_minor]
    data.hw_minor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fw_major]
    data.fw_major = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fw_minor]
    data.fw_minor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fw_patch]
    data.fw_patch = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rec_fw_major]
    data.rec_fw_major = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rec_fw_minor]
    data.rec_fw_minor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [bl_major]
    data.bl_major = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [bl_minor]
    data.bl_minor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status_enabled]
    data.status_enabled = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_current_limitation]
    data.status_current_limitation = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_switch_off_warn1]
    data.status_switch_off_warn1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_switch_off_warn2]
    data.status_switch_off_warn2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_fully_discharged]
    data.status_fully_discharged = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_nearly_discharged]
    data.status_nearly_discharged = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_chargefet_on]
    data.status_chargefet_on = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_dischargefet_on]
    data.status_dischargefet_on = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_discharging]
    data.status_discharging = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_fully_charged]
    data.status_fully_charged = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_charging]
    data.status_charging = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_temp_charging_err]
    data.status_temp_charging_err = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_cell_over_voltage]
    data.status_cell_over_voltage = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_cell_under_voltage]
    data.status_cell_under_voltage = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_charge_over_current]
    data.status_charge_over_current = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_shortcircuit]
    data.status_shortcircuit = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_discharge_over_current]
    data.status_discharge_over_current = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_temp_discharging_err]
    data.status_temp_discharging_err = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status_charger_detected]
    data.status_charger_detected = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [last_battery_msg_time]
    data.last_battery_msg_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.cell_voltage.length;
    return length + 212;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/BMSData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd60e43d26f083554a17e9b16c16317d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 pack_voltage
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BMSData(null);
    if (msg.pack_voltage !== undefined) {
      resolved.pack_voltage = msg.pack_voltage;
    }
    else {
      resolved.pack_voltage = 0.0
    }

    if (msg.charge_current !== undefined) {
      resolved.charge_current = msg.charge_current;
    }
    else {
      resolved.charge_current = 0.0
    }

    if (msg.discharge_current !== undefined) {
      resolved.discharge_current = msg.discharge_current;
    }
    else {
      resolved.discharge_current = 0.0
    }

    if (msg.state_of_charge !== undefined) {
      resolved.state_of_charge = msg.state_of_charge;
    }
    else {
      resolved.state_of_charge = 0
    }

    if (msg.remaining_time_to_full_charge !== undefined) {
      resolved.remaining_time_to_full_charge = msg.remaining_time_to_full_charge;
    }
    else {
      resolved.remaining_time_to_full_charge = 0.0
    }

    if (msg.remaining_capacity !== undefined) {
      resolved.remaining_capacity = msg.remaining_capacity;
    }
    else {
      resolved.remaining_capacity = 0
    }

    if (msg.state_of_health !== undefined) {
      resolved.state_of_health = msg.state_of_health;
    }
    else {
      resolved.state_of_health = 0
    }

    if (msg.status_flags !== undefined) {
      resolved.status_flags = msg.status_flags;
    }
    else {
      resolved.status_flags = 0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0
    }

    if (msg.cell_voltage !== undefined) {
      resolved.cell_voltage = msg.cell_voltage;
    }
    else {
      resolved.cell_voltage = []
    }

    if (msg.bmz_flag !== undefined) {
      resolved.bmz_flag = msg.bmz_flag;
    }
    else {
      resolved.bmz_flag = 0
    }

    if (msg.full_voltage !== undefined) {
      resolved.full_voltage = msg.full_voltage;
    }
    else {
      resolved.full_voltage = 0.0
    }

    if (msg.full_capacity !== undefined) {
      resolved.full_capacity = msg.full_capacity;
    }
    else {
      resolved.full_capacity = 0
    }

    if (msg.temperature2 !== undefined) {
      resolved.temperature2 = msg.temperature2;
    }
    else {
      resolved.temperature2 = 0
    }

    if (msg.temperature3 !== undefined) {
      resolved.temperature3 = msg.temperature3;
    }
    else {
      resolved.temperature3 = 0
    }

    if (msg.cycle_count !== undefined) {
      resolved.cycle_count = msg.cycle_count;
    }
    else {
      resolved.cycle_count = 0
    }

    if (msg.dsg_overcurrent_counter !== undefined) {
      resolved.dsg_overcurrent_counter = msg.dsg_overcurrent_counter;
    }
    else {
      resolved.dsg_overcurrent_counter = 0
    }

    if (msg.chg_overcurrent_counter !== undefined) {
      resolved.chg_overcurrent_counter = msg.chg_overcurrent_counter;
    }
    else {
      resolved.chg_overcurrent_counter = 0
    }

    if (msg.hw_major !== undefined) {
      resolved.hw_major = msg.hw_major;
    }
    else {
      resolved.hw_major = 0
    }

    if (msg.hw_minor !== undefined) {
      resolved.hw_minor = msg.hw_minor;
    }
    else {
      resolved.hw_minor = 0
    }

    if (msg.fw_major !== undefined) {
      resolved.fw_major = msg.fw_major;
    }
    else {
      resolved.fw_major = 0
    }

    if (msg.fw_minor !== undefined) {
      resolved.fw_minor = msg.fw_minor;
    }
    else {
      resolved.fw_minor = 0
    }

    if (msg.fw_patch !== undefined) {
      resolved.fw_patch = msg.fw_patch;
    }
    else {
      resolved.fw_patch = 0
    }

    if (msg.rec_fw_major !== undefined) {
      resolved.rec_fw_major = msg.rec_fw_major;
    }
    else {
      resolved.rec_fw_major = 0
    }

    if (msg.rec_fw_minor !== undefined) {
      resolved.rec_fw_minor = msg.rec_fw_minor;
    }
    else {
      resolved.rec_fw_minor = 0
    }

    if (msg.bl_major !== undefined) {
      resolved.bl_major = msg.bl_major;
    }
    else {
      resolved.bl_major = 0
    }

    if (msg.bl_minor !== undefined) {
      resolved.bl_minor = msg.bl_minor;
    }
    else {
      resolved.bl_minor = 0
    }

    if (msg.status_enabled !== undefined) {
      resolved.status_enabled = msg.status_enabled;
    }
    else {
      resolved.status_enabled = 0
    }

    if (msg.status_current_limitation !== undefined) {
      resolved.status_current_limitation = msg.status_current_limitation;
    }
    else {
      resolved.status_current_limitation = 0
    }

    if (msg.status_switch_off_warn1 !== undefined) {
      resolved.status_switch_off_warn1 = msg.status_switch_off_warn1;
    }
    else {
      resolved.status_switch_off_warn1 = 0
    }

    if (msg.status_switch_off_warn2 !== undefined) {
      resolved.status_switch_off_warn2 = msg.status_switch_off_warn2;
    }
    else {
      resolved.status_switch_off_warn2 = 0
    }

    if (msg.status_fully_discharged !== undefined) {
      resolved.status_fully_discharged = msg.status_fully_discharged;
    }
    else {
      resolved.status_fully_discharged = 0
    }

    if (msg.status_nearly_discharged !== undefined) {
      resolved.status_nearly_discharged = msg.status_nearly_discharged;
    }
    else {
      resolved.status_nearly_discharged = 0
    }

    if (msg.status_chargefet_on !== undefined) {
      resolved.status_chargefet_on = msg.status_chargefet_on;
    }
    else {
      resolved.status_chargefet_on = 0
    }

    if (msg.status_dischargefet_on !== undefined) {
      resolved.status_dischargefet_on = msg.status_dischargefet_on;
    }
    else {
      resolved.status_dischargefet_on = 0
    }

    if (msg.status_discharging !== undefined) {
      resolved.status_discharging = msg.status_discharging;
    }
    else {
      resolved.status_discharging = 0
    }

    if (msg.status_fully_charged !== undefined) {
      resolved.status_fully_charged = msg.status_fully_charged;
    }
    else {
      resolved.status_fully_charged = 0
    }

    if (msg.status_charging !== undefined) {
      resolved.status_charging = msg.status_charging;
    }
    else {
      resolved.status_charging = 0
    }

    if (msg.status_temp_charging_err !== undefined) {
      resolved.status_temp_charging_err = msg.status_temp_charging_err;
    }
    else {
      resolved.status_temp_charging_err = 0
    }

    if (msg.status_cell_over_voltage !== undefined) {
      resolved.status_cell_over_voltage = msg.status_cell_over_voltage;
    }
    else {
      resolved.status_cell_over_voltage = 0
    }

    if (msg.status_cell_under_voltage !== undefined) {
      resolved.status_cell_under_voltage = msg.status_cell_under_voltage;
    }
    else {
      resolved.status_cell_under_voltage = 0
    }

    if (msg.status_charge_over_current !== undefined) {
      resolved.status_charge_over_current = msg.status_charge_over_current;
    }
    else {
      resolved.status_charge_over_current = 0
    }

    if (msg.status_shortcircuit !== undefined) {
      resolved.status_shortcircuit = msg.status_shortcircuit;
    }
    else {
      resolved.status_shortcircuit = 0
    }

    if (msg.status_discharge_over_current !== undefined) {
      resolved.status_discharge_over_current = msg.status_discharge_over_current;
    }
    else {
      resolved.status_discharge_over_current = 0
    }

    if (msg.status_temp_discharging_err !== undefined) {
      resolved.status_temp_discharging_err = msg.status_temp_discharging_err;
    }
    else {
      resolved.status_temp_discharging_err = 0
    }

    if (msg.status_charger_detected !== undefined) {
      resolved.status_charger_detected = msg.status_charger_detected;
    }
    else {
      resolved.status_charger_detected = 0
    }

    if (msg.last_battery_msg_time !== undefined) {
      resolved.last_battery_msg_time = msg.last_battery_msg_time;
    }
    else {
      resolved.last_battery_msg_time = 0.0
    }

    return resolved;
    }
};

// Constants for message
BMSData.Constants = {
  DISCHARGING: 1,
  CHARGING: 2,
  OV: 4,
  UV: 8,
  COC: 16,
  DOC: 32,
  DOT: 64,
  DUT: 128,
  SC: 512,
  COT: 1024,
  CUT: 2048,
  FW_STATUS_MSK: 2031616,
  FW_STATUS_SHIFT: 16,
  FW_UPD_OK: 0,
  FW_UPD_RUNNING: 1,
  FW_UPD_FAILED_BOOT: 2,
  FW_UPD_FAILED_APP: 3,
  FW_UPD_FAILED_PARAM: 4,
  FW_STATUS_LOW_BATT: 5,
  FW_STATUS_FILE_CORRUPTED: 6,
  FW_STATUS_CURRENT_TO_HIGH: 7,
  FW_STATUS_NO_CAN: 8,
  FW_BATTERY_IMBALANCE_HIGH: 9,
}

module.exports = BMSData;
