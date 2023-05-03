// Auto-generated. Do not edit!

// (in-package dwb_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Trajectory2D = require('./Trajectory2D.js');
let CriticScore = require('./CriticScore.js');

//-----------------------------------------------------------

class TrajectoryScore {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.traj = null;
      this.scores = null;
      this.total = null;
    }
    else {
      if (initObj.hasOwnProperty('traj')) {
        this.traj = initObj.traj
      }
      else {
        this.traj = new Trajectory2D();
      }
      if (initObj.hasOwnProperty('scores')) {
        this.scores = initObj.scores
      }
      else {
        this.scores = [];
      }
      if (initObj.hasOwnProperty('total')) {
        this.total = initObj.total
      }
      else {
        this.total = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryScore
    // Serialize message field [traj]
    bufferOffset = Trajectory2D.serialize(obj.traj, buffer, bufferOffset);
    // Serialize message field [scores]
    // Serialize the length for message field [scores]
    bufferOffset = _serializer.uint32(obj.scores.length, buffer, bufferOffset);
    obj.scores.forEach((val) => {
      bufferOffset = CriticScore.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [total]
    bufferOffset = _serializer.float32(obj.total, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryScore
    let len;
    let data = new TrajectoryScore(null);
    // Deserialize message field [traj]
    data.traj = Trajectory2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [scores]
    // Deserialize array length for message field [scores]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.scores = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.scores[i] = CriticScore.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [total]
    data.total = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Trajectory2D.getMessageSize(object.traj);
    object.scores.forEach((val) => {
      length += CriticScore.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dwb_msgs/TrajectoryScore';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d0da50e88d25d1140ba21d539b60c4b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Complete scoring for a given twist.
    
    # The trajectory being scored
    Trajectory2D traj
    # The Scores for each of the critics employed
    CriticScore[] scores
    # Convenience member that totals the critic scores
    float32 total
    
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
    
    ================================================================================
    MSG: dwb_msgs/CriticScore
    # The result from one critic scoring a Twist.
    # Name of the critic
    string name
    # Score for the critic, not multiplied by the scale
    float32 raw_score
    # Scale for the critic, multiplied by the raw_score and added to the total score
    float32 scale
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajectoryScore(null);
    if (msg.traj !== undefined) {
      resolved.traj = Trajectory2D.Resolve(msg.traj)
    }
    else {
      resolved.traj = new Trajectory2D()
    }

    if (msg.scores !== undefined) {
      resolved.scores = new Array(msg.scores.length);
      for (let i = 0; i < resolved.scores.length; ++i) {
        resolved.scores[i] = CriticScore.Resolve(msg.scores[i]);
      }
    }
    else {
      resolved.scores = []
    }

    if (msg.total !== undefined) {
      resolved.total = msg.total;
    }
    else {
      resolved.total = 0.0
    }

    return resolved;
    }
};

module.exports = TrajectoryScore;
