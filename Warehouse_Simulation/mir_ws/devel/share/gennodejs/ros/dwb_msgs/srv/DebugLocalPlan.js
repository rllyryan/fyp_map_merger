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

let LocalPlanEvaluation = require('../msg/LocalPlanEvaluation.js');

//-----------------------------------------------------------

class DebugLocalPlanRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.velocity = null;
      this.global_plan = null;
      this.goal = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new nav_2d_msgs.msg.Pose2DStamped();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new nav_2d_msgs.msg.Twist2D();
      }
      if (initObj.hasOwnProperty('global_plan')) {
        this.global_plan = initObj.global_plan
      }
      else {
        this.global_plan = new nav_2d_msgs.msg.Path2D();
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new nav_2d_msgs.msg.Pose2DStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DebugLocalPlanRequest
    // Serialize message field [pose]
    bufferOffset = nav_2d_msgs.msg.Pose2DStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = nav_2d_msgs.msg.Twist2D.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [global_plan]
    bufferOffset = nav_2d_msgs.msg.Path2D.serialize(obj.global_plan, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = nav_2d_msgs.msg.Pose2DStamped.serialize(obj.goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DebugLocalPlanRequest
    let len;
    let data = new DebugLocalPlanRequest(null);
    // Deserialize message field [pose]
    data.pose = nav_2d_msgs.msg.Pose2DStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = nav_2d_msgs.msg.Twist2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [global_plan]
    data.global_plan = nav_2d_msgs.msg.Path2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = nav_2d_msgs.msg.Pose2DStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_2d_msgs.msg.Pose2DStamped.getMessageSize(object.pose);
    length += nav_2d_msgs.msg.Path2D.getMessageSize(object.global_plan);
    length += nav_2d_msgs.msg.Pose2DStamped.getMessageSize(object.goal);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dwb_msgs/DebugLocalPlanRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48a8bd4b9e49f5026c60a04a25b5e74a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # For a given pose velocity and global_plan, run the local planner and return full results
    nav_2d_msgs/Pose2DStamped pose
    nav_2d_msgs/Twist2D velocity
    nav_2d_msgs/Path2D global_plan
    nav_2d_msgs/Pose2DStamped goal
    
    ================================================================================
    MSG: nav_2d_msgs/Pose2DStamped
    Header header
    geometry_msgs/Pose2D pose
    
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
    
    ================================================================================
    MSG: nav_2d_msgs/Path2D
    Header header
    geometry_msgs/Pose2D[] poses
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DebugLocalPlanRequest(null);
    if (msg.pose !== undefined) {
      resolved.pose = nav_2d_msgs.msg.Pose2DStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new nav_2d_msgs.msg.Pose2DStamped()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = nav_2d_msgs.msg.Twist2D.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new nav_2d_msgs.msg.Twist2D()
    }

    if (msg.global_plan !== undefined) {
      resolved.global_plan = nav_2d_msgs.msg.Path2D.Resolve(msg.global_plan)
    }
    else {
      resolved.global_plan = new nav_2d_msgs.msg.Path2D()
    }

    if (msg.goal !== undefined) {
      resolved.goal = nav_2d_msgs.msg.Pose2DStamped.Resolve(msg.goal)
    }
    else {
      resolved.goal = new nav_2d_msgs.msg.Pose2DStamped()
    }

    return resolved;
    }
};

class DebugLocalPlanResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.results = null;
    }
    else {
      if (initObj.hasOwnProperty('results')) {
        this.results = initObj.results
      }
      else {
        this.results = new LocalPlanEvaluation();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DebugLocalPlanResponse
    // Serialize message field [results]
    bufferOffset = LocalPlanEvaluation.serialize(obj.results, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DebugLocalPlanResponse
    let len;
    let data = new DebugLocalPlanResponse(null);
    // Deserialize message field [results]
    data.results = LocalPlanEvaluation.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += LocalPlanEvaluation.getMessageSize(object.results);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dwb_msgs/DebugLocalPlanResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a386758bd988bd919d7a5a83bc925094';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    LocalPlanEvaluation results
    
    
    ================================================================================
    MSG: dwb_msgs/LocalPlanEvaluation
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
    const resolved = new DebugLocalPlanResponse(null);
    if (msg.results !== undefined) {
      resolved.results = LocalPlanEvaluation.Resolve(msg.results)
    }
    else {
      resolved.results = new LocalPlanEvaluation()
    }

    return resolved;
    }
};

module.exports = {
  Request: DebugLocalPlanRequest,
  Response: DebugLocalPlanResponse,
  md5sum() { return '5a95380a43b72a99a1559a74c97b8bdc'; },
  datatype() { return 'dwb_msgs/DebugLocalPlan'; }
};
