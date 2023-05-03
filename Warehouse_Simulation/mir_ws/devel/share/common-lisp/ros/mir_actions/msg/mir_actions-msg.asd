
(cl:in-package :asdf)

(defsystem "mir_actions-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MirMoveBaseAction" :depends-on ("_package_MirMoveBaseAction"))
    (:file "_package_MirMoveBaseAction" :depends-on ("_package"))
    (:file "MirMoveBaseActionFeedback" :depends-on ("_package_MirMoveBaseActionFeedback"))
    (:file "_package_MirMoveBaseActionFeedback" :depends-on ("_package"))
    (:file "MirMoveBaseActionGoal" :depends-on ("_package_MirMoveBaseActionGoal"))
    (:file "_package_MirMoveBaseActionGoal" :depends-on ("_package"))
    (:file "MirMoveBaseActionResult" :depends-on ("_package_MirMoveBaseActionResult"))
    (:file "_package_MirMoveBaseActionResult" :depends-on ("_package"))
    (:file "MirMoveBaseFeedback" :depends-on ("_package_MirMoveBaseFeedback"))
    (:file "_package_MirMoveBaseFeedback" :depends-on ("_package"))
    (:file "MirMoveBaseGoal" :depends-on ("_package_MirMoveBaseGoal"))
    (:file "_package_MirMoveBaseGoal" :depends-on ("_package"))
    (:file "MirMoveBaseResult" :depends-on ("_package_MirMoveBaseResult"))
    (:file "_package_MirMoveBaseResult" :depends-on ("_package"))
  ))