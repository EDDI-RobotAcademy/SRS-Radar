;; Auto-generated. Do not edit!


(when (boundp 'retina_view::MsgRadarPoint)
  (if (not (find-package "RETINA_VIEW"))
    (make-package "RETINA_VIEW"))
  (shadow 'MsgRadarPoint (find-package "RETINA_VIEW")))
(unless (find-package "RETINA_VIEW::MSGRADARPOINT")
  (make-package "RETINA_VIEW::MSGRADARPOINT"))

(in-package "ROS")
;;//! \htmlinclude MsgRadarPoint.msg.html


(defclass retina_view::MsgRadarPoint
  :super ros::object
  :slots (_position _nTargets _points _frame_counter _time_stamp _track_count _track_info ))

(defmethod retina_view::MsgRadarPoint
  (:init
   (&key
    ((:position __position) 0)
    ((:nTargets __nTargets) 0)
    ((:points __points) (let (r) (dotimes (i 0) (push (instance retina_view::Point :init) r)) r))
    ((:frame_counter __frame_counter) 0)
    ((:time_stamp __time_stamp) (make-array 0 :initial-element 0 :element-type :integer))
    ((:track_count __track_count) 0)
    ((:track_info __track_info) (let (r) (dotimes (i 0) (push (instance retina_view::Track :init) r)) r))
    )
   (send-super :init)
   (setq _position (round __position))
   (setq _nTargets (round __nTargets))
   (setq _points __points)
   (setq _frame_counter (round __frame_counter))
   (setq _time_stamp __time_stamp)
   (setq _track_count (round __track_count))
   (setq _track_info __track_info)
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:nTargets
   (&optional __nTargets)
   (if __nTargets (setq _nTargets __nTargets)) _nTargets)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:frame_counter
   (&optional __frame_counter)
   (if __frame_counter (setq _frame_counter __frame_counter)) _frame_counter)
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:track_count
   (&optional __track_count)
   (if __track_count (setq _track_count __track_count)) _track_count)
  (:track_info
   (&rest __track_info)
   (if (keywordp (car __track_info))
       (send* _track_info __track_info)
     (progn
       (if __track_info (setq _track_info (car __track_info)))
       _track_info)))
  (:serialization-length
   ()
   (+
    ;; int32 _position
    4
    ;; int32 _nTargets
    4
    ;; retina_view/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; int32 _frame_counter
    4
    ;; uint32[] _time_stamp
    (* 4    (length _time_stamp)) 4
    ;; int32 _track_count
    4
    ;; retina_view/Track[] _track_info
    (apply #'+ (send-all _track_info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _position
       (write-long _position s)
     ;; int32 _nTargets
       (write-long _nTargets s)
     ;; retina_view/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; int32 _frame_counter
       (write-long _frame_counter s)
     ;; uint32[] _time_stamp
     (write-long (length _time_stamp) s)
     (dotimes (i (length _time_stamp))
       (write-long (elt _time_stamp i) s)
       )
     ;; int32 _track_count
       (write-long _track_count s)
     ;; retina_view/Track[] _track_info
     (write-long (length _track_info) s)
     (dolist (elem _track_info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _position
     (setq _position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _nTargets
     (setq _nTargets (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; retina_view/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance retina_view::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _frame_counter
     (setq _frame_counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _time_stamp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time_stamp (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _time_stamp i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _track_count
     (setq _track_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; retina_view/Track[] _track_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _track_info (let (r) (dotimes (i n) (push (instance retina_view::Track :init) r)) r))
     (dolist (elem- _track_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get retina_view::MsgRadarPoint :md5sum-) "0685e74f492716fb2f47330fdc4c28a0")
(setf (get retina_view::MsgRadarPoint :datatype-) "retina_view/MsgRadarPoint")
(setf (get retina_view::MsgRadarPoint :definition-)
      "int32 position
int32 nTargets
Point[] points
int32 frame_counter
uint32[] time_stamp
int32 track_count  
Track[] track_info

================================================================================
MSG: retina_view/Point
float32 x
float32 y
float32 z
float32 doppler
uint32 cluster
uint32 power
uint8 track

================================================================================
MSG: retina_view/Track
int8 trackcount
float32 x
float32 y

")



(provide :retina_view/MsgRadarPoint "0685e74f492716fb2f47330fdc4c28a0")


