; Auto-generated. Do not edit!


(cl:in-package nav_2d_msgs-msg)


;//! \htmlinclude NavGridOfChars.msg.html

(cl:defclass <NavGridOfChars> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (info
    :reader info
    :initarg :info
    :type nav_2d_msgs-msg:NavGridInfo
    :initform (cl:make-instance 'nav_2d_msgs-msg:NavGridInfo))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass NavGridOfChars (<NavGridOfChars>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavGridOfChars>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavGridOfChars)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_2d_msgs-msg:<NavGridOfChars> is deprecated: use nav_2d_msgs-msg:NavGridOfChars instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <NavGridOfChars>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:stamp-val is deprecated.  Use nav_2d_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <NavGridOfChars>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:info-val is deprecated.  Use nav_2d_msgs-msg:info instead.")
  (info m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <NavGridOfChars>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:data-val is deprecated.  Use nav_2d_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavGridOfChars>) ostream)
  "Serializes a message object of type '<NavGridOfChars>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavGridOfChars>) istream)
  "Deserializes a message object of type '<NavGridOfChars>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavGridOfChars>)))
  "Returns string type for a message object of type '<NavGridOfChars>"
  "nav_2d_msgs/NavGridOfChars")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavGridOfChars)))
  "Returns string type for a message object of type 'NavGridOfChars"
  "nav_2d_msgs/NavGridOfChars")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavGridOfChars>)))
  "Returns md5sum for a message object of type '<NavGridOfChars>"
  "396563c1db71f1080855e692b0310f96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavGridOfChars)))
  "Returns md5sum for a message object of type 'NavGridOfChars"
  "396563c1db71f1080855e692b0310f96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavGridOfChars>)))
  "Returns full string definition for message of type '<NavGridOfChars>"
  (cl:format cl:nil "time stamp~%NavGridInfo info~%# The map data, in row-major order, starting with (0,0).~%# Unlike nav_msgs/OccupancyGrid, the values are [0, 256), not [-1, 100]~%uint8[] data~%~%================================================================================~%MSG: nav_2d_msgs/NavGridInfo~%uint32 width~%uint32 height~%float64 resolution~%string frame_id~%float64 origin_x~%float64 origin_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavGridOfChars)))
  "Returns full string definition for message of type 'NavGridOfChars"
  (cl:format cl:nil "time stamp~%NavGridInfo info~%# The map data, in row-major order, starting with (0,0).~%# Unlike nav_msgs/OccupancyGrid, the values are [0, 256), not [-1, 100]~%uint8[] data~%~%================================================================================~%MSG: nav_2d_msgs/NavGridInfo~%uint32 width~%uint32 height~%float64 resolution~%string frame_id~%float64 origin_x~%float64 origin_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavGridOfChars>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavGridOfChars>))
  "Converts a ROS message object to a list"
  (cl:list 'NavGridOfChars
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':info (info msg))
    (cl:cons ':data (data msg))
))
