// Auto-generated. Do not edit!

// (in-package retina_view.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point = require('./Point.js');
let Track = require('./Track.js');

//-----------------------------------------------------------

class MsgRadarPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.nTargets = null;
      this.points = null;
      this.frame_counter = null;
      this.time_stamp = null;
      this.track_count = null;
      this.track_info = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0;
      }
      if (initObj.hasOwnProperty('nTargets')) {
        this.nTargets = initObj.nTargets
      }
      else {
        this.nTargets = 0;
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('frame_counter')) {
        this.frame_counter = initObj.frame_counter
      }
      else {
        this.frame_counter = 0;
      }
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = [];
      }
      if (initObj.hasOwnProperty('track_count')) {
        this.track_count = initObj.track_count
      }
      else {
        this.track_count = 0;
      }
      if (initObj.hasOwnProperty('track_info')) {
        this.track_info = initObj.track_info
      }
      else {
        this.track_info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MsgRadarPoint
    // Serialize message field [position]
    bufferOffset = _serializer.int32(obj.position, buffer, bufferOffset);
    // Serialize message field [nTargets]
    bufferOffset = _serializer.int32(obj.nTargets, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [frame_counter]
    bufferOffset = _serializer.int32(obj.frame_counter, buffer, bufferOffset);
    // Serialize message field [time_stamp]
    bufferOffset = _arraySerializer.uint32(obj.time_stamp, buffer, bufferOffset, null);
    // Serialize message field [track_count]
    bufferOffset = _serializer.int32(obj.track_count, buffer, bufferOffset);
    // Serialize message field [track_info]
    // Serialize the length for message field [track_info]
    bufferOffset = _serializer.uint32(obj.track_info.length, buffer, bufferOffset);
    obj.track_info.forEach((val) => {
      bufferOffset = Track.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MsgRadarPoint
    let len;
    let data = new MsgRadarPoint(null);
    // Deserialize message field [position]
    data.position = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [nTargets]
    data.nTargets = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [frame_counter]
    data.frame_counter = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [time_stamp]
    data.time_stamp = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [track_count]
    data.track_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [track_info]
    // Deserialize array length for message field [track_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.track_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.track_info[i] = Track.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 25 * object.points.length;
    length += 4 * object.time_stamp.length;
    length += 9 * object.track_info.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'retina_view/MsgRadarPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0685e74f492716fb2f47330fdc4c28a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 position
    int32 nTargets
    Point[] points
    int32 frame_counter
    uint32[] time_stamp
    int32 track_count  
    Track[] track_info
    
    ================================================================================
    MSG: retina_view/Point
    float32 x
    float32 y
    float32 z
    float32 doppler
    uint32 cluster
    uint32 power
    uint8 track
    
    ================================================================================
    MSG: retina_view/Track
    int8 trackcount
    float32 x
    float32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MsgRadarPoint(null);
    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0
    }

    if (msg.nTargets !== undefined) {
      resolved.nTargets = msg.nTargets;
    }
    else {
      resolved.nTargets = 0
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = Point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.frame_counter !== undefined) {
      resolved.frame_counter = msg.frame_counter;
    }
    else {
      resolved.frame_counter = 0
    }

    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = []
    }

    if (msg.track_count !== undefined) {
      resolved.track_count = msg.track_count;
    }
    else {
      resolved.track_count = 0
    }

    if (msg.track_info !== undefined) {
      resolved.track_info = new Array(msg.track_info.length);
      for (let i = 0; i < resolved.track_info.length; ++i) {
        resolved.track_info[i] = Track.Resolve(msg.track_info[i]);
      }
    }
    else {
      resolved.track_info = []
    }

    return resolved;
    }
};

module.exports = MsgRadarPoint;
