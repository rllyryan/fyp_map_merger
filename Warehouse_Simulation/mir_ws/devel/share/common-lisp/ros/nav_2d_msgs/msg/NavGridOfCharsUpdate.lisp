; Auto-generated. Do not edit!


(cl:in-package nav_2d_msgs-msg)


;//! \htmlinclude NavGridOfCharsUpdate.msg.html

(cl:defclass <NavGridOfCharsUpdate> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (bounds
    :reader bounds
    :initarg :bounds
    :type nav_2d_msgs-msg:UIntBounds
    :initform (cl:make-instance 'nav_2d_msgs-msg:UIntBounds))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass NavGridOfCharsUpdate (<NavGridOfCharsUpdate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavGridOfCharsUpdate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavGridOfCharsUpdate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_2d_msgs-msg:<NavGridOfCharsUpdate> is deprecated: use nav_2d_msgs-msg:NavGridOfCharsUpdate instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <NavGridOfCharsUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:stamp-val is deprecated.  Use nav_2d_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'bounds-val :lambda-list '(m))
(cl:defmethod bounds-val ((m <NavGridOfCharsUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:bounds-val is deprecated.  Use nav_2d_msgs-msg:bounds instead.")
  (bounds m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <NavGridOfCharsUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_2d_msgs-msg:data-val is deprecated.  Use nav_2d_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavGridOfCharsUpdate>) ostream)
  "Serializes a message object of type '<NavGridOfCharsUpdate>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounds) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavGridOfCharsUpdate>) istream)
  "Deserializes a message object of type '<NavGridOfCharsUpdate>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounds) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavGridOfCharsUpdate>)))
  "Returns string type for a message object of type '<NavGridOfCharsUpdate>"
  "nav_2d_msgs/NavGridOfCharsUpdate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavGridOfCharsUpdate)))
  "Returns string type for a message object of type 'NavGridOfCharsUpdate"
  "nav_2d_msgs/NavGridOfCharsUpdate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavGridOfCharsUpdate>)))
  "Returns md5sum for a message object of type '<NavGridOfCharsUpdate>"
  "9895b422244cc07416929605885c81c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavGridOfCharsUpdate)))
  "Returns md5sum for a message object of type 'NavGridOfCharsUpdate"
  "9895b422244cc07416929605885c81c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavGridOfCharsUpdate>)))
  "Returns full string definition for message of type '<NavGridOfCharsUpdate>"
  (cl:format cl:nil "time stamp~%UIntBounds bounds~%uint8[] data~%~%================================================================================~%MSG: nav_2d_msgs/UIntBounds~%# Bounds are inclusive~%uint32 min_x~%uint32 min_y~%uint32 max_x~%uint32 max_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavGridOfCharsUpdate)))
  "Returns full string definition for message of type 'NavGridOfCharsUpdate"
  (cl:format cl:nil "time stamp~%UIntBounds bounds~%uint8[] data~%~%================================================================================~%MSG: nav_2d_msgs/UIntBounds~%# Bounds are inclusive~%uint32 min_x~%uint32 min_y~%uint32 max_x~%uint32 max_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavGridOfCharsUpdate>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounds))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavGridOfCharsUpdate>))
  "Converts a ROS message object to a list"
  (cl:list 'NavGridOfCharsUpdate
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':bounds (bounds msg))
    (cl:cons ':data (data msg))
))
