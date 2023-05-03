# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mir_msgs/SoundEvent.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class SoundEvent(genpy.Message):
  _md5sum = "b0a96432de1b262a2bc4de3c5e358086"
  _type = "mir_msgs/SoundEvent"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """time time_stamp
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
"""
  # Pseudo-constants
  START = 0
  STOP = 1
  MUTE = 2
  UNMUTE = 3
  PAUSE = 4
  UNPAUSE = 5
  FINISH = 6
  MUTEABLE = 7
  REQ_PLAY = 10

  __slots__ = ['time_stamp','sound_guid','message','event']
  _slot_types = ['time','string','string','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       time_stamp,sound_guid,message,event

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SoundEvent, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.time_stamp is None:
        self.time_stamp = genpy.Time()
      if self.sound_guid is None:
        self.sound_guid = ''
      if self.message is None:
        self.message = ''
      if self.event is None:
        self.event = 0
    else:
      self.time_stamp = genpy.Time()
      self.sound_guid = ''
      self.message = ''
      self.event = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2I().pack(_x.time_stamp.secs, _x.time_stamp.nsecs))
      _x = self.sound_guid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.event
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.time_stamp is None:
        self.time_stamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 8
      (_x.time_stamp.secs, _x.time_stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sound_guid = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sound_guid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.message = str[start:end]
      start = end
      end += 1
      (self.event,) = _get_struct_B().unpack(str[start:end])
      self.time_stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2I().pack(_x.time_stamp.secs, _x.time_stamp.nsecs))
      _x = self.sound_guid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.event
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.time_stamp is None:
        self.time_stamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 8
      (_x.time_stamp.secs, _x.time_stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sound_guid = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sound_guid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.message = str[start:end]
      start = end
      end += 1
      (self.event,) = _get_struct_B().unpack(str[start:end])
      self.time_stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
