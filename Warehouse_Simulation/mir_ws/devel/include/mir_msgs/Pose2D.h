// Generated by gencpp from file mir_msgs/Pose2D.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_POSE2D_H
#define MIR_MSGS_MESSAGE_POSE2D_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mir_msgs
{
template <class ContainerAllocator>
struct Pose2D_
{
  typedef Pose2D_<ContainerAllocator> Type;

  Pose2D_()
    : x(0.0)
    , y(0.0)
    , orientation(0.0)  {
    }
  Pose2D_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , orientation(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _orientation_type;
  _orientation_type orientation;





  typedef boost::shared_ptr< ::mir_msgs::Pose2D_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::Pose2D_<ContainerAllocator> const> ConstPtr;

}; // struct Pose2D_

typedef ::mir_msgs::Pose2D_<std::allocator<void> > Pose2D;

typedef boost::shared_ptr< ::mir_msgs::Pose2D > Pose2DPtr;
typedef boost::shared_ptr< ::mir_msgs::Pose2D const> Pose2DConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::Pose2D_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::Pose2D_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_msgs::Pose2D_<ContainerAllocator1> & lhs, const ::mir_msgs::Pose2D_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.orientation == rhs.orientation;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_msgs::Pose2D_<ContainerAllocator1> & lhs, const ::mir_msgs::Pose2D_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::Pose2D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::Pose2D_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::Pose2D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::Pose2D_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::Pose2D_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::Pose2D_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::Pose2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1c567beaed44a5d11b818be4c87fec7b";
  }

  static const char* value(const ::mir_msgs::Pose2D_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1c567beaed44a5d1ULL;
  static const uint64_t static_value2 = 0x1b818be4c87fec7bULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::Pose2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/Pose2D";
  }

  static const char* value(const ::mir_msgs::Pose2D_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::Pose2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n"
"float32 y\n"
"float32 orientation\n"
;
  }

  static const char* value(const ::mir_msgs::Pose2D_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::Pose2D_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.orientation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Pose2D_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::Pose2D_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::Pose2D_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "orientation: ";
    Printer<float>::stream(s, indent + "  ", v.orientation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_POSE2D_H
