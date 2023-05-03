// Auto-generated. Do not edit!

// (in-package nav_2d_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NavGridInfo = require('./NavGridInfo.js');

//-----------------------------------------------------------

class NavGridOfChars {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.info = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = new NavGridInfo();
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavGridOfChars
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = NavGridInfo.serialize(obj.info, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavGridOfChars
    let len;
    let data = new NavGridOfChars(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = NavGridInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += NavGridInfo.getMessageSize(object.info);
    length += object.data.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nav_2d_msgs/NavGridOfChars';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '396563c1db71f1080855e692b0310f96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    NavGridInfo info
    # The map data, in row-major order, starting with (0,0).
    # Unlike nav_msgs/OccupancyGrid, the values are [0, 256), not [-1, 100]
    uint8[] data
    
    ================================================================================
    MSG: nav_2d_msgs/NavGridInfo
    uint32 width
    uint32 height
    float64 resolution
    string frame_id
    float64 origin_x
    float64 origin_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavGridOfChars(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.info !== undefined) {
      resolved.info = NavGridInfo.Resolve(msg.info)
    }
    else {
      resolved.info = new NavGridInfo()
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = NavGridOfChars;
