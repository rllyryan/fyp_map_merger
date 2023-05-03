// Auto-generated. Do not edit!

// (in-package dwb_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrajectoryScore = require('./TrajectoryScore.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LocalPlanEvaluation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.twists = null;
      this.best_index = null;
      this.worst_index = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('twists')) {
        this.twists = initObj.twists
      }
      else {
        this.twists = [];
      }
      if (initObj.hasOwnProperty('best_index')) {
        this.best_index = initObj.best_index
      }
      else {
        this.best_index = 0;
      }
      if (initObj.hasOwnProperty('worst_index')) {
        this.worst_index = initObj.worst_index
      }
      else {
        this.worst_index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalPlanEvaluation
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [twists]
    // Serialize the length for message field [twists]
    bufferOffset = _serializer.uint32(obj.twists.length, buffer, bufferOffset);
    obj.twists.forEach((val) => {
      bufferOffset = TrajectoryScore.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [best_index]
    bufferOffset = _serializer.uint16(obj.best_index, buffer, bufferOffset);
    // Serialize message field [worst_index]
    bufferOffset = _serializer.uint16(obj.worst_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalPlanEvaluation
    let len;
    let data = new LocalPlanEvaluation(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [twists]
    // Deserialize array length for message field [twists]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.twists = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.twists[i] = TrajectoryScore.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [best_index]
    data.best_index = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [worst_index]
    data.worst_index = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.twists.forEach((val) => {
      length += TrajectoryScore.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dwb_msgs/LocalPlanEvaluation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd360642012ea44ee598913c70498aa4b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Full Scoring for running the local planner
    
    # Header, used for timestamp
    Header header
    # All the trajectories evaluated and their scores
    TrajectoryScore[] twists
    # Convenience index of the best (lowest) score in the twists array
    uint16 best_index
    # Convenience index of the worst (highest) score in the twists array. Useful for scaling.
    uint16 worst_index
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: dwb_msgs/TrajectoryScore
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
    const resolved = new LocalPlanEvaluation(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.twists !== undefined) {
      resolved.twists = new Array(msg.twists.length);
      for (let i = 0; i < resolved.twists.length; ++i) {
        resolved.twists[i] = TrajectoryScore.Resolve(msg.twists[i]);
      }
    }
    else {
      resolved.twists = []
    }

    if (msg.best_index !== undefined) {
      resolved.best_index = msg.best_index;
    }
    else {
      resolved.best_index = 0
    }

    if (msg.worst_index !== undefined) {
      resolved.worst_index = msg.worst_index;
    }
    else {
      resolved.worst_index = 0
    }

    return resolved;
    }
};

module.exports = LocalPlanEvaluation;
