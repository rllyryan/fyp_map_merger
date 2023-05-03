// Auto-generated. Do not edit!

// (in-package locomotor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_2d_msgs = _finder('nav_2d_msgs');

//-----------------------------------------------------------

class NavigationState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.global_pose = null;
      this.local_pose = null;
      this.goal = null;
      this.current_velocity = null;
      this.command_velocity = null;
      this.global_plan = null;
    }
    else {
      if (initObj.hasOwnProperty('global_pose')) {
        this.global_pose = initObj.global_pose
      }
      else {
        this.global_pose = new nav_2d_msgs.msg.Pose2DStamped();
      }
      if (initObj.hasOwnProperty('local_pose')) {
        this.local_pose = initObj.local_pose
      }
      else {
        this.local_pose = new nav_2d_msgs.msg.Pose2DStamped();
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new nav_2d_msgs.msg.Pose2DStamped();
      }
      if (initObj.hasOwnProperty('current_velocity')) {
        this.current_velocity = initObj.current_velocity
      }
      else {
        this.current_velocity = new nav_2d_msgs.msg.Twist2DStamped();
      }
      if (initObj.hasOwnProperty('command_velocity')) {
        this.command_velocity = initObj.command_velocity
      }
      else {
        this.command_velocity = new nav_2d_msgs.msg.Twist2DStamped();
      }
      if (initObj.hasOwnProperty('global_plan')) {
        this.global_plan = initObj.global_plan
      }
      else {
        this.global_plan = new nav_2d_msgs.msg.Path2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavigationState
    // Serialize message field [global_pose]
    bufferOffset = nav_2d_msgs.msg.Pose2DStamped.serialize(obj.global_pose, buffer, bufferOffset);
    // Serialize message field [local_pose]
    bufferOffset = nav_2d_msgs.msg.Pose2DStamped.serialize(obj.local_pose, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = nav_2d_msgs.msg.Pose2DStamped.serialize(obj.goal, buffer, bufferOffset);
    // Serialize message field [current_velocity]
    bufferOffset = nav_2d_msgs.msg.Twist2DStamped.serialize(obj.current_velocity, buffer, bufferOffset);
    // Serialize message field [command_velocity]
    bufferOffset = nav_2d_msgs.msg.Twist2DStamped.serialize(obj.command_velocity, buffer, bufferOffset);
    // Serialize message field [global_plan]
    bufferOffset = nav_2d_msgs.msg.Path2D.serialize(obj.global_plan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigationState
    let len;
    let data = new NavigationState(null);
    // Deserialize message field [global_pose]
    data.global_pose = nav_2d_msgs.msg.Pose2DStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [local_pose]
    data.local_pose = nav_2d_msgs.msg.Pose2DStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = nav_2d_msgs.msg.Pose2DStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_velocity]
    data.current_velocity = nav_2d_msgs.msg.Twist2DStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [command_velocity]
    data.command_velocity = nav_2d_msgs.msg.Twist2DStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [global_plan]
    data.global_plan = nav_2d_msgs.msg.Path2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_2d_msgs.msg.Pose2DStamped.getMessageSize(object.global_pose);
    length += nav_2d_msgs.msg.Pose2DStamped.getMessageSize(object.local_pose);
    length += nav_2d_msgs.msg.Pose2DStamped.getMessageSize(object.goal);
    length += nav_2d_msgs.msg.Twist2DStamped.getMessageSize(object.current_velocity);
    length += nav_2d_msgs.msg.Twist2DStamped.getMessageSize(object.command_velocity);
    length += nav_2d_msgs.msg.Path2D.getMessageSize(object.global_plan);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'locomotor_msgs/NavigationState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3518ca42eb49bbf8de6cf123dcd80e4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_2d_msgs/Pose2DStamped global_pose
    nav_2d_msgs/Pose2DStamped local_pose
    nav_2d_msgs/Pose2DStamped goal
    nav_2d_msgs/Twist2DStamped current_velocity
    nav_2d_msgs/Twist2DStamped command_velocity
    nav_2d_msgs/Path2D global_plan
    
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
    MSG: nav_2d_msgs/Twist2DStamped
    std_msgs/Header header
    Twist2D velocity
    
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
    const resolved = new NavigationState(null);
    if (msg.global_pose !== undefined) {
      resolved.global_pose = nav_2d_msgs.msg.Pose2DStamped.Resolve(msg.global_pose)
    }
    else {
      resolved.global_pose = new nav_2d_msgs.msg.Pose2DStamped()
    }

    if (msg.local_pose !== undefined) {
      resolved.local_pose = nav_2d_msgs.msg.Pose2DStamped.Resolve(msg.local_pose)
    }
    else {
      resolved.local_pose = new nav_2d_msgs.msg.Pose2DStamped()
    }

    if (msg.goal !== undefined) {
      resolved.goal = nav_2d_msgs.msg.Pose2DStamped.Resolve(msg.goal)
    }
    else {
      resolved.goal = new nav_2d_msgs.msg.Pose2DStamped()
    }

    if (msg.current_velocity !== undefined) {
      resolved.current_velocity = nav_2d_msgs.msg.Twist2DStamped.Resolve(msg.current_velocity)
    }
    else {
      resolved.current_velocity = new nav_2d_msgs.msg.Twist2DStamped()
    }

    if (msg.command_velocity !== undefined) {
      resolved.command_velocity = nav_2d_msgs.msg.Twist2DStamped.Resolve(msg.command_velocity)
    }
    else {
      resolved.command_velocity = new nav_2d_msgs.msg.Twist2DStamped()
    }

    if (msg.global_plan !== undefined) {
      resolved.global_plan = nav_2d_msgs.msg.Path2D.Resolve(msg.global_plan)
    }
    else {
      resolved.global_plan = new nav_2d_msgs.msg.Path2D()
    }

    return resolved;
    }
};

module.exports = NavigationState;
