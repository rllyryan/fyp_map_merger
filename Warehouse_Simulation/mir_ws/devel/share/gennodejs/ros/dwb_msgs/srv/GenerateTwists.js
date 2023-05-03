// Auto-generated. Do not edit!

// (in-package dwb_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_2d_msgs = _finder('nav_2d_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GenerateTwistsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('current_vel')) {
        this.current_vel = initObj.current_vel
      }
      else {
        this.current_vel = new nav_2d_msgs.msg.Twist2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenerateTwistsRequest
    // Serialize message field [current_vel]
    bufferOffset = nav_2d_msgs.msg.Twist2D.serialize(obj.current_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateTwistsRequest
    let len;
    let data = new GenerateTwistsRequest(null);
    // Deserialize message field [current_vel]
    data.current_vel = nav_2d_msgs.msg.Twist2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dwb_msgs/GenerateTwistsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b565023e01bba3608d16ec34d67c081';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # For a given velocity, generate which twist commands will be evaluated
    nav_2d_msgs/Twist2D current_vel
    
    ================================================================================
    MSG: nav_2d_msgs/Twist2D
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GenerateTwistsRequest(null);
    if (msg.current_vel !== undefined) {
      resolved.current_vel = nav_2d_msgs.msg.Twist2D.Resolve(msg.current_vel)
    }
    else {
      resolved.current_vel = new nav_2d_msgs.msg.Twist2D()
    }

    return resolved;
    }
};

class GenerateTwistsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.twists = null;
    }
    else {
      if (initObj.hasOwnProperty('twists')) {
        this.twists = initObj.twists
      }
      else {
        this.twists = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenerateTwistsResponse
    // Serialize message field [twists]
    // Serialize the length for message field [twists]
    bufferOffset = _serializer.uint32(obj.twists.length, buffer, bufferOffset);
    obj.twists.forEach((val) => {
      bufferOffset = nav_2d_msgs.msg.Twist2D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateTwistsResponse
    let len;
    let data = new GenerateTwistsResponse(null);
    // Deserialize message field [twists]
    // Deserialize array length for message field [twists]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.twists = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.twists[i] = nav_2d_msgs.msg.Twist2D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.twists.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dwb_msgs/GenerateTwistsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca457e77ab95ba074b796555f7e74efe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_2d_msgs/Twist2D[] twists
    
    
    ================================================================================
    MSG: nav_2d_msgs/Twist2D
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GenerateTwistsResponse(null);
    if (msg.twists !== undefined) {
      resolved.twists = new Array(msg.twists.length);
      for (let i = 0; i < resolved.twists.length; ++i) {
        resolved.twists[i] = nav_2d_msgs.msg.Twist2D.Resolve(msg.twists[i]);
      }
    }
    else {
      resolved.twists = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GenerateTwistsRequest,
  Response: GenerateTwistsResponse,
  md5sum() { return '01d3946b46f84a3da34b725f25f3768a'; },
  datatype() { return 'dwb_msgs/GenerateTwists'; }
};
