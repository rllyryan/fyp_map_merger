# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from locomotor_msgs/NavigateToPoseResult.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import locomotor_msgs.msg

class NavigateToPoseResult(genpy.Message):
  _md5sum = "c880febea4d3566bbda2f661c4a761c2"
  _type = "locomotor_msgs/NavigateToPoseResult"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
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
"""
  __slots__ = ['result_code']
  _slot_types = ['locomotor_msgs/ResultCode']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result_code

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NavigateToPoseResult, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.result_code is None:
        self.result_code = locomotor_msgs.msg.ResultCode()
    else:
      self.result_code = locomotor_msgs.msg.ResultCode()

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
      buff.write(_get_struct_2i().pack(_x.result_code.component, _x.result_code.result_code))
      _x = self.result_code.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      if self.result_code is None:
        self.result_code = locomotor_msgs.msg.ResultCode()
      end = 0
      _x = self
      start = end
      end += 8
      (_x.result_code.component, _x.result_code.result_code,) = _get_struct_2i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.result_code.message = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.result_code.message = str[start:end]
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
      buff.write(_get_struct_2i().pack(_x.result_code.component, _x.result_code.result_code))
      _x = self.result_code.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      if self.result_code is None:
        self.result_code = locomotor_msgs.msg.ResultCode()
      end = 0
      _x = self
      start = end
      end += 8
      (_x.result_code.component, _x.result_code.result_code,) = _get_struct_2i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.result_code.message = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.result_code.message = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
