# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from locomotor_msgs/NavigateToPoseFeedback.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import locomotor_msgs.msg
import nav_2d_msgs.msg
import std_msgs.msg

class NavigateToPoseFeedback(genpy.Message):
  _md5sum = "731b38cf0756acb428661980c367590e"
  _type = "locomotor_msgs/NavigateToPoseFeedback"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
NavigationState state
float32 percent_complete
float32 distance_traveled
float32 estimated_distance_remaining


================================================================================
MSG: locomotor_msgs/NavigationState
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
"""
  __slots__ = ['state','percent_complete','distance_traveled','estimated_distance_remaining']
  _slot_types = ['locomotor_msgs/NavigationState','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       state,percent_complete,distance_traveled,estimated_distance_remaining

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NavigateToPoseFeedback, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.state is None:
        self.state = locomotor_msgs.msg.NavigationState()
      if self.percent_complete is None:
        self.percent_complete = 0.
      if self.distance_traveled is None:
        self.distance_traveled = 0.
      if self.estimated_distance_remaining is None:
        self.estimated_distance_remaining = 0.
    else:
      self.state = locomotor_msgs.msg.NavigationState()
      self.percent_complete = 0.
      self.distance_traveled = 0.
      self.estimated_distance_remaining = 0.

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
      buff.write(_get_struct_3I().pack(_x.state.global_pose.header.seq, _x.state.global_pose.header.stamp.secs, _x.state.global_pose.header.stamp.nsecs))
      _x = self.state.global_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.state.global_pose.pose.x, _x.state.global_pose.pose.y, _x.state.global_pose.pose.theta, _x.state.local_pose.header.seq, _x.state.local_pose.header.stamp.secs, _x.state.local_pose.header.stamp.nsecs))
      _x = self.state.local_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.state.local_pose.pose.x, _x.state.local_pose.pose.y, _x.state.local_pose.pose.theta, _x.state.goal.header.seq, _x.state.goal.header.stamp.secs, _x.state.goal.header.stamp.nsecs))
      _x = self.state.goal.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.state.goal.pose.x, _x.state.goal.pose.y, _x.state.goal.pose.theta, _x.state.current_velocity.header.seq, _x.state.current_velocity.header.stamp.secs, _x.state.current_velocity.header.stamp.nsecs))
      _x = self.state.current_velocity.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.state.current_velocity.velocity.x, _x.state.current_velocity.velocity.y, _x.state.current_velocity.velocity.theta, _x.state.command_velocity.header.seq, _x.state.command_velocity.header.stamp.secs, _x.state.command_velocity.header.stamp.nsecs))
      _x = self.state.command_velocity.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.state.command_velocity.velocity.x, _x.state.command_velocity.velocity.y, _x.state.command_velocity.velocity.theta, _x.state.global_plan.header.seq, _x.state.global_plan.header.stamp.secs, _x.state.global_plan.header.stamp.nsecs))
      _x = self.state.global_plan.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.state.global_plan.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.state.global_plan.poses:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
      _x = self
      buff.write(_get_struct_3f().pack(_x.percent_complete, _x.distance_traveled, _x.estimated_distance_remaining))
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
      if self.state is None:
        self.state = locomotor_msgs.msg.NavigationState()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.state.global_pose.header.seq, _x.state.global_pose.header.stamp.secs, _x.state.global_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state.global_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state.global_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.state.global_pose.pose.x, _x.state.global_pose.pose.y, _x.state.global_pose.pose.theta, _x.state.local_pose.header.seq, _x.state.local_pose.header.stamp.secs, _x.state.local_pose.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state.local_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state.local_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.state.local_pose.pose.x, _x.state.local_pose.pose.y, _x.state.local_pose.pose.theta, _x.state.goal.header.seq, _x.state.goal.header.stamp.secs, _x.state.goal.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state.goal.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state.goal.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.state.goal.pose.x, _x.state.goal.pose.y, _x.state.goal.pose.theta, _x.state.current_velocity.header.seq, _x.state.current_velocity.header.stamp.secs, _x.state.current_velocity.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state.current_velocity.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state.current_velocity.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.state.current_velocity.velocity.x, _x.state.current_velocity.velocity.y, _x.state.current_velocity.velocity.theta, _x.state.command_velocity.header.seq, _x.state.command_velocity.header.stamp.secs, _x.state.command_velocity.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state.command_velocity.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state.command_velocity.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.state.command_velocity.velocity.x, _x.state.command_velocity.velocity.y, _x.state.command_velocity.velocity.theta, _x.state.global_plan.header.seq, _x.state.global_plan.header.stamp.secs, _x.state.global_plan.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state.global_plan.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state.global_plan.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.state.global_plan.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose2D()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
        self.state.global_plan.poses.append(val1)
      _x = self
      start = end
      end += 12
      (_x.percent_complete, _x.distance_traveled, _x.estimated_distance_remaining,) = _get_struct_3f().unpack(str[start:end])
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
      buff.write(_get_struct_3I().pack(_x.state.global_pose.header.seq, _x.state.global_pose.header.stamp.secs, _x.state.global_pose.header.stamp.nsecs))
      _x = self.state.global_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.state.global_pose.pose.x, _x.state.global_pose.pose.y, _x.state.global_pose.pose.theta, _x.state.local_pose.header.seq, _x.state.local_pose.header.stamp.secs, _x.state.local_pose.header.stamp.nsecs))
      _x = self.state.local_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.state.local_pose.pose.x, _x.state.local_pose.pose.y, _x.state.local_pose.pose.theta, _x.state.goal.header.seq, _x.state.goal.header.stamp.secs, _x.state.goal.header.stamp.nsecs))
      _x = self.state.goal.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.state.goal.pose.x, _x.state.goal.pose.y, _x.state.goal.pose.theta, _x.state.current_velocity.header.seq, _x.state.current_velocity.header.stamp.secs, _x.state.current_velocity.header.stamp.nsecs))
      _x = self.state.current_velocity.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.state.current_velocity.velocity.x, _x.state.current_velocity.velocity.y, _x.state.current_velocity.velocity.theta, _x.state.command_velocity.header.seq, _x.state.command_velocity.header.stamp.secs, _x.state.command_velocity.header.stamp.nsecs))
      _x = self.state.command_velocity.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.state.command_velocity.velocity.x, _x.state.command_velocity.velocity.y, _x.state.command_velocity.velocity.theta, _x.state.global_plan.header.seq, _x.state.global_plan.header.stamp.secs, _x.state.global_plan.header.stamp.nsecs))
      _x = self.state.global_plan.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.state.global_plan.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.state.global_plan.poses:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
      _x = self
      buff.write(_get_struct_3f().pack(_x.percent_complete, _x.distance_traveled, _x.estimated_distance_remaining))
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
      if self.state is None:
        self.state = locomotor_msgs.msg.NavigationState()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.state.global_pose.header.seq, _x.state.global_pose.header.stamp.secs, _x.state.global_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state.global_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state.global_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.state.global_pose.pose.x, _x.state.global_pose.pose.y, _x.state.global_pose.pose.theta, _x.state.local_pose.header.seq, _x.state.local_pose.header.stamp.secs, _x.state.local_pose.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state.local_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state.local_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.state.local_pose.pose.x, _x.state.local_pose.pose.y, _x.state.local_pose.pose.theta, _x.state.goal.header.seq, _x.state.goal.header.stamp.secs, _x.state.goal.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state.goal.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state.goal.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.state.goal.pose.x, _x.state.goal.pose.y, _x.state.goal.pose.theta, _x.state.current_velocity.header.seq, _x.state.current_velocity.header.stamp.secs, _x.state.current_velocity.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state.current_velocity.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state.current_velocity.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.state.current_velocity.velocity.x, _x.state.current_velocity.velocity.y, _x.state.current_velocity.velocity.theta, _x.state.command_velocity.header.seq, _x.state.command_velocity.header.stamp.secs, _x.state.command_velocity.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state.command_velocity.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state.command_velocity.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.state.command_velocity.velocity.x, _x.state.command_velocity.velocity.y, _x.state.command_velocity.velocity.theta, _x.state.global_plan.header.seq, _x.state.global_plan.header.stamp.secs, _x.state.global_plan.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state.global_plan.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state.global_plan.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.state.global_plan.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose2D()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
        self.state.global_plan.poses.append(val1)
      _x = self
      start = end
      end += 12
      (_x.percent_complete, _x.distance_traveled, _x.estimated_distance_remaining,) = _get_struct_3f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_3d3I = None
def _get_struct_3d3I():
    global _struct_3d3I
    if _struct_3d3I is None:
        _struct_3d3I = struct.Struct("<3d3I")
    return _struct_3d3I
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
