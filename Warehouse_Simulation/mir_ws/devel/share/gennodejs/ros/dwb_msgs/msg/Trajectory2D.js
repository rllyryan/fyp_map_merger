// Auto-generated. Do not edit!

// (in-package dwb_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_2d_msgs = _finder('nav_2d_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Trajectory2D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocity = null;
      this.poses = null;
      this.time_offsets = null;
    }
    else {
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new nav_2d_msgs.msg.Twist2D();
      }
      if (initObj.hasOwnProperty('poses')) {
        this.poses = initObj.poses
      }
      else {
        this.poses = [];
      }
      if (initObj.hasOwnProperty('time_offsets')) {
        this.time_offsets = initObj.time_offsets
      }
      else {
        this.time_offsets = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Trajectory2D
    // Serialize message field [velocity]
    bufferOffset = nav_2d_msgs.msg.Twist2D.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [poses]
    // Serialize the length for message field [poses]
    bufferOffset = _serializer.uint32(obj.poses.length, buffer, bufferOffset);
    obj.poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [time_offsets]
    bufferOffset = _arraySerializer.duration(obj.time_offsets, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Trajectory2D
    let len;
    let data = new Trajectory2D(null);
    // Deserialize message field [velocity]
    data.velocity = nav_2d_msgs.msg.Twist2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [poses]
    // Deserialize array length for message field [poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.poses[i] = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [time_offsets]
    data.time_offsets = _arrayDeserializer.duration(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.poses.length;
    length += 8 * object.time_offsets.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dwb_msgs/Trajectory2D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cabdc5bddc0dd1dcdc6b8f29fcb7ebcb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # For a given velocity command, the poses that the robot will go to in the allotted time.
    
    # Input Velocity
    nav_2d_msgs/Twist2D velocity
    
    # Poses the robot will go to, given our kinematic model
    geometry_msgs/Pose2D[] poses
    
    # Time difference between the current pose and the poses in the trajectory.
    # Parallel array to poses. Length should be the same.
    duration[] time_offsets
    
    ================================================================================
    MSG: nav_2d_msgs/Twist2D
    float64 x
    float64 y
    float64 theta
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
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
    const resolved = new Trajectory2D(null);
    if (msg.velocity !== undefined) {
      resolved.velocity = nav_2d_msgs.msg.Twist2D.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new nav_2d_msgs.msg.Twist2D()
    }

    if (msg.poses !== undefined) {
      resolved.poses = new Array(msg.poses.length);
      for (let i = 0; i < resolved.poses.length; ++i) {
        resolved.poses[i] = geometry_msgs.msg.Pose2D.Resolve(msg.poses[i]);
      }
    }
    else {
      resolved.poses = []
    }

    if (msg.time_offsets !== undefined) {
      resolved.time_offsets = msg.time_offsets;
    }
    else {
      resolved.time_offsets = []
    }

    return resolved;
    }
};

module.exports = Trajectory2D;
