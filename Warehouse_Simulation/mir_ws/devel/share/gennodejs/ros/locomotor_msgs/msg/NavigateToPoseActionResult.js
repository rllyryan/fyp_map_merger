// Auto-generated. Do not edit!

// (in-package locomotor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NavigateToPoseResult = require('./NavigateToPoseResult.js');
let actionlib_msgs = _finder('actionlib_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NavigateToPoseActionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.status = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new actionlib_msgs.msg.GoalStatus();
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = new NavigateToPoseResult();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavigateToPoseActionResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = actionlib_msgs.msg.GoalStatus.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = NavigateToPoseResult.serialize(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigateToPoseActionResult
    let len;
    let data = new NavigateToPoseActionResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = actionlib_msgs.msg.GoalStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = NavigateToPoseResult.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += actionlib_msgs.msg.GoalStatus.getMessageSize(object.status);
    length += NavigateToPoseResult.getMessageSize(object.result);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'locomotor_msgs/NavigateToPoseActionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ffb33a836155025ac916407e00eab79';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    NavigateToPoseResult result
    
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
    MSG: actionlib_msgs/GoalStatus
    GoalID goal_id
    uint8 status
    uint8 PENDING         = 0   # The goal has yet to be processed by the action server
    uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
    uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                                #   and has since completed its execution (Terminal State)
    uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
    uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                                #    to some failure (Terminal State)
    uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                                #    because the goal was unattainable or invalid (Terminal State)
    uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                                #    and has not yet completed execution
    uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                                #    but the action server has not yet confirmed that the goal is canceled
    uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                                #    and was successfully cancelled (Terminal State)
    uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                                #    sent over the wire by an action server
    
    #Allow for the user to associate a string with GoalStatus for debugging
    string text
    
    
    ================================================================================
    MSG: actionlib_msgs/GoalID
    # The stamp should store the time at which this goal was requested.
    # It is used by an action server when it tries to preempt all
    # goals that were requested before a certain time
    time stamp
    
    # The id provides a way to associate feedback and
    # result message with specific goal requests. The id
    # specified must be unique.
    string id
    
    
    ================================================================================
    MSG: locomotor_msgs/NavigateToPoseResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    ResultCode result_code
    
    ================================================================================
    MSG: locomotor_msgs/ResultCode
    # This message contains three separate pieces.
    #    A) A code indicating which component(s) the error originates from (bitmask style)
    #    B) A code corresponding with the result_code defined in nav_core2/s.h
    #    C) A freeform string message
    
    # The enumerations below are not necessarily the exclusive values for the codes.
    # Others may implement additional values beyond the ones shown, using custom state machines.
    
    ########### Component Values ###############################################
    int32 GLOBAL_COSTMAP = 1
    int32  LOCAL_COSTMAP = 2
    int32 GLOBAL_PLANNER = 4
    int32  LOCAL_PLANNER = 8
    
    ########### Result Codes ###################################################
    int32 GENERIC_COSTMAP=0
    int32 COSTMAP_SAFETY=1
    int32 COSTMAP_DATA_LAG=2
    int32 GENERIC_PLANNER=3
    int32 GENERIC_GLOBAL_PLANNER=4
    int32 INVALID_START=5
    int32 START_BOUNDS=6
    int32 OCCUPIED_START=7
    int32 INVALID_GOAL=8
    int32 GOAL_BOUNDS=9
    int32 OCCUPIED_GOAL=10
    int32 NO_GLOBAL_PATH=11
    int32 GLOBAL_PLANNER_TIMEOUT=12
    int32 GENERIC_LOCAL_PLANNER=13
    int32 ILLEGAL_TRAJECTORY=14
    int32 NO_LEGAL_TRAJECTORIES=15
    int32 PLANNER_TF=16
    
    ########### Actual Data ####################################################
    int32 component
    int32 result_code
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavigateToPoseActionResult(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.status !== undefined) {
      resolved.status = actionlib_msgs.msg.GoalStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new actionlib_msgs.msg.GoalStatus()
    }

    if (msg.result !== undefined) {
      resolved.result = NavigateToPoseResult.Resolve(msg.result)
    }
    else {
      resolved.result = new NavigateToPoseResult()
    }

    return resolved;
    }
};

module.exports = NavigateToPoseActionResult;
