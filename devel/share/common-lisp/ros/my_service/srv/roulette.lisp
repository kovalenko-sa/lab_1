; Auto-generated. Do not edit!


(cl:in-package my_service-srv)


;//! \htmlinclude roulette-request.msg.html

(cl:defclass <roulette-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:integer
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type cl:string
    :initform ""))
)

(cl:defclass roulette-request (<roulette-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <roulette-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'roulette-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_service-srv:<roulette-request> is deprecated: use my_service-srv:roulette-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <roulette-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_service-srv:number-val is deprecated.  Use my_service-srv:number instead.")
  (number m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <roulette-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_service-srv:color-val is deprecated.  Use my_service-srv:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <roulette-request>) ostream)
  "Serializes a message object of type '<roulette-request>"
  (cl:let* ((signed (cl:slot-value msg 'number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <roulette-request>) istream)
  "Deserializes a message object of type '<roulette-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<roulette-request>)))
  "Returns string type for a service object of type '<roulette-request>"
  "my_service/rouletteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'roulette-request)))
  "Returns string type for a service object of type 'roulette-request"
  "my_service/rouletteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<roulette-request>)))
  "Returns md5sum for a message object of type '<roulette-request>"
  "11369571d31538ac64222d058e8cc357")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'roulette-request)))
  "Returns md5sum for a message object of type 'roulette-request"
  "11369571d31538ac64222d058e8cc357")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<roulette-request>)))
  "Returns full string definition for message of type '<roulette-request>"
  (cl:format cl:nil "int32 number~%string color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'roulette-request)))
  "Returns full string definition for message of type 'roulette-request"
  (cl:format cl:nil "int32 number~%string color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <roulette-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <roulette-request>))
  "Converts a ROS message object to a list"
  (cl:list 'roulette-request
    (cl:cons ':number (number msg))
    (cl:cons ':color (color msg))
))
;//! \htmlinclude roulette-response.msg.html

(cl:defclass <roulette-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass roulette-response (<roulette-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <roulette-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'roulette-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_service-srv:<roulette-response> is deprecated: use my_service-srv:roulette-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <roulette-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_service-srv:result-val is deprecated.  Use my_service-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <roulette-response>) ostream)
  "Serializes a message object of type '<roulette-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <roulette-response>) istream)
  "Deserializes a message object of type '<roulette-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<roulette-response>)))
  "Returns string type for a service object of type '<roulette-response>"
  "my_service/rouletteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'roulette-response)))
  "Returns string type for a service object of type 'roulette-response"
  "my_service/rouletteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<roulette-response>)))
  "Returns md5sum for a message object of type '<roulette-response>"
  "11369571d31538ac64222d058e8cc357")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'roulette-response)))
  "Returns md5sum for a message object of type 'roulette-response"
  "11369571d31538ac64222d058e8cc357")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<roulette-response>)))
  "Returns full string definition for message of type '<roulette-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'roulette-response)))
  "Returns full string definition for message of type 'roulette-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <roulette-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <roulette-response>))
  "Converts a ROS message object to a list"
  (cl:list 'roulette-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'roulette)))
  'roulette-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'roulette)))
  'roulette-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'roulette)))
  "Returns string type for a service object of type '<roulette>"
  "my_service/roulette")