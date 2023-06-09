// Generated by gencpp from file dwb_msgs/GenerateTrajectory.msg
// DO NOT EDIT!


#ifndef DWB_MSGS_MESSAGE_GENERATETRAJECTORY_H
#define DWB_MSGS_MESSAGE_GENERATETRAJECTORY_H

#include <ros/service_traits.h>


#include <dwb_msgs/GenerateTrajectoryRequest.h>
#include <dwb_msgs/GenerateTrajectoryResponse.h>


namespace dwb_msgs
{

struct GenerateTrajectory
{

typedef GenerateTrajectoryRequest Request;
typedef GenerateTrajectoryResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GenerateTrajectory
} // namespace dwb_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dwb_msgs::GenerateTrajectory > {
  static const char* value()
  {
    return "a53a5ac380b5d14cb0057919063c0b54";
  }

  static const char* value(const ::dwb_msgs::GenerateTrajectory&) { return value(); }
};

template<>
struct DataType< ::dwb_msgs::GenerateTrajectory > {
  static const char* value()
  {
    return "dwb_msgs/GenerateTrajectory";
  }

  static const char* value(const ::dwb_msgs::GenerateTrajectory&) { return value(); }
};


// service_traits::MD5Sum< ::dwb_msgs::GenerateTrajectoryRequest> should match
// service_traits::MD5Sum< ::dwb_msgs::GenerateTrajectory >
template<>
struct MD5Sum< ::dwb_msgs::GenerateTrajectoryRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dwb_msgs::GenerateTrajectory >::value();
  }
  static const char* value(const ::dwb_msgs::GenerateTrajectoryRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dwb_msgs::GenerateTrajectoryRequest> should match
// service_traits::DataType< ::dwb_msgs::GenerateTrajectory >
template<>
struct DataType< ::dwb_msgs::GenerateTrajectoryRequest>
{
  static const char* value()
  {
    return DataType< ::dwb_msgs::GenerateTrajectory >::value();
  }
  static const char* value(const ::dwb_msgs::GenerateTrajectoryRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dwb_msgs::GenerateTrajectoryResponse> should match
// service_traits::MD5Sum< ::dwb_msgs::GenerateTrajectory >
template<>
struct MD5Sum< ::dwb_msgs::GenerateTrajectoryResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dwb_msgs::GenerateTrajectory >::value();
  }
  static const char* value(const ::dwb_msgs::GenerateTrajectoryResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dwb_msgs::GenerateTrajectoryResponse> should match
// service_traits::DataType< ::dwb_msgs::GenerateTrajectory >
template<>
struct DataType< ::dwb_msgs::GenerateTrajectoryResponse>
{
  static const char* value()
  {
    return DataType< ::dwb_msgs::GenerateTrajectory >::value();
  }
  static const char* value(const ::dwb_msgs::GenerateTrajectoryResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DWB_MSGS_MESSAGE_GENERATETRAJECTORY_H
