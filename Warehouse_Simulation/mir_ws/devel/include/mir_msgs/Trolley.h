// Generated by gencpp from file mir_msgs/Trolley.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_TROLLEY_H
#define MIR_MSGS_MESSAGE_TROLLEY_H


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
struct Trolley_
{
  typedef Trolley_<ContainerAllocator> Type;

  Trolley_()
    : id(0)
    , length(0.0)
    , width(0.0)
    , height(0.0)
    , offset_locked_wheels(0.0)  {
    }
  Trolley_(const ContainerAllocator& _alloc)
    : id(0)
    , length(0.0)
    , width(0.0)
    , height(0.0)
    , offset_locked_wheels(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef float _length_type;
  _length_type length;

   typedef float _width_type;
  _width_type width;

   typedef float _height_type;
  _height_type height;

   typedef float _offset_locked_wheels_type;
  _offset_locked_wheels_type offset_locked_wheels;





  typedef boost::shared_ptr< ::mir_msgs::Trolley_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::Trolley_<ContainerAllocator> const> ConstPtr;

}; // struct Trolley_

typedef ::mir_msgs::Trolley_<std::allocator<void> > Trolley;

typedef boost::shared_ptr< ::mir_msgs::Trolley > TrolleyPtr;
typedef boost::shared_ptr< ::mir_msgs::Trolley const> TrolleyConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::Trolley_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::Trolley_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_msgs::Trolley_<ContainerAllocator1> & lhs, const ::mir_msgs::Trolley_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.length == rhs.length &&
    lhs.width == rhs.width &&
    lhs.height == rhs.height &&
    lhs.offset_locked_wheels == rhs.offset_locked_wheels;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_msgs::Trolley_<ContainerAllocator1> & lhs, const ::mir_msgs::Trolley_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::Trolley_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::Trolley_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::Trolley_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::Trolley_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::Trolley_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::Trolley_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::Trolley_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f7f198bfa8fab1128035d129c5beedb7";
  }

  static const char* value(const ::mir_msgs::Trolley_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf7f198bfa8fab112ULL;
  static const uint64_t static_value2 = 0x8035d129c5beedb7ULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::Trolley_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/Trolley";
  }

  static const char* value(const ::mir_msgs::Trolley_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::Trolley_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 id\n"
"float32 length\n"
"float32 width\n"
"float32 height\n"
"float32 offset_locked_wheels\n"
;
  }

  static const char* value(const ::mir_msgs::Trolley_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::Trolley_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.length);
      stream.next(m.width);
      stream.next(m.height);
      stream.next(m.offset_locked_wheels);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Trolley_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::Trolley_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::Trolley_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "length: ";
    Printer<float>::stream(s, indent + "  ", v.length);
    s << indent << "width: ";
    Printer<float>::stream(s, indent + "  ", v.width);
    s << indent << "height: ";
    Printer<float>::stream(s, indent + "  ", v.height);
    s << indent << "offset_locked_wheels: ";
    Printer<float>::stream(s, indent + "  ", v.offset_locked_wheels);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_TROLLEY_H
