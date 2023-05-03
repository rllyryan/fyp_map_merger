// Generated by gencpp from file mir_msgs/JoystickVel.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_JOYSTICKVEL_H
#define MIR_MSGS_MESSAGE_JOYSTICKVEL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Twist.h>

namespace mir_msgs
{
template <class ContainerAllocator>
struct JoystickVel_
{
  typedef JoystickVel_<ContainerAllocator> Type;

  JoystickVel_()
    : joystick_token()
    , speed_command()  {
    }
  JoystickVel_(const ContainerAllocator& _alloc)
    : joystick_token(_alloc)
    , speed_command(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _joystick_token_type;
  _joystick_token_type joystick_token;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _speed_command_type;
  _speed_command_type speed_command;





  typedef boost::shared_ptr< ::mir_msgs::JoystickVel_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::JoystickVel_<ContainerAllocator> const> ConstPtr;

}; // struct JoystickVel_

typedef ::mir_msgs::JoystickVel_<std::allocator<void> > JoystickVel;

typedef boost::shared_ptr< ::mir_msgs::JoystickVel > JoystickVelPtr;
typedef boost::shared_ptr< ::mir_msgs::JoystickVel const> JoystickVelConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::JoystickVel_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::JoystickVel_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_msgs::JoystickVel_<ContainerAllocator1> & lhs, const ::mir_msgs::JoystickVel_<ContainerAllocator2> & rhs)
{
  return lhs.joystick_token == rhs.joystick_token &&
    lhs.speed_command == rhs.speed_command;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_msgs::JoystickVel_<ContainerAllocator1> & lhs, const ::mir_msgs::JoystickVel_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::JoystickVel_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::JoystickVel_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::JoystickVel_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::JoystickVel_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::JoystickVel_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::JoystickVel_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::JoystickVel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "55dfb41e13ae3da5456e9941cea0cbc0";
  }

  static const char* value(const ::mir_msgs::JoystickVel_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x55dfb41e13ae3da5ULL;
  static const uint64_t static_value2 = 0x456e9941cea0cbc0ULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::JoystickVel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/JoystickVel";
  }

  static const char* value(const ::mir_msgs::JoystickVel_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::JoystickVel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string joystick_token\n"
"geometry_msgs/Twist speed_command\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::mir_msgs::JoystickVel_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::JoystickVel_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joystick_token);
      stream.next(m.speed_command);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JoystickVel_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::JoystickVel_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::JoystickVel_<ContainerAllocator>& v)
  {
    s << indent << "joystick_token: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.joystick_token);
    s << indent << "speed_command: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.speed_command);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_JOYSTICKVEL_H
