// Generated by gencpp from file nav_2d_msgs/Polygon2DCollection.msg
// DO NOT EDIT!


#ifndef NAV_2D_MSGS_MESSAGE_POLYGON2DCOLLECTION_H
#define NAV_2D_MSGS_MESSAGE_POLYGON2DCOLLECTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <nav_2d_msgs/ComplexPolygon2D.h>
#include <std_msgs/ColorRGBA.h>

namespace nav_2d_msgs
{
template <class ContainerAllocator>
struct Polygon2DCollection_
{
  typedef Polygon2DCollection_<ContainerAllocator> Type;

  Polygon2DCollection_()
    : header()
    , polygons()
    , colors()  {
    }
  Polygon2DCollection_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , polygons(_alloc)
    , colors(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::nav_2d_msgs::ComplexPolygon2D_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::nav_2d_msgs::ComplexPolygon2D_<ContainerAllocator> >::other >  _polygons_type;
  _polygons_type polygons;

   typedef std::vector< ::std_msgs::ColorRGBA_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::std_msgs::ColorRGBA_<ContainerAllocator> >::other >  _colors_type;
  _colors_type colors;





  typedef boost::shared_ptr< ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator> const> ConstPtr;

}; // struct Polygon2DCollection_

typedef ::nav_2d_msgs::Polygon2DCollection_<std::allocator<void> > Polygon2DCollection;

typedef boost::shared_ptr< ::nav_2d_msgs::Polygon2DCollection > Polygon2DCollectionPtr;
typedef boost::shared_ptr< ::nav_2d_msgs::Polygon2DCollection const> Polygon2DCollectionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator1> & lhs, const ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.polygons == rhs.polygons &&
    lhs.colors == rhs.colors;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator1> & lhs, const ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace nav_2d_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a0186b831cfbcfeafd72a58884a4efe9";
  }

  static const char* value(const ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa0186b831cfbcfeaULL;
  static const uint64_t static_value2 = 0xfd72a58884a4efe9ULL;
};

template<class ContainerAllocator>
struct DataType< ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nav_2d_msgs/Polygon2DCollection";
  }

  static const char* value(const ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Primarily used for visualization\n"
"# Colors are optional\n"
"std_msgs/Header header\n"
"ComplexPolygon2D[] polygons\n"
"std_msgs/ColorRGBA[] colors\n"
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
"MSG: nav_2d_msgs/ComplexPolygon2D\n"
"# Representation for a non-simple polygon, i.e. one with holes\n"
"Polygon2D outer    # The outer perimeter\n"
"Polygon2D[] inner  # The perimeter of any inner holes\n"
"\n"
"================================================================================\n"
"MSG: nav_2d_msgs/Polygon2D\n"
"Point2D[] points\n"
"\n"
"================================================================================\n"
"MSG: nav_2d_msgs/Point2D\n"
"float64 x\n"
"float64 y\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/ColorRGBA\n"
"float32 r\n"
"float32 g\n"
"float32 b\n"
"float32 a\n"
;
  }

  static const char* value(const ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.polygons);
      stream.next(m.colors);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Polygon2DCollection_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nav_2d_msgs::Polygon2DCollection_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "polygons[]" << std::endl;
    for (size_t i = 0; i < v.polygons.size(); ++i)
    {
      s << indent << "  polygons[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::nav_2d_msgs::ComplexPolygon2D_<ContainerAllocator> >::stream(s, indent + "    ", v.polygons[i]);
    }
    s << indent << "colors[]" << std::endl;
    for (size_t i = 0; i < v.colors.size(); ++i)
    {
      s << indent << "  colors[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::std_msgs::ColorRGBA_<ContainerAllocator> >::stream(s, indent + "    ", v.colors[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAV_2D_MSGS_MESSAGE_POLYGON2DCOLLECTION_H