// Auto-generated. Do not edit!

// (in-package locomotor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ResultCode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.component = null;
      this.result_code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('component')) {
        this.component = initObj.component
      }
      else {
        this.component = 0;
      }
      if (initObj.hasOwnProperty('result_code')) {
        this.result_code = initObj.result_code
      }
      else {
        this.result_code = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResultCode
    // Serialize message field [component]
    bufferOffset = _serializer.int32(obj.component, buffer, bufferOffset);
    // Serialize message field [result_code]
    bufferOffset = _serializer.int32(obj.result_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResultCode
    let len;
    let data = new ResultCode(null);
    // Deserialize message field [component]
    data.component = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [result_code]
    data.result_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'locomotor_msgs/ResultCode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c162cbf5db9d590e1047c78cbd90371';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains three separate pieces.
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResultCode(null);
    if (msg.component !== undefined) {
      resolved.component = msg.component;
    }
    else {
      resolved.component = 0
    }

    if (msg.result_code !== undefined) {
      resolved.result_code = msg.result_code;
    }
    else {
      resolved.result_code = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

// Constants for message
ResultCode.Constants = {
  GLOBAL_COSTMAP: 1,
  LOCAL_COSTMAP: 2,
  GLOBAL_PLANNER: 4,
  LOCAL_PLANNER: 8,
  GENERIC_COSTMAP: 0,
  COSTMAP_SAFETY: 1,
  COSTMAP_DATA_LAG: 2,
  GENERIC_PLANNER: 3,
  GENERIC_GLOBAL_PLANNER: 4,
  INVALID_START: 5,
  START_BOUNDS: 6,
  OCCUPIED_START: 7,
  INVALID_GOAL: 8,
  GOAL_BOUNDS: 9,
  OCCUPIED_GOAL: 10,
  NO_GLOBAL_PATH: 11,
  GLOBAL_PLANNER_TIMEOUT: 12,
  GENERIC_LOCAL_PLANNER: 13,
  ILLEGAL_TRAJECTORY: 14,
  NO_LEGAL_TRAJECTORIES: 15,
  PLANNER_TF: 16,
}

module.exports = ResultCode;
