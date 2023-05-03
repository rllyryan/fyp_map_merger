// Generated by gencpp from file dwb_msgs/ScoreTrajectoryResponse.msg
// DO NOT EDIT!


#ifndef DWB_MSGS_MESSAGE_SCORETRAJECTORYRESPONSE_H
#define DWB_MSGS_MESSAGE_SCORETRAJECTORYRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dwb_msgs/TrajectoryScore.h>

namespace dwb_msgs
{
template <class ContainerAllocator>
struct ScoreTrajectoryResponse_
{
  typedef ScoreTrajectoryResponse_<ContainerAllocator> Type;

  ScoreTrajectoryResponse_()
    : score()  {
    }
  ScoreTrajectoryResponse_(const ContainerAllocator& _alloc)
    : score(_alloc)  {
  (void)_alloc;
    }



   typedef  ::dwb_msgs::TrajectoryScore_<ContainerAllocator>  _score_type;
  _score_type score;





  typedef boost::shared_ptr< ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ScoreTrajectoryResponse_

typedef ::dwb_msgs::ScoreTrajectoryResponse_<std::allocator<void> > ScoreTrajectoryResponse;

typedef boost::shared_ptr< ::dwb_msgs::ScoreTrajectoryResponse > ScoreTrajectoryResponsePtr;
typedef boost::shared_ptr< ::dwb_msgs::ScoreTrajectoryResponse const> ScoreTrajectoryResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator1> & lhs, const ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator2> & rhs)
{
  return lhs.score == rhs.score;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator1> & lhs, const ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dwb_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "79d4637c00f492e5b6dd1b88aed58cd2";
  }

  static const char* value(const ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x79d4637c00f492e5ULL;
  static const uint64_t static_value2 = 0xb6dd1b88aed58cd2ULL;
};

template<class ContainerAllocator>
struct DataType< ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dwb_msgs/ScoreTrajectoryResponse";
  }

  static const char* value(const ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "TrajectoryScore score\n"
"\n"
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

  static const char* value(const ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.score);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ScoreTrajectoryResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dwb_msgs::ScoreTrajectoryResponse_<ContainerAllocator>& v)
  {
    s << indent << "score: ";
    s << std::endl;
    Printer< ::dwb_msgs::TrajectoryScore_<ContainerAllocator> >::stream(s, indent + "  ", v.score);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DWB_MSGS_MESSAGE_SCORETRAJECTORYRESPONSE_H
