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

class EncoderTestEntry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command_velocity = null;
      this.command_distance = null;
      this.left_dist = null;
      this.right_dist = null;
      this.suggested_direction = null;
      this.user_direction = null;
    }
    else {
      if (initObj.hasOwnProperty('command_velocity')) {
        this.command_velocity = initObj.command_velocity
      }
      else {
        this.command_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('command_distance')) {
        this.command_distance = initObj.command_distance
      }
      else {
        this.command_distance = 0.0;
      }
      if (initObj.hasOwnProperty('left_dist')) {
        this.left_dist = initObj.left_dist
      }
      else {
        this.left_dist = 0.0;
      }
      if (initObj.hasOwnProperty('right_dist')) {
        this.right_dist = initObj.right_dist
      }
      else {
        this.right_dist = 0.0;
      }
      if (initObj.hasOwnProperty('suggested_direction')) {
        this.suggested_direction = initObj.suggested_direction
      }
      else {
        this.suggested_direction = '';
      }
      if (initObj.hasOwnProperty('user_direction')) {
        this.user_direction = initObj.user_direction
      }
      else {
        this.user_direction = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EncoderTestEntry
    // Serialize message field [command_velocity]
    bufferOffset = _serializer.float64(obj.command_velocity, buffer, bufferOffset);
    // Serialize message field [command_distance]
    bufferOffset = _serializer.float64(obj.command_distance, buffer, bufferOffset);
    // Serialize message field [left_dist]
    bufferOffset = _serializer.float64(obj.left_dist, buffer, bufferOffset);
    // Serialize message field [right_dist]
    bufferOffset = _serializer.float64(obj.right_dist, buffer, bufferOffset);
    // Serialize message field [suggested_direction]
    bufferOffset = _serializer.string(obj.suggested_direction, buffer, bufferOffset);
    // Serialize message field [user_direction]
    bufferOffset = _serializer.string(obj.user_direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EncoderTestEntry
    let len;
    let data = new EncoderTestEntry(null);
    // Deserialize message field [command_velocity]
    data.command_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [command_distance]
    data.command_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left_dist]
    data.left_dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_dist]
    data.right_dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [suggested_direction]
    data.suggested_direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [user_direction]
    data.user_direction = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.suggested_direction);
    length += _getByteLength(object.user_direction);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/EncoderTestEntry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cfe8d446cf8b8eaf478f3a59f1f6abdd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 command_velocity
    float64 command_distance
    float64 left_dist
    float64 right_dist
    string suggested_direction
    string user_direction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EncoderTestEntry(null);
    if (msg.command_velocity !== undefined) {
      resolved.command_velocity = msg.command_velocity;
    }
    else {
      resolved.command_velocity = 0.0
    }

    if (msg.command_distance !== undefined) {
      resolved.command_distance = msg.command_distance;
    }
    else {
      resolved.command_distance = 0.0
    }

    if (msg.left_dist !== undefined) {
      resolved.left_dist = msg.left_dist;
    }
    else {
      resolved.left_dist = 0.0
    }

    if (msg.right_dist !== undefined) {
      resolved.right_dist = msg.right_dist;
    }
    else {
      resolved.right_dist = 0.0
    }

    if (msg.suggested_direction !== undefined) {
      resolved.suggested_direction = msg.suggested_direction;
    }
    else {
      resolved.suggested_direction = ''
    }

    if (msg.user_direction !== undefined) {
      resolved.user_direction = msg.user_direction;
    }
    else {
      resolved.user_direction = ''
    }

    return resolved;
    }
};

module.exports = EncoderTestEntry;
