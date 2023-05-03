// Auto-generated. Do not edit!

// (in-package nav_2d_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Polygon2D = require('./Polygon2D.js');

//-----------------------------------------------------------

class ComplexPolygon2D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.outer = null;
      this.inner = null;
    }
    else {
      if (initObj.hasOwnProperty('outer')) {
        this.outer = initObj.outer
      }
      else {
        this.outer = new Polygon2D();
      }
      if (initObj.hasOwnProperty('inner')) {
        this.inner = initObj.inner
      }
      else {
        this.inner = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComplexPolygon2D
    // Serialize message field [outer]
    bufferOffset = Polygon2D.serialize(obj.outer, buffer, bufferOffset);
    // Serialize message field [inner]
    // Serialize the length for message field [inner]
    bufferOffset = _serializer.uint32(obj.inner.length, buffer, bufferOffset);
    obj.inner.forEach((val) => {
      bufferOffset = Polygon2D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComplexPolygon2D
    let len;
    let data = new ComplexPolygon2D(null);
    // Deserialize message field [outer]
    data.outer = Polygon2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [inner]
    // Deserialize array length for message field [inner]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.inner = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.inner[i] = Polygon2D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Polygon2D.getMessageSize(object.outer);
    object.inner.forEach((val) => {
      length += Polygon2D.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nav_2d_msgs/ComplexPolygon2D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f93841a14f7caf40d600ff8c62446616';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Representation for a non-simple polygon, i.e. one with holes
    Polygon2D outer    # The outer perimeter
    Polygon2D[] inner  # The perimeter of any inner holes
    
    ================================================================================
    MSG: nav_2d_msgs/Polygon2D
    Point2D[] points
    
    ================================================================================
    MSG: nav_2d_msgs/Point2D
    float64 x
    float64 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ComplexPolygon2D(null);
    if (msg.outer !== undefined) {
      resolved.outer = Polygon2D.Resolve(msg.outer)
    }
    else {
      resolved.outer = new Polygon2D()
    }

    if (msg.inner !== undefined) {
      resolved.inner = new Array(msg.inner.length);
      for (let i = 0; i < resolved.inner.length; ++i) {
        resolved.inner[i] = Polygon2D.Resolve(msg.inner[i]);
      }
    }
    else {
      resolved.inner = []
    }

    return resolved;
    }
};

module.exports = ComplexPolygon2D;
