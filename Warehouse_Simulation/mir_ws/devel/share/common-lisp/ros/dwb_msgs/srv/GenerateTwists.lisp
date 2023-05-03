; Auto-generated. Do not edit!


(cl:in-package dwb_msgs-srv)


;//! \htmlinclude GenerateTwists-request.msg.html

(cl:defclass <GenerateTwists-request> (roslisp-msg-protocol:ros-message)
  ((current_vel
    :reader current_vel
    :initarg :current_vel
    :type nav_2d_msgs-msg:Twist2D
    :initform (cl:make-instance 'nav_2d_msgs-msg:Twist2D)))
)

(cl:defclass GenerateTwists-request (<GenerateTwists-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateTwists-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateTwists-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwb_msgs-srv:<GenerateTwists-request> is deprecated: use dwb_msgs-srv:GenerateTwists-request instead.")))

(cl:ensure-generic-function 'current_vel-val :lambda-list '(m))
(cl:defmethod current_vel-val ((m <GenerateTwists-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:current_vel-val is deprecated.  Use dwb_msgs-srv:current_vel instead.")
  (current_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateTwists-request>) ostream)
  "Serializes a message object of type '<GenerateTwists-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateTwists-request>) istream)
  "Deserializes a message object of type '<GenerateTwists-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_vel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateTwists-request>)))
  "Returns string type for a service object of type '<GenerateTwists-request>"
  "dwb_msgs/GenerateTwistsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateTwists-request)))
  "Returns string type for a service object of type 'GenerateTwists-request"
  "dwb_msgs/GenerateTwistsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateTwists-request>)))
  "Returns md5sum for a message object of type '<GenerateTwists-request>"
  "01d3946b46f84a3da34b725f25f3768a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateTwists-request)))
  "Returns md5sum for a message object of type 'GenerateTwists-request"
  "01d3946b46f84a3da34b725f25f3768a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateTwists-request>)))
  "Returns full string definition for message of type '<GenerateTwists-request>"
  (cl:format cl:nil "# For a given velocity, generate which twist commands will be evaluated~%nav_2d_msgs/Twist2D current_vel~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateTwists-request)))
  "Returns full string definition for message of type 'GenerateTwists-request"
  (cl:format cl:nil "# For a given velocity, generate which twist commands will be evaluated~%nav_2d_msgs/Twist2D current_vel~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateTwists-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateTwists-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateTwists-request
    (cl:cons ':current_vel (current_vel msg))
))
;//! \htmlinclude GenerateTwists-response.msg.html

(cl:defclass <GenerateTwists-response> (roslisp-msg-protocol:ros-message)
  ((twists
    :reader twists
    :initarg :twists
    :type (cl:vector nav_2d_msgs-msg:Twist2D)
   :initform (cl:make-array 0 :element-type 'nav_2d_msgs-msg:Twist2D :initial-element (cl:make-instance 'nav_2d_msgs-msg:Twist2D))))
)

(cl:defclass GenerateTwists-response (<GenerateTwists-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateTwists-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateTwists-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwb_msgs-srv:<GenerateTwists-response> is deprecated: use dwb_msgs-srv:GenerateTwists-response instead.")))

(cl:ensure-generic-function 'twists-val :lambda-list '(m))
(cl:defmethod twists-val ((m <GenerateTwists-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:twists-val is deprecated.  Use dwb_msgs-srv:twists instead.")
  (twists m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateTwists-response>) ostream)
  "Serializes a message object of type '<GenerateTwists-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'twists))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'twists))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateTwists-response>) istream)
  "Deserializes a message object of type '<GenerateTwists-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'twists) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'twists)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'nav_2d_msgs-msg:Twist2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateTwists-response>)))
  "Returns string type for a service object of type '<GenerateTwists-response>"
  "dwb_msgs/GenerateTwistsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateTwists-response)))
  "Returns string type for a service object of type 'GenerateTwists-response"
  "dwb_msgs/GenerateTwistsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateTwists-response>)))
  "Returns md5sum for a message object of type '<GenerateTwists-response>"
  "01d3946b46f84a3da34b725f25f3768a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateTwists-response)))
  "Returns md5sum for a message object of type 'GenerateTwists-response"
  "01d3946b46f84a3da34b725f25f3768a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateTwists-response>)))
  "Returns full string definition for message of type '<GenerateTwists-response>"
  (cl:format cl:nil "nav_2d_msgs/Twist2D[] twists~%~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateTwists-response)))
  "Returns full string definition for message of type 'GenerateTwists-response"
  (cl:format cl:nil "nav_2d_msgs/Twist2D[] twists~%~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateTwists-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'twists) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateTwists-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateTwists-response
    (cl:cons ':twists (twists msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GenerateTwists)))
  'GenerateTwists-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GenerateTwists)))
  'GenerateTwists-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateTwists)))
  "Returns string type for a service object of type '<GenerateTwists>"
  "dwb_msgs/GenerateTwists")