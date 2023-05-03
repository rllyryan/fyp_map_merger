// Generated by gencpp from file mir_msgs/UserPrompt.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_USERPROMPT_H
#define MIR_MSGS_MESSAGE_USERPROMPT_H


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
struct UserPrompt_
{
  typedef UserPrompt_<ContainerAllocator> Type;

  UserPrompt_()
    : has_request(false)
    , guid()
    , user_group()
    , question()
    , options()
    , timeout()  {
    }
  UserPrompt_(const ContainerAllocator& _alloc)
    : has_request(false)
    , guid(_alloc)
    , user_group(_alloc)
    , question(_alloc)
    , options(_alloc)
    , timeout()  {
  (void)_alloc;
    }



   typedef uint8_t _has_request_type;
  _has_request_type has_request;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _guid_type;
  _guid_type guid;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _user_group_type;
  _user_group_type user_group;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _question_type;
  _question_type question;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _options_type;
  _options_type options;

   typedef ros::Duration _timeout_type;
  _timeout_type timeout;





  typedef boost::shared_ptr< ::mir_msgs::UserPrompt_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::UserPrompt_<ContainerAllocator> const> ConstPtr;

}; // struct UserPrompt_

typedef ::mir_msgs::UserPrompt_<std::allocator<void> > UserPrompt;

typedef boost::shared_ptr< ::mir_msgs::UserPrompt > UserPromptPtr;
typedef boost::shared_ptr< ::mir_msgs::UserPrompt const> UserPromptConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::UserPrompt_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::UserPrompt_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_msgs::UserPrompt_<ContainerAllocator1> & lhs, const ::mir_msgs::UserPrompt_<ContainerAllocator2> & rhs)
{
  return lhs.has_request == rhs.has_request &&
    lhs.guid == rhs.guid &&
    lhs.user_group == rhs.user_group &&
    lhs.question == rhs.question &&
    lhs.options == rhs.options &&
    lhs.timeout == rhs.timeout;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_msgs::UserPrompt_<ContainerAllocator1> & lhs, const ::mir_msgs::UserPrompt_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::UserPrompt_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::UserPrompt_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::UserPrompt_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::UserPrompt_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::UserPrompt_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::UserPrompt_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::UserPrompt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "731624029b0041f5bffe8cc3d3ed3abe";
  }

  static const char* value(const ::mir_msgs::UserPrompt_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x731624029b0041f5ULL;
  static const uint64_t static_value2 = 0xbffe8cc3d3ed3abeULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::UserPrompt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/UserPrompt";
  }

  static const char* value(const ::mir_msgs::UserPrompt_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::UserPrompt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool has_request\n"
"string guid\n"
"string user_group\n"
"string question\n"
"string[] options\n"
"duration timeout\n"
;
  }

  static const char* value(const ::mir_msgs::UserPrompt_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::UserPrompt_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.has_request);
      stream.next(m.guid);
      stream.next(m.user_group);
      stream.next(m.question);
      stream.next(m.options);
      stream.next(m.timeout);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UserPrompt_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::UserPrompt_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::UserPrompt_<ContainerAllocator>& v)
  {
    s << indent << "has_request: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.has_request);
    s << indent << "guid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.guid);
    s << indent << "user_group: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.user_group);
    s << indent << "question: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.question);
    s << indent << "options[]" << std::endl;
    for (size_t i = 0; i < v.options.size(); ++i)
    {
      s << indent << "  options[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.options[i]);
    }
    s << indent << "timeout: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.timeout);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_USERPROMPT_H