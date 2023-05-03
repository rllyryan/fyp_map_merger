// Auto-generated. Do not edit!

// (in-package nav_2d_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UIntBounds = require('./UIntBounds.js');

//-----------------------------------------------------------

class NavGridOfDoublesUpdate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.bounds = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('bounds')) {
        this.bounds = initObj.bounds
      }
      else {
        this.bounds = new UIntBounds();
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
    // Serializes a message object of type NavGridOfDoublesUpdate
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [bounds]
    bufferOffset = UIntBounds.serialize(obj.bounds, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.float64(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavGridOfDoublesUpdate
    let len;
    let data = new NavGridOfDoublesUpdate(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [bounds]
    data.bounds = UIntBounds.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.data.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nav_2d_msgs/NavGridOfDoublesUpdate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7978c0302caa5ef135fe6600dcca19e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    UIntBounds bounds
    float64[] data
    
    ================================================================================
    MSG: nav_2d_msgs/UIntBounds
    # Bounds are inclusive
    uint32 min_x
    uint32 min_y
    uint32 max_x
    uint32 max_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavGridOfDoublesUpdate(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.bounds !== undefined) {
      resolved.bounds = UIntBounds.Resolve(msg.bounds)
    }
    else {
      resolved.bounds = new UIntBounds()
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

module.exports = NavGridOfDoublesUpdate;
