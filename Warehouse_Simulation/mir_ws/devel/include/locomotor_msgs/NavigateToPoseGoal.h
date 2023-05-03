// Generated by gencpp from file locomotor_msgs/NavigateToPoseGoal.msg
// DO NOT EDIT!


#ifndef LOCOMOTOR_MSGS_MESSAGE_NAVIGATETOPOSEGOAL_H
#define LOCOMOTOR_MSGS_MESSAGE_NAVIGATETOPOSEGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_2d_msgs/Pose2DStamped.h>

namespace locomotor_msgs
{
template <class ContainerAllocator>
struct NavigateToPoseGoal_
{
  typedef NavigateToPoseGoal_<ContainerAllocator> Type;

  NavigateToPoseGoal_()
    : goal()  {
    }
  NavigateToPoseGoal_(const ContainerAllocator& _alloc)
    : goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::nav_2d_msgs::Pose2DStamped_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator> const> ConstPtr;

}; // struct NavigateToPoseGoal_

typedef ::locomotor_msgs::NavigateToPoseGoal_<std::allocator<void> > NavigateToPoseGoal;

typedef boost::shared_ptr< ::locomotor_msgs::NavigateToPoseGoal > NavigateToPoseGoalPtr;
typedef boost::shared_ptr< ::locomotor_msgs::NavigateToPoseGoal const> NavigateToPoseGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator1> & lhs, const ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator2> & rhs)
{
  return lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator1> & lhs, const ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace locomotor_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9b2d518adfd9df22ae3384278db3a616";
  }

  static const char* value(const ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9b2d518adfd9df22ULL;
  static const uint64_t static_value2 = 0xae3384278db3a616ULL;
};

template<class ContainerAllocator>
struct DataType< ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "locomotor_msgs/NavigateToPoseGoal";
  }

  static const char* value(const ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"nav_2d_msgs/Pose2DStamped goal\n"
"\n"
"================================================================================\n"
"MSG: nav_2d_msgs/Pose2DStamped\n"
"Header header\n"
"geometry_msgs/Pose2D pose\n"
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
;
  }

  static const char* value(const ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavigateToPoseGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::locomotor_msgs::NavigateToPoseGoal_<ContainerAllocator>& v)
  {
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::nav_2d_msgs::Pose2DStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LOCOMOTOR_MSGS_MESSAGE_NAVIGATETOPOSEGOAL_H
