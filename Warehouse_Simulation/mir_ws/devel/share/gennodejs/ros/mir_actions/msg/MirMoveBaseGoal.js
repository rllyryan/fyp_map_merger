// Auto-generated. Do not edit!

// (in-package mir_actions.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class MirMoveBaseGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.move_task = null;
      this.target_pose = null;
      this.goal_dist_threshold = null;
      this.goal_orientation_threshold = null;
      this.path = null;
      this.max_plan_time = null;
      this.clear_costmaps = null;
      this.pause_command = null;
      this.continue_command = null;
      this.yaw = null;
      this.collision_detection = null;
      this.collision_avoidance = null;
      this.disable_collision_check_dist = null;
      this.max_linear_speed = null;
      this.max_rotational_speed = null;
      this.pid_dist_offset = null;
      this.target_offset = null;
      this.only_collision_detection = null;
      this.timeout = null;
      this.pattern_type = null;
      this.pattern_value = null;
      this.only_track = null;
      this.same_goal = null;
      this.pose_frame = null;
      this.pose = null;
      this.offset = null;
      this.bar_length = null;
      this.bar_distance = null;
      this.shelf_leg_asymmetry_x = null;
      this.tolerance = null;
    }
    else {
      if (initObj.hasOwnProperty('move_task')) {
        this.move_task = initObj.move_task
      }
      else {
        this.move_task = 0;
      }
      if (initObj.hasOwnProperty('target_pose')) {
        this.target_pose = initObj.target_pose
      }
      else {
        this.target_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('goal_dist_threshold')) {
        this.goal_dist_threshold = initObj.goal_dist_threshold
      }
      else {
        this.goal_dist_threshold = 0.0;
      }
      if (initObj.hasOwnProperty('goal_orientation_threshold')) {
        this.goal_orientation_threshold = initObj.goal_orientation_threshold
      }
      else {
        this.goal_orientation_threshold = 0.0;
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = new nav_msgs.msg.Path();
      }
      if (initObj.hasOwnProperty('max_plan_time')) {
        this.max_plan_time = initObj.max_plan_time
      }
      else {
        this.max_plan_time = 0.0;
      }
      if (initObj.hasOwnProperty('clear_costmaps')) {
        this.clear_costmaps = initObj.clear_costmaps
      }
      else {
        this.clear_costmaps = false;
      }
      if (initObj.hasOwnProperty('pause_command')) {
        this.pause_command = initObj.pause_command
      }
      else {
        this.pause_command = false;
      }
      if (initObj.hasOwnProperty('continue_command')) {
        this.continue_command = initObj.continue_command
      }
      else {
        this.continue_command = false;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('collision_detection')) {
        this.collision_detection = initObj.collision_detection
      }
      else {
        this.collision_detection = false;
      }
      if (initObj.hasOwnProperty('collision_avoidance')) {
        this.collision_avoidance = initObj.collision_avoidance
      }
      else {
        this.collision_avoidance = false;
      }
      if (initObj.hasOwnProperty('disable_collision_check_dist')) {
        this.disable_collision_check_dist = initObj.disable_collision_check_dist
      }
      else {
        this.disable_collision_check_dist = 0.0;
      }
      if (initObj.hasOwnProperty('max_linear_speed')) {
        this.max_linear_speed = initObj.max_linear_speed
      }
      else {
        this.max_linear_speed = 0.0;
      }
      if (initObj.hasOwnProperty('max_rotational_speed')) {
        this.max_rotational_speed = initObj.max_rotational_speed
      }
      else {
        this.max_rotational_speed = 0.0;
      }
      if (initObj.hasOwnProperty('pid_dist_offset')) {
        this.pid_dist_offset = initObj.pid_dist_offset
      }
      else {
        this.pid_dist_offset = 0.0;
      }
      if (initObj.hasOwnProperty('target_offset')) {
        this.target_offset = initObj.target_offset
      }
      else {
        this.target_offset = 0.0;
      }
      if (initObj.hasOwnProperty('only_collision_detection')) {
        this.only_collision_detection = initObj.only_collision_detection
      }
      else {
        this.only_collision_detection = false;
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0.0;
      }
      if (initObj.hasOwnProperty('pattern_type')) {
        this.pattern_type = initObj.pattern_type
      }
      else {
        this.pattern_type = 0;
      }
      if (initObj.hasOwnProperty('pattern_value')) {
        this.pattern_value = initObj.pattern_value
      }
      else {
        this.pattern_value = 0;
      }
      if (initObj.hasOwnProperty('only_track')) {
        this.only_track = initObj.only_track
      }
      else {
        this.only_track = false;
      }
      if (initObj.hasOwnProperty('same_goal')) {
        this.same_goal = initObj.same_goal
      }
      else {
        this.same_goal = false;
      }
      if (initObj.hasOwnProperty('pose_frame')) {
        this.pose_frame = initObj.pose_frame
      }
      else {
        this.pose_frame = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('bar_length')) {
        this.bar_length = initObj.bar_length
      }
      else {
        this.bar_length = 0.0;
      }
      if (initObj.hasOwnProperty('bar_distance')) {
        this.bar_distance = initObj.bar_distance
      }
      else {
        this.bar_distance = 0.0;
      }
      if (initObj.hasOwnProperty('shelf_leg_asymmetry_x')) {
        this.shelf_leg_asymmetry_x = initObj.shelf_leg_asymmetry_x
      }
      else {
        this.shelf_leg_asymmetry_x = 0.0;
      }
      if (initObj.hasOwnProperty('tolerance')) {
        this.tolerance = initObj.tolerance
      }
      else {
        this.tolerance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MirMoveBaseGoal
    // Serialize message field [move_task]
    bufferOffset = _serializer.int16(obj.move_task, buffer, bufferOffset);
    // Serialize message field [target_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.target_pose, buffer, bufferOffset);
    // Serialize message field [goal_dist_threshold]
    bufferOffset = _serializer.float64(obj.goal_dist_threshold, buffer, bufferOffset);
    // Serialize message field [goal_orientation_threshold]
    bufferOffset = _serializer.float64(obj.goal_orientation_threshold, buffer, bufferOffset);
    // Serialize message field [path]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.path, buffer, bufferOffset);
    // Serialize message field [max_plan_time]
    bufferOffset = _serializer.float32(obj.max_plan_time, buffer, bufferOffset);
    // Serialize message field [clear_costmaps]
    bufferOffset = _serializer.bool(obj.clear_costmaps, buffer, bufferOffset);
    // Serialize message field [pause_command]
    bufferOffset = _serializer.bool(obj.pause_command, buffer, bufferOffset);
    // Serialize message field [continue_command]
    bufferOffset = _serializer.bool(obj.continue_command, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [collision_detection]
    bufferOffset = _serializer.bool(obj.collision_detection, buffer, bufferOffset);
    // Serialize message field [collision_avoidance]
    bufferOffset = _serializer.bool(obj.collision_avoidance, buffer, bufferOffset);
    // Serialize message field [disable_collision_check_dist]
    bufferOffset = _serializer.float64(obj.disable_collision_check_dist, buffer, bufferOffset);
    // Serialize message field [max_linear_speed]
    bufferOffset = _serializer.float64(obj.max_linear_speed, buffer, bufferOffset);
    // Serialize message field [max_rotational_speed]
    bufferOffset = _serializer.float64(obj.max_rotational_speed, buffer, bufferOffset);
    // Serialize message field [pid_dist_offset]
    bufferOffset = _serializer.float64(obj.pid_dist_offset, buffer, bufferOffset);
    // Serialize message field [target_offset]
    bufferOffset = _serializer.float64(obj.target_offset, buffer, bufferOffset);
    // Serialize message field [only_collision_detection]
    bufferOffset = _serializer.bool(obj.only_collision_detection, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.float64(obj.timeout, buffer, bufferOffset);
    // Serialize message field [pattern_type]
    bufferOffset = _serializer.int32(obj.pattern_type, buffer, bufferOffset);
    // Serialize message field [pattern_value]
    bufferOffset = _serializer.int32(obj.pattern_value, buffer, bufferOffset);
    // Serialize message field [only_track]
    bufferOffset = _serializer.bool(obj.only_track, buffer, bufferOffset);
    // Serialize message field [same_goal]
    bufferOffset = _serializer.bool(obj.same_goal, buffer, bufferOffset);
    // Serialize message field [pose_frame]
    bufferOffset = _serializer.string(obj.pose_frame, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.offset, buffer, bufferOffset);
    // Serialize message field [bar_length]
    bufferOffset = _serializer.float64(obj.bar_length, buffer, bufferOffset);
    // Serialize message field [bar_distance]
    bufferOffset = _serializer.float64(obj.bar_distance, buffer, bufferOffset);
    // Serialize message field [shelf_leg_asymmetry_x]
    bufferOffset = _serializer.float64(obj.shelf_leg_asymmetry_x, buffer, bufferOffset);
    // Serialize message field [tolerance]
    bufferOffset = _serializer.float64(obj.tolerance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MirMoveBaseGoal
    let len;
    let data = new MirMoveBaseGoal(null);
    // Deserialize message field [move_task]
    data.move_task = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [target_pose]
    data.target_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_dist_threshold]
    data.goal_dist_threshold = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [goal_orientation_threshold]
    data.goal_orientation_threshold = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [path]
    data.path = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_plan_time]
    data.max_plan_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [clear_costmaps]
    data.clear_costmaps = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pause_command]
    data.pause_command = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [continue_command]
    data.continue_command = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [collision_detection]
    data.collision_detection = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [collision_avoidance]
    data.collision_avoidance = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [disable_collision_check_dist]
    data.disable_collision_check_dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_linear_speed]
    data.max_linear_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_rotational_speed]
    data.max_rotational_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pid_dist_offset]
    data.pid_dist_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_offset]
    data.target_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [only_collision_detection]
    data.only_collision_detection = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pattern_type]
    data.pattern_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pattern_value]
    data.pattern_value = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [only_track]
    data.only_track = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [same_goal]
    data.same_goal = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pose_frame]
    data.pose_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [bar_length]
    data.bar_length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bar_distance]
    data.bar_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [shelf_leg_asymmetry_x]
    data.shelf_leg_asymmetry_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tolerance]
    data.tolerance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.target_pose);
    length += nav_msgs.msg.Path.getMessageSize(object.path);
    length += _getByteLength(object.pose_frame);
    return length + 178;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_actions/MirMoveBaseGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4841766618ad92857d4e3d683b072f3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    #move type
    int16 BASE_MOVE = 0
    int16 GLOBAL_MOVE = 1
    int16 RELATIVE_MOVE = 2
    int16 RELATIVE_MARKER_MOVE = 3
    int16 DOCKING_MOVE = 4
    int16 DOCKING_GLOBAL_MOVE = 5
    int16 move_task
    
    #shared parameters
    geometry_msgs/PoseStamped target_pose
    
    #global move parameters
    float64 goal_dist_threshold
    float64 goal_orientation_threshold
    nav_msgs/Path path
    float32 max_plan_time
    bool clear_costmaps
    bool pause_command
    bool continue_command
    
    #relative move parameters
    float64 yaw
    bool collision_detection
    bool collision_avoidance
    float64 disable_collision_check_dist
    float64 max_linear_speed
    float64 max_rotational_speed
    float64 pid_dist_offset
    float64 target_offset
    bool only_collision_detection
    float64 timeout
    
    #docking move parameters
    int32 pattern_type
    int32 pattern_value
    bool only_track
    bool same_goal
    string pose_frame
    geometry_msgs/Pose2D pose
    geometry_msgs/Pose2D offset
    float64 bar_length
    float64 bar_distance
    float64 shelf_leg_asymmetry_x
    float64 tolerance
    
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
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
    const resolved = new MirMoveBaseGoal(null);
    if (msg.move_task !== undefined) {
      resolved.move_task = msg.move_task;
    }
    else {
      resolved.move_task = 0
    }

    if (msg.target_pose !== undefined) {
      resolved.target_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.target_pose)
    }
    else {
      resolved.target_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.goal_dist_threshold !== undefined) {
      resolved.goal_dist_threshold = msg.goal_dist_threshold;
    }
    else {
      resolved.goal_dist_threshold = 0.0
    }

    if (msg.goal_orientation_threshold !== undefined) {
      resolved.goal_orientation_threshold = msg.goal_orientation_threshold;
    }
    else {
      resolved.goal_orientation_threshold = 0.0
    }

    if (msg.path !== undefined) {
      resolved.path = nav_msgs.msg.Path.Resolve(msg.path)
    }
    else {
      resolved.path = new nav_msgs.msg.Path()
    }

    if (msg.max_plan_time !== undefined) {
      resolved.max_plan_time = msg.max_plan_time;
    }
    else {
      resolved.max_plan_time = 0.0
    }

    if (msg.clear_costmaps !== undefined) {
      resolved.clear_costmaps = msg.clear_costmaps;
    }
    else {
      resolved.clear_costmaps = false
    }

    if (msg.pause_command !== undefined) {
      resolved.pause_command = msg.pause_command;
    }
    else {
      resolved.pause_command = false
    }

    if (msg.continue_command !== undefined) {
      resolved.continue_command = msg.continue_command;
    }
    else {
      resolved.continue_command = false
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.collision_detection !== undefined) {
      resolved.collision_detection = msg.collision_detection;
    }
    else {
      resolved.collision_detection = false
    }

    if (msg.collision_avoidance !== undefined) {
      resolved.collision_avoidance = msg.collision_avoidance;
    }
    else {
      resolved.collision_avoidance = false
    }

    if (msg.disable_collision_check_dist !== undefined) {
      resolved.disable_collision_check_dist = msg.disable_collision_check_dist;
    }
    else {
      resolved.disable_collision_check_dist = 0.0
    }

    if (msg.max_linear_speed !== undefined) {
      resolved.max_linear_speed = msg.max_linear_speed;
    }
    else {
      resolved.max_linear_speed = 0.0
    }

    if (msg.max_rotational_speed !== undefined) {
      resolved.max_rotational_speed = msg.max_rotational_speed;
    }
    else {
      resolved.max_rotational_speed = 0.0
    }

    if (msg.pid_dist_offset !== undefined) {
      resolved.pid_dist_offset = msg.pid_dist_offset;
    }
    else {
      resolved.pid_dist_offset = 0.0
    }

    if (msg.target_offset !== undefined) {
      resolved.target_offset = msg.target_offset;
    }
    else {
      resolved.target_offset = 0.0
    }

    if (msg.only_collision_detection !== undefined) {
      resolved.only_collision_detection = msg.only_collision_detection;
    }
    else {
      resolved.only_collision_detection = false
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0.0
    }

    if (msg.pattern_type !== undefined) {
      resolved.pattern_type = msg.pattern_type;
    }
    else {
      resolved.pattern_type = 0
    }

    if (msg.pattern_value !== undefined) {
      resolved.pattern_value = msg.pattern_value;
    }
    else {
      resolved.pattern_value = 0
    }

    if (msg.only_track !== undefined) {
      resolved.only_track = msg.only_track;
    }
    else {
      resolved.only_track = false
    }

    if (msg.same_goal !== undefined) {
      resolved.same_goal = msg.same_goal;
    }
    else {
      resolved.same_goal = false
    }

    if (msg.pose_frame !== undefined) {
      resolved.pose_frame = msg.pose_frame;
    }
    else {
      resolved.pose_frame = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose2D.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.offset !== undefined) {
      resolved.offset = geometry_msgs.msg.Pose2D.Resolve(msg.offset)
    }
    else {
      resolved.offset = new geometry_msgs.msg.Pose2D()
    }

    if (msg.bar_length !== undefined) {
      resolved.bar_length = msg.bar_length;
    }
    else {
      resolved.bar_length = 0.0
    }

    if (msg.bar_distance !== undefined) {
      resolved.bar_distance = msg.bar_distance;
    }
    else {
      resolved.bar_distance = 0.0
    }

    if (msg.shelf_leg_asymmetry_x !== undefined) {
      resolved.shelf_leg_asymmetry_x = msg.shelf_leg_asymmetry_x;
    }
    else {
      resolved.shelf_leg_asymmetry_x = 0.0
    }

    if (msg.tolerance !== undefined) {
      resolved.tolerance = msg.tolerance;
    }
    else {
      resolved.tolerance = 0.0
    }

    return resolved;
    }
};

// Constants for message
MirMoveBaseGoal.Constants = {
  BASE_MOVE: 0,
  GLOBAL_MOVE: 1,
  RELATIVE_MOVE: 2,
  RELATIVE_MARKER_MOVE: 3,
  DOCKING_MOVE: 4,
  DOCKING_GLOBAL_MOVE: 5,
}

module.exports = MirMoveBaseGoal;
