
(cl:in-package :asdf)

(defsystem "nav_2d_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SwitchPlugin" :depends-on ("_package_SwitchPlugin"))
    (:file "_package_SwitchPlugin" :depends-on ("_package"))
  ))