
(cl:in-package :asdf)

(defsystem "dwb_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_2d_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CriticScore" :depends-on ("_package_CriticScore"))
    (:file "_package_CriticScore" :depends-on ("_package"))
    (:file "LocalPlanEvaluation" :depends-on ("_package_LocalPlanEvaluation"))
    (:file "_package_LocalPlanEvaluation" :depends-on ("_package"))
    (:file "Trajectory2D" :depends-on ("_package_Trajectory2D"))
    (:file "_package_Trajectory2D" :depends-on ("_package"))
    (:file "TrajectoryScore" :depends-on ("_package_TrajectoryScore"))
    (:file "_package_TrajectoryScore" :depends-on ("_package"))
  ))