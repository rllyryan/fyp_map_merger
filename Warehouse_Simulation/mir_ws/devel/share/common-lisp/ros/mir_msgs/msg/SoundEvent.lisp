; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude SoundEvent.msg.html

(cl:defclass <SoundEvent> (roslisp-msg-protocol:ros-message)
  ((time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:real
    :initform 0)
   (sound_guid
    :reader sound_guid
    :initarg :sound_guid
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (event
    :reader event
    :initarg :event
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SoundEvent (<SoundEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<SoundEvent> is deprecated: use mir_msgs-msg:SoundEvent instead.")))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <SoundEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:time_stamp-val is deprecated.  Use mir_msgs-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'sound_guid-val :lambda-list '(m))
(cl:defmethod sound_guid-val ((m <SoundEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:sound_guid-val is deprecated.  Use mir_msgs-msg:sound_guid instead.")
  (sound_guid m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SoundEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:message-val is deprecated.  Use mir_msgs-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'event-val :lambda-list '(m))
(cl:defmethod event-val ((m <SoundEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:event-val is deprecated.  Use mir_msgs-msg:event instead.")
  (event m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SoundEvent>)))
    "Constants for message type '<SoundEvent>"
  '((:START . 0)
    (:STOP . 1)
    (:MUTE . 2)
    (:UNMUTE . 3)
    (:PAUSE . 4)
    (:UNPAUSE . 5)
    (:FINISH . 6)
    (:MUTEABLE . 7)
    (:REQ_PLAY . 10))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SoundEvent)))
    "Constants for message type 'SoundEvent"
  '((:START . 0)
    (:STOP . 1)
    (:MUTE . 2)
    (:UNMUTE . 3)
    (:PAUSE . 4)
    (:UNPAUSE . 5)
    (:FINISH . 6)
    (:MUTEABLE . 7)
    (:REQ_PLAY . 10))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundEvent>) ostream)
  "Serializes a message object of type '<SoundEvent>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_stamp) (cl:floor (cl:slot-value msg 'time_stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sound_guid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sound_guid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundEvent>) istream)
  "Deserializes a message object of type '<SoundEvent>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sound_guid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sound_guid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundEvent>)))
  "Returns string type for a message object of type '<SoundEvent>"
  "mir_msgs/SoundEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundEvent)))
  "Returns string type for a message object of type 'SoundEvent"
  "mir_msgs/SoundEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundEvent>)))
  "Returns md5sum for a message object of type '<SoundEvent>"
  "b0a96432de1b262a2bc4de3c5e358086")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundEvent)))
  "Returns md5sum for a message object of type 'SoundEvent"
  "b0a96432de1b262a2bc4de3c5e358086")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundEvent>)))
  "Returns full string definition for message of type '<SoundEvent>"
  (cl:format cl:nil "time time_stamp~%string sound_guid~%string message~%~%uint8 START=0~%uint8 STOP =1~%uint8 MUTE=2~%uint8 UNMUTE=3~%uint8 PAUSE=4~%uint8 UNPAUSE=5~%uint8 FINISH=6~%uint8 MUTEABLE=7~%uint8 REQ_PLAY=10~%~%~%uint8 event~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundEvent)))
  "Returns full string definition for message of type 'SoundEvent"
  (cl:format cl:nil "time time_stamp~%string sound_guid~%string message~%~%uint8 START=0~%uint8 STOP =1~%uint8 MUTE=2~%uint8 UNMUTE=3~%uint8 PAUSE=4~%uint8 UNPAUSE=5~%uint8 FINISH=6~%uint8 MUTEABLE=7~%uint8 REQ_PLAY=10~%~%~%uint8 event~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundEvent>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'sound_guid))
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundEvent
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':sound_guid (sound_guid msg))
    (cl:cons ':message (message msg))
    (cl:cons ':event (event msg))
))
