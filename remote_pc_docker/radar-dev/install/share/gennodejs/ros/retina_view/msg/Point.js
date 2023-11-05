// Auto-generated. Do not edit!

// (in-package retina_view.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Point {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.doppler = null;
      this.cluster = null;
      this.power = null;
      this.track = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('doppler')) {
        this.doppler = initObj.doppler
      }
      else {
        this.doppler = 0.0;
      }
      if (initObj.hasOwnProperty('cluster')) {
        this.cluster = initObj.cluster
      }
      else {
        this.cluster = 0;
      }
      if (initObj.hasOwnProperty('power')) {
        this.power = initObj.power
      }
      else {
        this.power = 0;
      }
      if (initObj.hasOwnProperty('track')) {
        this.track = initObj.track
      }
      else {
        this.track = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Point
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [doppler]
    bufferOffset = _serializer.float32(obj.doppler, buffer, bufferOffset);
    // Serialize message field [cluster]
    bufferOffset = _serializer.uint32(obj.cluster, buffer, bufferOffset);
    // Serialize message field [power]
    bufferOffset = _serializer.uint32(obj.power, buffer, bufferOffset);
    // Serialize message field [track]
    bufferOffset = _serializer.uint8(obj.track, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Point
    let len;
    let data = new Point(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [doppler]
    data.doppler = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cluster]
    data.cluster = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [power]
    data.power = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [track]
    data.track = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'retina_view/Point';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e40ec70d104bb5b08bfb46fbc12725d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x
    float32 y
    float32 z
    float32 doppler
    uint32 cluster
    uint32 power
    uint8 track
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Point(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.doppler !== undefined) {
      resolved.doppler = msg.doppler;
    }
    else {
      resolved.doppler = 0.0
    }

    if (msg.cluster !== undefined) {
      resolved.cluster = msg.cluster;
    }
    else {
      resolved.cluster = 0
    }

    if (msg.power !== undefined) {
      resolved.power = msg.power;
    }
    else {
      resolved.power = 0
    }

    if (msg.track !== undefined) {
      resolved.track = msg.track;
    }
    else {
      resolved.track = 0
    }

    return resolved;
    }
};

module.exports = Point;
