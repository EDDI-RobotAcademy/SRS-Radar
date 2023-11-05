; Auto-generated. Do not edit!


(cl:in-package retina_view-msg)


;//! \htmlinclude MsgRadarPoint.msg.html

(cl:defclass <MsgRadarPoint> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:integer
    :initform 0)
   (nTargets
    :reader nTargets
    :initarg :nTargets
    :type cl:integer
    :initform 0)
   (points
    :reader points
    :initarg :points
    :type (cl:vector retina_view-msg:Point)
   :initform (cl:make-array 0 :element-type 'retina_view-msg:Point :initial-element (cl:make-instance 'retina_view-msg:Point)))
   (frame_counter
    :reader frame_counter
    :initarg :frame_counter
    :type cl:integer
    :initform 0)
   (time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (track_count
    :reader track_count
    :initarg :track_count
    :type cl:integer
    :initform 0)
   (track_info
    :reader track_info
    :initarg :track_info
    :type (cl:vector retina_view-msg:Track)
   :initform (cl:make-array 0 :element-type 'retina_view-msg:Track :initial-element (cl:make-instance 'retina_view-msg:Track))))
)

(cl:defclass MsgRadarPoint (<MsgRadarPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MsgRadarPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MsgRadarPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name retina_view-msg:<MsgRadarPoint> is deprecated: use retina_view-msg:MsgRadarPoint instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <MsgRadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader retina_view-msg:position-val is deprecated.  Use retina_view-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'nTargets-val :lambda-list '(m))
(cl:defmethod nTargets-val ((m <MsgRadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader retina_view-msg:nTargets-val is deprecated.  Use retina_view-msg:nTargets instead.")
  (nTargets m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <MsgRadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader retina_view-msg:points-val is deprecated.  Use retina_view-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'frame_counter-val :lambda-list '(m))
(cl:defmethod frame_counter-val ((m <MsgRadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader retina_view-msg:frame_counter-val is deprecated.  Use retina_view-msg:frame_counter instead.")
  (frame_counter m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <MsgRadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader retina_view-msg:time_stamp-val is deprecated.  Use retina_view-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'track_count-val :lambda-list '(m))
(cl:defmethod track_count-val ((m <MsgRadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader retina_view-msg:track_count-val is deprecated.  Use retina_view-msg:track_count instead.")
  (track_count m))

(cl:ensure-generic-function 'track_info-val :lambda-list '(m))
(cl:defmethod track_info-val ((m <MsgRadarPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader retina_view-msg:track_info-val is deprecated.  Use retina_view-msg:track_info instead.")
  (track_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MsgRadarPoint>) ostream)
  "Serializes a message object of type '<MsgRadarPoint>"
  (cl:let* ((signed (cl:slot-value msg 'position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'nTargets)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:let* ((signed (cl:slot-value msg 'frame_counter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'time_stamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'time_stamp))
  (cl:let* ((signed (cl:slot-value msg 'track_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'track_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'track_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MsgRadarPoint>) istream)
  "Deserializes a message object of type '<MsgRadarPoint>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nTargets) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'retina_view-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_counter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'time_stamp) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'time_stamp)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'track_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'track_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'track_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'retina_view-msg:Track))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MsgRadarPoint>)))
  "Returns string type for a message object of type '<MsgRadarPoint>"
  "retina_view/MsgRadarPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MsgRadarPoint)))
  "Returns string type for a message object of type 'MsgRadarPoint"
  "retina_view/MsgRadarPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MsgRadarPoint>)))
  "Returns md5sum for a message object of type '<MsgRadarPoint>"
  "0685e74f492716fb2f47330fdc4c28a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MsgRadarPoint)))
  "Returns md5sum for a message object of type 'MsgRadarPoint"
  "0685e74f492716fb2f47330fdc4c28a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MsgRadarPoint>)))
  "Returns full string definition for message of type '<MsgRadarPoint>"
  (cl:format cl:nil "int32 position~%int32 nTargets~%Point[] points~%int32 frame_counter~%uint32[] time_stamp~%int32 track_count  ~%Track[] track_info~%~%================================================================================~%MSG: retina_view/Point~%float32 x~%float32 y~%float32 z~%float32 doppler~%uint32 cluster~%uint32 power~%uint8 track~%~%================================================================================~%MSG: retina_view/Track~%int8 trackcount~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MsgRadarPoint)))
  "Returns full string definition for message of type 'MsgRadarPoint"
  (cl:format cl:nil "int32 position~%int32 nTargets~%Point[] points~%int32 frame_counter~%uint32[] time_stamp~%int32 track_count  ~%Track[] track_info~%~%================================================================================~%MSG: retina_view/Point~%float32 x~%float32 y~%float32 z~%float32 doppler~%uint32 cluster~%uint32 power~%uint8 track~%~%================================================================================~%MSG: retina_view/Track~%int8 trackcount~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MsgRadarPoint>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'time_stamp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'track_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MsgRadarPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'MsgRadarPoint
    (cl:cons ':position (position msg))
    (cl:cons ':nTargets (nTargets msg))
    (cl:cons ':points (points msg))
    (cl:cons ':frame_counter (frame_counter msg))
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':track_count (track_count msg))
    (cl:cons ':track_info (track_info msg))
))
