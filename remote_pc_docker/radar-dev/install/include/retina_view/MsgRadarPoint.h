// Generated by gencpp from file retina_view/MsgRadarPoint.msg
// DO NOT EDIT!


#ifndef RETINA_VIEW_MESSAGE_MSGRADARPOINT_H
#define RETINA_VIEW_MESSAGE_MSGRADARPOINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <retina_view/Point.h>
#include <retina_view/Track.h>

namespace retina_view
{
template <class ContainerAllocator>
struct MsgRadarPoint_
{
  typedef MsgRadarPoint_<ContainerAllocator> Type;

  MsgRadarPoint_()
    : position(0)
    , nTargets(0)
    , points()
    , frame_counter(0)
    , time_stamp()
    , track_count(0)
    , track_info()  {
    }
  MsgRadarPoint_(const ContainerAllocator& _alloc)
    : position(0)
    , nTargets(0)
    , points(_alloc)
    , frame_counter(0)
    , time_stamp(_alloc)
    , track_count(0)
    , track_info(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _position_type;
  _position_type position;

   typedef int32_t _nTargets_type;
  _nTargets_type nTargets;

   typedef std::vector< ::retina_view::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::retina_view::Point_<ContainerAllocator> >::other >  _points_type;
  _points_type points;

   typedef int32_t _frame_counter_type;
  _frame_counter_type frame_counter;

   typedef std::vector<uint32_t, typename ContainerAllocator::template rebind<uint32_t>::other >  _time_stamp_type;
  _time_stamp_type time_stamp;

   typedef int32_t _track_count_type;
  _track_count_type track_count;

   typedef std::vector< ::retina_view::Track_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::retina_view::Track_<ContainerAllocator> >::other >  _track_info_type;
  _track_info_type track_info;





  typedef boost::shared_ptr< ::retina_view::MsgRadarPoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::retina_view::MsgRadarPoint_<ContainerAllocator> const> ConstPtr;

}; // struct MsgRadarPoint_

typedef ::retina_view::MsgRadarPoint_<std::allocator<void> > MsgRadarPoint;

typedef boost::shared_ptr< ::retina_view::MsgRadarPoint > MsgRadarPointPtr;
typedef boost::shared_ptr< ::retina_view::MsgRadarPoint const> MsgRadarPointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::retina_view::MsgRadarPoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::retina_view::MsgRadarPoint_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::retina_view::MsgRadarPoint_<ContainerAllocator1> & lhs, const ::retina_view::MsgRadarPoint_<ContainerAllocator2> & rhs)
{
  return lhs.position == rhs.position &&
    lhs.nTargets == rhs.nTargets &&
    lhs.points == rhs.points &&
    lhs.frame_counter == rhs.frame_counter &&
    lhs.time_stamp == rhs.time_stamp &&
    lhs.track_count == rhs.track_count &&
    lhs.track_info == rhs.track_info;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::retina_view::MsgRadarPoint_<ContainerAllocator1> & lhs, const ::retina_view::MsgRadarPoint_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace retina_view

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::retina_view::MsgRadarPoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::retina_view::MsgRadarPoint_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::retina_view::MsgRadarPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::retina_view::MsgRadarPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::retina_view::MsgRadarPoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::retina_view::MsgRadarPoint_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::retina_view::MsgRadarPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0685e74f492716fb2f47330fdc4c28a0";
  }

  static const char* value(const ::retina_view::MsgRadarPoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0685e74f492716fbULL;
  static const uint64_t static_value2 = 0x2f47330fdc4c28a0ULL;
};

template<class ContainerAllocator>
struct DataType< ::retina_view::MsgRadarPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "retina_view/MsgRadarPoint";
  }

  static const char* value(const ::retina_view::MsgRadarPoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::retina_view::MsgRadarPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 position\n"
"int32 nTargets\n"
"Point[] points\n"
"int32 frame_counter\n"
"uint32[] time_stamp\n"
"int32 track_count  \n"
"Track[] track_info\n"
"\n"
"================================================================================\n"
"MSG: retina_view/Point\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
"float32 doppler\n"
"uint32 cluster\n"
"uint32 power\n"
"uint8 track\n"
"\n"
"================================================================================\n"
"MSG: retina_view/Track\n"
"int8 trackcount\n"
"float32 x\n"
"float32 y\n"
;
  }

  static const char* value(const ::retina_view::MsgRadarPoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::retina_view::MsgRadarPoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
      stream.next(m.nTargets);
      stream.next(m.points);
      stream.next(m.frame_counter);
      stream.next(m.time_stamp);
      stream.next(m.track_count);
      stream.next(m.track_info);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MsgRadarPoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::retina_view::MsgRadarPoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::retina_view::MsgRadarPoint_<ContainerAllocator>& v)
  {
    s << indent << "position: ";
    Printer<int32_t>::stream(s, indent + "  ", v.position);
    s << indent << "nTargets: ";
    Printer<int32_t>::stream(s, indent + "  ", v.nTargets);
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::retina_view::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
    s << indent << "frame_counter: ";
    Printer<int32_t>::stream(s, indent + "  ", v.frame_counter);
    s << indent << "time_stamp[]" << std::endl;
    for (size_t i = 0; i < v.time_stamp.size(); ++i)
    {
      s << indent << "  time_stamp[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.time_stamp[i]);
    }
    s << indent << "track_count: ";
    Printer<int32_t>::stream(s, indent + "  ", v.track_count);
    s << indent << "track_info[]" << std::endl;
    for (size_t i = 0; i < v.track_info.size(); ++i)
    {
      s << indent << "  track_info[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::retina_view::Track_<ContainerAllocator> >::stream(s, indent + "    ", v.track_info[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // RETINA_VIEW_MESSAGE_MSGRADARPOINT_H
