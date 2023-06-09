// Generated by gencpp from file dwb_msgs/GenerateTwists.msg
// DO NOT EDIT!


#ifndef DWB_MSGS_MESSAGE_GENERATETWISTS_H
#define DWB_MSGS_MESSAGE_GENERATETWISTS_H

#include <ros/service_traits.h>


#include <dwb_msgs/GenerateTwistsRequest.h>
#include <dwb_msgs/GenerateTwistsResponse.h>


namespace dwb_msgs
{

struct GenerateTwists
{

typedef GenerateTwistsRequest Request;
typedef GenerateTwistsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GenerateTwists
} // namespace dwb_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dwb_msgs::GenerateTwists > {
  static const char* value()
  {
    return "01d3946b46f84a3da34b725f25f3768a";
  }

  static const char* value(const ::dwb_msgs::GenerateTwists&) { return value(); }
};

template<>
struct DataType< ::dwb_msgs::GenerateTwists > {
  static const char* value()
  {
    return "dwb_msgs/GenerateTwists";
  }

  static const char* value(const ::dwb_msgs::GenerateTwists&) { return value(); }
};


// service_traits::MD5Sum< ::dwb_msgs::GenerateTwistsRequest> should match
// service_traits::MD5Sum< ::dwb_msgs::GenerateTwists >
template<>
struct MD5Sum< ::dwb_msgs::GenerateTwistsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dwb_msgs::GenerateTwists >::value();
  }
  static const char* value(const ::dwb_msgs::GenerateTwistsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dwb_msgs::GenerateTwistsRequest> should match
// service_traits::DataType< ::dwb_msgs::GenerateTwists >
template<>
struct DataType< ::dwb_msgs::GenerateTwistsRequest>
{
  static const char* value()
  {
    return DataType< ::dwb_msgs::GenerateTwists >::value();
  }
  static const char* value(const ::dwb_msgs::GenerateTwistsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dwb_msgs::GenerateTwistsResponse> should match
// service_traits::MD5Sum< ::dwb_msgs::GenerateTwists >
template<>
struct MD5Sum< ::dwb_msgs::GenerateTwistsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dwb_msgs::GenerateTwists >::value();
  }
  static const char* value(const ::dwb_msgs::GenerateTwistsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dwb_msgs::GenerateTwistsResponse> should match
// service_traits::DataType< ::dwb_msgs::GenerateTwists >
template<>
struct DataType< ::dwb_msgs::GenerateTwistsResponse>
{
  static const char* value()
  {
    return DataType< ::dwb_msgs::GenerateTwists >::value();
  }
  static const char* value(const ::dwb_msgs::GenerateTwistsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DWB_MSGS_MESSAGE_GENERATETWISTS_H
