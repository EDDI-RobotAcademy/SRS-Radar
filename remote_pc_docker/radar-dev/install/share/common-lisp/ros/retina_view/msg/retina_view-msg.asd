
(cl:in-package :asdf)

(defsystem "retina_view-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MsgRadarPoint" :depends-on ("_package_MsgRadarPoint"))
    (:file "_package_MsgRadarPoint" :depends-on ("_package"))
    (:file "Point" :depends-on ("_package_Point"))
    (:file "_package_Point" :depends-on ("_package"))
    (:file "Track" :depends-on ("_package_Track"))
    (:file "_package_Track" :depends-on ("_package"))
  ))