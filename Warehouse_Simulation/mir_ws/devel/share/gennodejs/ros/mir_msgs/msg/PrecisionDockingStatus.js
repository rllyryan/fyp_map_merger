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

class PrecisionDockingStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.connected = null;
      this.motor_forward = null;
      this.motor_back = null;
      this.left_docking = null;
      this.right_docking = null;
    }
    else {
      if (initObj.hasOwnProperty('connected')) {
        this.connected = initObj.connected
      }
      else {
        this.connected = false;
      }
      if (initObj.hasOwnProperty('motor_forward')) {
        this.motor_forward = initObj.motor_forward
      }
      else {
        this.motor_forward = false;
      }
      if (initObj.hasOwnProperty('motor_back')) {
        this.motor_back = initObj.motor_back
      }
      else {
        this.motor_back = false;
      }
      if (initObj.hasOwnProperty('left_docking')) {
        this.left_docking = initObj.left_docking
      }
      else {
        this.left_docking = false;
      }
      if (initObj.hasOwnProperty('right_docking')) {
        this.right_docking = initObj.right_docking
      }
      else {
        this.right_docking = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PrecisionDockingStatus
    // Serialize message field [connected]
    bufferOffset = _serializer.bool(obj.connected, buffer, bufferOffset);
    // Serialize message field [motor_forward]
    bufferOffset = _serializer.bool(obj.motor_forward, buffer, bufferOffset);
    // Serialize message field [motor_back]
    bufferOffset = _serializer.bool(obj.motor_back, buffer, bufferOffset);
    // Serialize message field [left_docking]
    bufferOffset = _serializer.bool(obj.left_docking, buffer, bufferOffset);
    // Serialize message field [right_docking]
    bufferOffset = _serializer.bool(obj.right_docking, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PrecisionDockingStatus
    let len;
    let data = new PrecisionDockingStatus(null);
    // Deserialize message field [connected]
    data.connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor_forward]
    data.motor_forward = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor_back]
    data.motor_back = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_docking]
    data.left_docking = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_docking]
    data.right_docking = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/PrecisionDockingStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '17548d8189172ef51cde6fef0830938f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool connected
    bool motor_forward
    bool motor_back
    bool left_docking
    bool right_docking
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PrecisionDockingStatus(null);
    if (msg.connected !== undefined) {
      resolved.connected = msg.connected;
    }
    else {
      resolved.connected = false
    }

    if (msg.motor_forward !== undefined) {
      resolved.motor_forward = msg.motor_forward;
    }
    else {
      resolved.motor_forward = false
    }

    if (msg.motor_back !== undefined) {
      resolved.motor_back = msg.motor_back;
    }
    else {
      resolved.motor_back = false
    }

    if (msg.left_docking !== undefined) {
      resolved.left_docking = msg.left_docking;
    }
    else {
      resolved.left_docking = false
    }

    if (msg.right_docking !== undefined) {
      resolved.right_docking = msg.right_docking;
    }
    else {
      resolved.right_docking = false
    }

    return resolved;
    }
};

module.exports = PrecisionDockingStatus;
