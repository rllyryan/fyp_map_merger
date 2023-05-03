// Auto-generated. Do not edit!

// (in-package mir_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SoundEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_stamp = null;
      this.sound_guid = null;
      this.message = null;
      this.event = null;
    }
    else {
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('sound_guid')) {
        this.sound_guid = initObj.sound_guid
      }
      else {
        this.sound_guid = '';
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('event')) {
        this.event = initObj.event
      }
      else {
        this.event = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SoundEvent
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.time(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [sound_guid]
    bufferOffset = _serializer.string(obj.sound_guid, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [event]
    bufferOffset = _serializer.uint8(obj.event, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SoundEvent
    let len;
    let data = new SoundEvent(null);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [sound_guid]
    data.sound_guid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [event]
    data.event = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sound_guid);
    length += _getByteLength(object.message);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/SoundEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b0a96432de1b262a2bc4de3c5e358086';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time time_stamp
    string sound_guid
    string message
    
    uint8 START=0
    uint8 STOP =1
    uint8 MUTE=2
    uint8 UNMUTE=3
    uint8 PAUSE=4
    uint8 UNPAUSE=5
    uint8 FINISH=6
    uint8 MUTEABLE=7
    uint8 REQ_PLAY=10
    
    
    uint8 event
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SoundEvent(null);
    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = {secs: 0, nsecs: 0}
    }

    if (msg.sound_guid !== undefined) {
      resolved.sound_guid = msg.sound_guid;
    }
    else {
      resolved.sound_guid = ''
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.event !== undefined) {
      resolved.event = msg.event;
    }
    else {
      resolved.event = 0
    }

    return resolved;
    }
};

// Constants for message
SoundEvent.Constants = {
  START: 0,
  STOP: 1,
  MUTE: 2,
  UNMUTE: 3,
  PAUSE: 4,
  UNPAUSE: 5,
  FINISH: 6,
  MUTEABLE: 7,
  REQ_PLAY: 10,
}

module.exports = SoundEvent;
