// Generated by gencpp from file dwb_msgs/LocalPlanEvaluation.msg
// DO NOT EDIT!


#ifndef DWB_MSGS_MESSAGE_LOCALPLANEVALUATION_H
#define DWB_MSGS_MESSAGE_LOCALPLANEVALUATION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <dwb_msgs/TrajectoryScore.h>

namespace dwb_msgs
{
template <class ContainerAllocator>
struct LocalPlanEvaluation_
{
  typedef LocalPlanEvaluation_<ContainerAllocator> Type;

  LocalPlanEvaluation_()
    : header()
    , twists()
    , best_index(0)
    , worst_index(0)  {
    }
  LocalPlanEvaluation_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , twists(_alloc)
    , best_index(0)
    , worst_index(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::dwb_msgs::TrajectoryScore_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::dwb_msgs::TrajectoryScore_<ContainerAllocator> >::other >  _twists_type;
  _twists_type twists;

   typedef uint16_t _best_index_type;
  _best_index_type best_index;

   typedef uint16_t _worst_index_type;
  _worst_index_type worst_index;





  typedef boost::shared_ptr< ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> const> ConstPtr;

}; // struct LocalPlanEvaluation_

typedef ::dwb_msgs::LocalPlanEvaluation_<std::allocator<void> > LocalPlanEvaluation;

typedef boost::shared_ptr< ::dwb_msgs::LocalPlanEvaluation > LocalPlanEvaluationPtr;
typedef boost::shared_ptr< ::dwb_msgs::LocalPlanEvaluation const> LocalPlanEvaluationConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator1> & lhs, const ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.twists == rhs.twists &&
    lhs.best_index == rhs.best_index &&
    lhs.worst_index == rhs.worst_index;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator1> & lhs, const ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dwb_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d360642012ea44ee598913c70498aa4b";
  }

  static const char* value(const ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd360642012ea44eeULL;
  static const uint64_t static_value2 = 0x598913c70498aa4bULL;
};

template<class ContainerAllocator>
struct DataType< ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dwb_msgs/LocalPlanEvaluation";
  }

  static const char* value(const ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Full Scoring for running the local planner\n"
"\n"
"# Header, used for timestamp\n"
"Header header\n"
"# All the trajectories evaluated and their scores\n"
"TrajectoryScore[] twists\n"
"# Convenience index of the best (lowest) score in the twists array\n"
"uint16 best_index\n"
"# Convenience index of the worst (highest) score in the twists array. Useful for scaling.\n"
"uint16 worst_index\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: dwb_msgs/TrajectoryScore\n"
"# Complete scoring for a given twist.\n"
"\n"
"# The trajectory being scored\n"
"Trajectory2D traj\n"
"# The Scores for each of the critics employed\n"
"CriticScore[] scores\n"
"# Convenience member that totals the critic scores\n"
"float32 total\n"
"\n"
"================================================================================\n"
"MSG: dwb_msgs/Trajectory2D\n"
"# For a given velocity command, the poses that the robot will go to in the allotted time.\n"
"\n"
"# Input Velocity\n"
"nav_2d_msgs/Twist2D velocity\n"
"\n"
"# Poses the robot will go to, given our kinematic model\n"
"geometry_msgs/Pose2D[] poses\n"
"\n"
"# Time difference between the current pose and the poses in the trajectory.\n"
"# Parallel array to poses. Length should be the same.\n"
"duration[] time_offsets\n"
"\n"
"================================================================================\n"
"MSG: nav_2d_msgs/Twist2D\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose2D\n"
"# Deprecated\n"
"# Please use the full 3D pose.\n"
"\n"
"# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n"
"\n"
"# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n"
"\n"
"\n"
"# This expresses a position and orientation on a 2D manifold.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
"\n"
"================================================================================\n"
"MSG: dwb_msgs/CriticScore\n"
"# The result from one critic scoring a Twist.\n"
"# Name of the critic\n"
"string name\n"
"# Score for the critic, not multiplied by the scale\n"
"float32 raw_score\n"
"# Scale for the critic, multiplied by the raw_score and added to the total score\n"
"float32 scale\n"
;
  }

  static const char* value(const ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.twists);
      stream.next(m.best_index);
      stream.next(m.worst_index);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LocalPlanEvaluation_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "twists[]" << std::endl;
    for (size_t i = 0; i < v.twists.size(); ++i)
    {
      s << indent << "  twists[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::dwb_msgs::TrajectoryScore_<ContainerAllocator> >::stream(s, indent + "    ", v.twists[i]);
    }
    s << indent << "best_index: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.best_index);
    s << indent << "worst_index: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.worst_index);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DWB_MSGS_MESSAGE_LOCALPLANEVALUATION_H
