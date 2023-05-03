
(cl:in-package :asdf)

(defsystem "dwb_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :dwb_msgs-msg
               :geometry_msgs-msg
               :nav_2d_msgs-msg
)
  :components ((:file "_package")
    (:file "DebugLocalPlan" :depends-on ("_package_DebugLocalPlan"))
    (:file "_package_DebugLocalPlan" :depends-on ("_package"))
    (:file "GenerateTrajectory" :depends-on ("_package_GenerateTrajectory"))
    (:file "_package_GenerateTrajectory" :depends-on ("_package"))
    (:file "GenerateTwists" :depends-on ("_package_GenerateTwists"))
    (:file "_package_GenerateTwists" :depends-on ("_package"))
    (:file "GetCriticScore" :depends-on ("_package_GetCriticScore"))
    (:file "_package_GetCriticScore" :depends-on ("_package"))
    (:file "ScoreTrajectory" :depends-on ("_package_ScoreTrajectory"))
    (:file "_package_ScoreTrajectory" :depends-on ("_package"))
  ))