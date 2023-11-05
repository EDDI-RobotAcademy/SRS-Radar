;; Auto-generated. Do not edit!


(when (boundp 'retina_view::Track)
  (if (not (find-package "RETINA_VIEW"))
    (make-package "RETINA_VIEW"))
  (shadow 'Track (find-package "RETINA_VIEW")))
(unless (find-package "RETINA_VIEW::TRACK")
  (make-package "RETINA_VIEW::TRACK"))

(in-package "ROS")
;;//! \htmlinclude Track.msg.html


(defclass retina_view::Track
  :super ros::object
  :slots (_trackcount _x _y ))

(defmethod retina_view::Track
  (:init
   (&key
    ((:trackcount __trackcount) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _trackcount (round __trackcount))
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:trackcount
   (&optional __trackcount)
   (if __trackcount (setq _trackcount __trackcount)) _trackcount)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int8 _trackcount
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _trackcount
       (write-byte _trackcount s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _trackcount
     (setq _trackcount (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _trackcount 127) (setq _trackcount (- _trackcount 256)))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get retina_view::Track :md5sum-) "f96e8039087b026ff930b0cd4e3c11fe")
(setf (get retina_view::Track :datatype-) "retina_view/Track")
(setf (get retina_view::Track :definition-)
      "int8 trackcount
float32 x
float32 y

")



(provide :retina_view/Track "f96e8039087b026ff930b0cd4e3c11fe")


