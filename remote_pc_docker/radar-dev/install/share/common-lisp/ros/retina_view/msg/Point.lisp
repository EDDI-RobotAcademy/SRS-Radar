; Auto-generated. Do not edit!


(cl:in-package retina_view-msg)


;//! \htmlinclude Point.msg.html

(cl:defclass <Point> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (doppler
    :reader doppler
    :initarg :doppler
    :type cl:float
    :initform 0.0)
   (cluster
    :reader cluster
    :initarg :cluster
    :type cl:integer
    :initform 0)
   (power
    :reader power
    :initarg :power
    :type cl:integer
    :initform 0)
   (track
    :reader track
    :initarg :track
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Point (<Point>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Point>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Point)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name retina_view-msg:<Point> is deprecated: use retina_view-msg:Point instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader retina_view-msg:x-val is deprecated.  Use retina_view-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader retina_view-msg:y-val is deprecated.  Use retina_view-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader retina_view-msg:z-val is deprecated.  Use retina_view-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'doppler-val :lambda-list '(m))
(cl:defmethod doppler-val ((m <Point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader retina_view-msg:doppler-val is deprecated.  Use retina_view-msg:doppler instead.")
  (doppler m))

(cl:ensure-generic-function 'cluster-val :lambda-list '(m))
(cl:defmethod cluster-val ((m <Point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader retina_view-msg:cluster-val is deprecated.  Use retina_view-msg:cluster instead.")
  (cluster m))

(cl:ensure-generic-function 'power-val :lambda-list '(m))
(cl:defmethod power-val ((m <Point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader retina_view-msg:power-val is deprecated.  Use retina_view-msg:power instead.")
  (power m))

(cl:ensure-generic-function 'track-val :lambda-list '(m))
(cl:defmethod track-val ((m <Point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader retina_view-msg:track-val is deprecated.  Use retina_view-msg:track instead.")
  (track m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Point>) ostream)
  "Serializes a message object of type '<Point>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'doppler))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cluster)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cluster)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cluster)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cluster)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Point>) istream)
  "Deserializes a message object of type '<Point>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'doppler) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cluster)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cluster)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cluster)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cluster)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Point>)))
  "Returns string type for a message object of type '<Point>"
  "retina_view/Point")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Point)))
  "Returns string type for a message object of type 'Point"
  "retina_view/Point")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Point>)))
  "Returns md5sum for a message object of type '<Point>"
  "3e40ec70d104bb5b08bfb46fbc12725d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Point)))
  "Returns md5sum for a message object of type 'Point"
  "3e40ec70d104bb5b08bfb46fbc12725d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Point>)))
  "Returns full string definition for message of type '<Point>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 doppler~%uint32 cluster~%uint32 power~%uint8 track~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Point)))
  "Returns full string definition for message of type 'Point"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 doppler~%uint32 cluster~%uint32 power~%uint8 track~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Point>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Point>))
  "Converts a ROS message object to a list"
  (cl:list 'Point
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':doppler (doppler msg))
    (cl:cons ':cluster (cluster msg))
    (cl:cons ':power (power msg))
    (cl:cons ':track (track msg))
))
