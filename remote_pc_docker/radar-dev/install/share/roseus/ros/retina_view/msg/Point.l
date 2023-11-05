;; Auto-generated. Do not edit!


(when (boundp 'retina_view::Point)
  (if (not (find-package "RETINA_VIEW"))
    (make-package "RETINA_VIEW"))
  (shadow 'Point (find-package "RETINA_VIEW")))
(unless (find-package "RETINA_VIEW::POINT")
  (make-package "RETINA_VIEW::POINT"))

(in-package "ROS")
;;//! \htmlinclude Point.msg.html


(defclass retina_view::Point
  :super ros::object
  :slots (_x _y _z _doppler _cluster _power _track ))

(defmethod retina_view::Point
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:doppler __doppler) 0.0)
    ((:cluster __cluster) 0)
    ((:power __power) 0)
    ((:track __track) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _doppler (float __doppler))
   (setq _cluster (round __cluster))
   (setq _power (round __power))
   (setq _track (round __track))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:doppler
   (&optional __doppler)
   (if __doppler (setq _doppler __doppler)) _doppler)
  (:cluster
   (&optional __cluster)
   (if __cluster (setq _cluster __cluster)) _cluster)
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:track
   (&optional __track)
   (if __track (setq _track __track)) _track)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _doppler
    4
    ;; uint32 _cluster
    4
    ;; uint32 _power
    4
    ;; uint8 _track
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _doppler
       (sys::poke _doppler (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _cluster
       (write-long _cluster s)
     ;; uint32 _power
       (write-long _power s)
     ;; uint8 _track
       (write-byte _track s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _doppler
     (setq _doppler (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _cluster
     (setq _cluster (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _power
     (setq _power (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _track
     (setq _track (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get retina_view::Point :md5sum-) "3e40ec70d104bb5b08bfb46fbc12725d")
(setf (get retina_view::Point :datatype-) "retina_view/Point")
(setf (get retina_view::Point :definition-)
      "float32 x
float32 y
float32 z
float32 doppler
uint32 cluster
uint32 power
uint8 track

")



(provide :retina_view/Point "3e40ec70d104bb5b08bfb46fbc12725d")


