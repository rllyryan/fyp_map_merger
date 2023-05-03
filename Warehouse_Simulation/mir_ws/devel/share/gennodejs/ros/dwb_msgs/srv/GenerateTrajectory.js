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
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let Trajectory2D = require('../msg/Trajectory2D.js');

//-----------------------------------------------------------

class GenerateTrajectoryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_pose = null;
      this.start_vel = null;
      this.cmd_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('start_pose')) {
        this.start_pose = initObj.start_pose
      }
      else {
        this.start_pose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('start_vel')) {
        this.start_vel = initObj.start_vel
      }
      else {
        this.start_vel = new nav_2d_msgs.msg.Twist2D();
      }
      if (initObj.hasOwnProperty('cmd_vel')) {
        this.cmd_vel = initObj.cmd_vel
      }
      else {
        this.cmd_vel = new nav_2d_msgs.msg.Twist2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenerateTrajectoryRequest
    // Serialize message field [start_pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.start_pose, buffer, bufferOffset);
    // Serialize message field [start_vel]
    bufferOffset = nav_2d_msgs.msg.Twist2D.serialize(obj.start_vel, buffer, bufferOffset);
    // Serialize message field [cmd_vel]
    bufferOffset = nav_2d_msgs.msg.Twist2D.serialize(obj.cmd_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateTrajectoryRequest
    let len;
    let data = new GenerateTrajectoryRequest(null);
    // Deserialize message field [start_pose]
    data.start_pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [start_vel]
    data.start_vel = nav_2d_msgs.msg.Twist2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [cmd_vel]
    data.cmd_vel = nav_2d_msgs.msg.Twist2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dwb_msgs/GenerateTrajectoryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c12676b96c40b5308f43475d17c2db1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # For a given start pose, velocity and desired velocity, generate which poses will be visited
    geometry_msgs/Pose2D start_pose
    nav_2d_msgs/Twist2D start_vel
    nav_2d_msgs/Twist2D cmd_vel
    
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
    const resolved = new GenerateTrajectoryRequest(null);
    if (msg.start_pose !== undefined) {
      resolved.start_pose = geometry_msgs.msg.Pose2D.Resolve(msg.start_pose)
    }
    else {
      resolved.start_pose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.start_vel !== undefined) {
      resolved.start_vel = nav_2d_msgs.msg.Twist2D.Resolve(msg.start_vel)
    }
    else {
      resolved.start_vel = new nav_2d_msgs.msg.Twist2D()
    }

    if (msg.cmd_vel !== undefined) {
      resolved.cmd_vel = nav_2d_msgs.msg.Twist2D.Resolve(msg.cmd_vel)
    }
    else {
      resolved.cmd_vel = new nav_2d_msgs.msg.Twist2D()
    }

    return resolved;
    }
};

class GenerateTrajectoryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.traj = null;
    }
    else {
      if (initObj.hasOwnProperty('traj')) {
        this.traj = initObj.traj
      }
      else {
        this.traj = new Trajectory2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenerateTrajectoryResponse
    // Serialize message field [traj]
    bufferOffset = Trajectory2D.serialize(obj.traj, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateTrajectoryResponse
    let len;
    let data = new GenerateTrajectoryResponse(null);
    // Deserialize message field [traj]
    data.traj = Trajectory2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Trajectory2D.getMessageSize(object.traj);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dwb_msgs/GenerateTrajectoryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cfa75653fc81c4830452cf99eb524cb4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Trajectory2D traj
    
    
    ================================================================================
    MSG: dwb_msgs/Trajectory2D
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
    const resolved = new GenerateTrajectoryResponse(null);
    if (msg.traj !== undefined) {
      resolved.traj = Trajectory2D.Resolve(msg.traj)
    }
    else {
      resolved.traj = new Trajectory2D()
    }

    return resolved;
    }
};

module.exports = {
  Request: GenerateTrajectoryRequest,
  Response: GenerateTrajectoryResponse,
  md5sum() { return 'a53a5ac380b5d14cb0057919063c0b54'; },
  datatype() { return 'dwb_msgs/GenerateTrajectory'; }
};
