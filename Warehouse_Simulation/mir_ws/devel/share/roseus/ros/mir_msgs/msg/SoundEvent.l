;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::SoundEvent)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'SoundEvent (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::SOUNDEVENT")
  (make-package "MIR_MSGS::SOUNDEVENT"))

(in-package "ROS")
;;//! \htmlinclude SoundEvent.msg.html


(intern "*START*" (find-package "MIR_MSGS::SOUNDEVENT"))
(shadow '*START* (find-package "MIR_MSGS::SOUNDEVENT"))
(defconstant mir_msgs::SoundEvent::*START* 0)
(intern "*STOP*" (find-package "MIR_MSGS::SOUNDEVENT"))
(shadow '*STOP* (find-package "MIR_MSGS::SOUNDEVENT"))
(defconstant mir_msgs::SoundEvent::*STOP* 1)
(intern "*MUTE*" (find-package "MIR_MSGS::SOUNDEVENT"))
(shadow '*MUTE* (find-package "MIR_MSGS::SOUNDEVENT"))
(defconstant mir_msgs::SoundEvent::*MUTE* 2)
(intern "*UNMUTE*" (find-package "MIR_MSGS::SOUNDEVENT"))
(shadow '*UNMUTE* (find-package "MIR_MSGS::SOUNDEVENT"))
(defconstant mir_msgs::SoundEvent::*UNMUTE* 3)
(intern "*PAUSE*" (find-package "MIR_MSGS::SOUNDEVENT"))
(shadow '*PAUSE* (find-package "MIR_MSGS::SOUNDEVENT"))
(defconstant mir_msgs::SoundEvent::*PAUSE* 4)
(intern "*UNPAUSE*" (find-package "MIR_MSGS::SOUNDEVENT"))
(shadow '*UNPAUSE* (find-package "MIR_MSGS::SOUNDEVENT"))
(defconstant mir_msgs::SoundEvent::*UNPAUSE* 5)
(intern "*FINISH*" (find-package "MIR_MSGS::SOUNDEVENT"))
(shadow '*FINISH* (find-package "MIR_MSGS::SOUNDEVENT"))
(defconstant mir_msgs::SoundEvent::*FINISH* 6)
(intern "*MUTEABLE*" (find-package "MIR_MSGS::SOUNDEVENT"))
(shadow '*MUTEABLE* (find-package "MIR_MSGS::SOUNDEVENT"))
(defconstant mir_msgs::SoundEvent::*MUTEABLE* 7)
(intern "*REQ_PLAY*" (find-package "MIR_MSGS::SOUNDEVENT"))
(shadow '*REQ_PLAY* (find-package "MIR_MSGS::SOUNDEVENT"))
(defconstant mir_msgs::SoundEvent::*REQ_PLAY* 10)

(defun mir_msgs::SoundEvent-to-symbol (const)
  (cond
        ((= const 0) 'mir_msgs::SoundEvent::*START*)
        ((= const 1) 'mir_msgs::SoundEvent::*STOP*)
        ((= const 2) 'mir_msgs::SoundEvent::*MUTE*)
        ((= const 3) 'mir_msgs::SoundEvent::*UNMUTE*)
        ((= const 4) 'mir_msgs::SoundEvent::*PAUSE*)
        ((= const 5) 'mir_msgs::SoundEvent::*UNPAUSE*)
        ((= const 6) 'mir_msgs::SoundEvent::*FINISH*)
        ((= const 7) 'mir_msgs::SoundEvent::*MUTEABLE*)
        ((= const 10) 'mir_msgs::SoundEvent::*REQ_PLAY*)
        (t nil)))

(defclass mir_msgs::SoundEvent
  :super ros::object
  :slots (_time_stamp _sound_guid _message _event ))

(defmethod mir_msgs::SoundEvent
  (:init
   (&key
    ((:time_stamp __time_stamp) (instance ros::time :init))
    ((:sound_guid __sound_guid) "")
    ((:message __message) "")
    ((:event __event) 0)
    )
   (send-super :init)
   (setq _time_stamp __time_stamp)
   (setq _sound_guid (string __sound_guid))
   (setq _message (string __message))
   (setq _event (round __event))
   self)
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:sound_guid
   (&optional __sound_guid)
   (if __sound_guid (setq _sound_guid __sound_guid)) _sound_guid)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:event
   (&optional __event)
   (if __event (setq _event __event)) _event)
  (:serialization-length
   ()
   (+
    ;; time _time_stamp
    8
    ;; string _sound_guid
    4 (length _sound_guid)
    ;; string _message
    4 (length _message)
    ;; uint8 _event
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time_stamp
       (write-long (send _time_stamp :sec) s) (write-long (send _time_stamp :nsec) s)
     ;; string _sound_guid
       (write-long (length _sound_guid) s) (princ _sound_guid s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; uint8 _event
       (write-byte _event s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time_stamp
     (send _time_stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _sound_guid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sound_guid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _event
     (setq _event (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_msgs::SoundEvent :md5sum-) "b0a96432de1b262a2bc4de3c5e358086")
(setf (get mir_msgs::SoundEvent :datatype-) "mir_msgs/SoundEvent")
(setf (get mir_msgs::SoundEvent :definition-)
      "time time_stamp
string sound_guid
string message

uint8 START=0
uint8 STOP =1
uint8 MUTE=2
uint8 UNMUTE=3
uint8 PAUSE=4
uint8 UNPAUSE=5
uint8 FINISH=6
uint8 MUTEABLE=7
uint8 REQ_PLAY=10


uint8 event

")



(provide :mir_msgs/SoundEvent "b0a96432de1b262a2bc4de3c5e358086")


