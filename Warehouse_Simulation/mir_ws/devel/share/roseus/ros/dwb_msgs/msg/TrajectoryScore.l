;; Auto-generated. Do not edit!


(when (boundp 'dwb_msgs::TrajectoryScore)
  (if (not (find-package "DWB_MSGS"))
    (make-package "DWB_MSGS"))
  (shadow 'TrajectoryScore (find-package "DWB_MSGS")))
(unless (find-package "DWB_MSGS::TRAJECTORYSCORE")
  (make-package "DWB_MSGS::TRAJECTORYSCORE"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryScore.msg.html


(defclass dwb_msgs::TrajectoryScore
  :super ros::object
  :slots (_traj _scores _total ))

(defmethod dwb_msgs::TrajectoryScore
  (:init
   (&key
    ((:traj __traj) (instance dwb_msgs::Trajectory2D :init))
    ((:scores __scores) ())
    ((:total __total) 0.0)
    )
   (send-super :init)
   (setq _traj __traj)
   (setq _scores __scores)
   (setq _total (float __total))
   self)
  (:traj
   (&rest __traj)
   (if (keywordp (car __traj))
       (send* _traj __traj)
     (progn
       (if __traj (setq _traj (car __traj)))
       _traj)))
  (:scores
   (&rest __scores)
   (if (keywordp (car __scores))
       (send* _scores __scores)
     (progn
       (if __scores (setq _scores (car __scores)))
       _scores)))
  (:total
   (&optional __total)
   (if __total (setq _total __total)) _total)
  (:serialization-length
   ()
   (+
    ;; dwb_msgs/Trajectory2D _traj
    (send _traj :serialization-length)
    ;; dwb_msgs/CriticScore[] _scores
    (apply #'+ (send-all _scores :serialization-length)) 4
    ;; float32 _total
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dwb_msgs/Trajectory2D _traj
       (send _traj :serialize s)
     ;; dwb_msgs/CriticScore[] _scores
     (write-long (length _scores) s)
     (dolist (elem _scores)
       (send elem :serialize s)
       )
     ;; float32 _total
       (sys::poke _total (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dwb_msgs/Trajectory2D _traj
     (send _traj :deserialize buf ptr-) (incf ptr- (send _traj :serialization-length))
   ;; dwb_msgs/CriticScore[] _scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scores (let (r) (dotimes (i n) (push (instance dwb_msgs::CriticScore :init) r)) r))
     (dolist (elem- _scores)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _total
     (setq _total (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dwb_msgs::TrajectoryScore :md5sum-) "3d0da50e88d25d1140ba21d539b60c4b")
(setf (get dwb_msgs::TrajectoryScore :datatype-) "dwb_msgs/TrajectoryScore")
(setf (get dwb_msgs::TrajectoryScore :definition-)
      "# Complete scoring for a given twist.

# The trajectory being scored
Trajectory2D traj
# The Scores for each of the critics employed
CriticScore[] scores
# Convenience member that totals the critic scores
float32 total

================================================================================
MSG: dwb_msgs/Trajectory2D
# For a given velocity command, the poses that the robot will go to in the allotted time.

# Input Velocity
nav_2d_msgs/Twist2D velocity

# Poses the robot will go to, given our kinematic model
geometry_msgs/Pose2D[] poses

# Time difference between the current pose and the poses in the trajectory.
# Parallel array to poses. Length should be the same.
duration[] time_offsets

================================================================================
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: dwb_msgs/CriticScore
# The result from one critic scoring a Twist.
# Name of the critic
string name
# Score for the critic, not multiplied by the scale
float32 raw_score
# Scale for the critic, multiplied by the raw_score and added to the total score
float32 scale

")



(provide :dwb_msgs/TrajectoryScore "3d0da50e88d25d1140ba21d539b60c4b")


