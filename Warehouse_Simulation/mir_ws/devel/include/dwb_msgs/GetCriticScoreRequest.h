// Generated by gencpp from file dwb_msgs/GetCriticScoreRequest.msg
// DO NOT EDIT!


#ifndef DWB_MSGS_MESSAGE_GETCRITICSCOREREQUEST_H
#define DWB_MSGS_MESSAGE_GETCRITICSCOREREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_2d_msgs/Pose2DStamped.h>
#include <nav_2d_msgs/Twist2D.h>
#include <nav_2d_msgs/Path2D.h>
#include <nav_2d_msgs/Pose2DStamped.h>
#include <dwb_msgs/Trajectory2D.h>

namespace dwb_msgs
{
template <class ContainerAllocator>
struct GetCriticScoreRequest_
{
  typedef GetCriticScoreRequest_<ContainerAllocator> Type;

  GetCriticScoreRequest_()
    : pose()
    , velocity()
    , global_plan()
    , goal()
    , traj()
    , critic_name()  {
    }
  GetCriticScoreRequest_(const ContainerAllocator& _alloc)
    : pose(_alloc)
    , velocity(_alloc)
    , global_plan(_alloc)
    , goal(_alloc)
    , traj(_alloc)
    , critic_name(_alloc)  {
  (void)_alloc;
    }



   typedef  ::nav_2d_msgs::Pose2DStamped_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::nav_2d_msgs::Twist2D_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;

   typedef  ::nav_2d_msgs::Path2D_<ContainerAllocator>  _global_plan_type;
  _global_plan_type global_plan;

   typedef  ::nav_2d_msgs::Pose2DStamped_<ContainerAllocator>  _goal_type;
  _goal_type goal;

   typedef  ::dwb_msgs::Trajectory2D_<ContainerAllocator>  _traj_type;
  _traj_type traj;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _critic_name_type;
  _critic_name_type critic_name;





  typedef boost::shared_ptr< ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetCriticScoreRequest_

typedef ::dwb_msgs::GetCriticScoreRequest_<std::allocator<void> > GetCriticScoreRequest;

typedef boost::shared_ptr< ::dwb_msgs::GetCriticScoreRequest > GetCriticScoreRequestPtr;
typedef boost::shared_ptr< ::dwb_msgs::GetCriticScoreRequest const> GetCriticScoreRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator1> & lhs, const ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator2> & rhs)
{
  return lhs.pose == rhs.pose &&
    lhs.velocity == rhs.velocity &&
    lhs.global_plan == rhs.global_plan &&
    lhs.goal == rhs.goal &&
    lhs.traj == rhs.traj &&
    lhs.critic_name == rhs.critic_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator1> & lhs, const ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dwb_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3fa15a34e918526f849ca1e20ce4e50a";
  }

  static const char* value(const ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3fa15a34e918526fULL;
  static const uint64_t static_value2 = 0x849ca1e20ce4e50aULL;
};

template<class ContainerAllocator>
struct DataType< ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dwb_msgs/GetCriticScoreRequest";
  }

  static const char* value(const ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nav_2d_msgs/Pose2DStamped pose\n"
"nav_2d_msgs/Twist2D velocity\n"
"nav_2d_msgs/Path2D global_plan\n"
"nav_2d_msgs/Pose2DStamped goal\n"
"Trajectory2D traj\n"
"string critic_name\n"
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
"\n"
"================================================================================\n"
"MSG: nav_2d_msgs/Twist2D\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
"\n"
"================================================================================\n"
"MSG: nav_2d_msgs/Path2D\n"
"Header header\n"
"geometry_msgs/Pose2D[] poses\n"
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
;
  }

  static const char* value(const ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
      stream.next(m.velocity);
      stream.next(m.global_plan);
      stream.next(m.goal);
      stream.next(m.traj);
      stream.next(m.critic_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetCriticScoreRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dwb_msgs::GetCriticScoreRequest_<ContainerAllocator>& v)
  {
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::nav_2d_msgs::Pose2DStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::nav_2d_msgs::Twist2D_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
    s << indent << "global_plan: ";
    s << std::endl;
    Printer< ::nav_2d_msgs::Path2D_<ContainerAllocator> >::stream(s, indent + "  ", v.global_plan);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::nav_2d_msgs::Pose2DStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
    s << indent << "traj: ";
    s << std::endl;
    Printer< ::dwb_msgs::Trajectory2D_<ContainerAllocator> >::stream(s, indent + "  ", v.traj);
    s << indent << "critic_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.critic_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DWB_MSGS_MESSAGE_GETCRITICSCOREREQUEST_H
