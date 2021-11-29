;; Auto-generated. Do not edit!


(when (boundp 'my_service::roulette)
  (if (not (find-package "MY_SERVICE"))
    (make-package "MY_SERVICE"))
  (shadow 'roulette (find-package "MY_SERVICE")))
(unless (find-package "MY_SERVICE::ROULETTE")
  (make-package "MY_SERVICE::ROULETTE"))
(unless (find-package "MY_SERVICE::ROULETTEREQUEST")
  (make-package "MY_SERVICE::ROULETTEREQUEST"))
(unless (find-package "MY_SERVICE::ROULETTERESPONSE")
  (make-package "MY_SERVICE::ROULETTERESPONSE"))

(in-package "ROS")





(defclass my_service::rouletteRequest
  :super ros::object
  :slots (_number _color ))

(defmethod my_service::rouletteRequest
  (:init
   (&key
    ((:number __number) 0)
    ((:color __color) "")
    )
   (send-super :init)
   (setq _number (round __number))
   (setq _color (string __color))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:serialization-length
   ()
   (+
    ;; int32 _number
    4
    ;; string _color
    4 (length _color)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _number
       (write-long _number s)
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _number
     (setq _number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass my_service::rouletteResponse
  :super ros::object
  :slots (_result ))

(defmethod my_service::rouletteResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_service::roulette
  :super ros::object
  :slots ())

(setf (get my_service::roulette :md5sum-) "11369571d31538ac64222d058e8cc357")
(setf (get my_service::roulette :datatype-) "my_service/roulette")
(setf (get my_service::roulette :request) my_service::rouletteRequest)
(setf (get my_service::roulette :response) my_service::rouletteResponse)

(defmethod my_service::rouletteRequest
  (:response () (instance my_service::rouletteResponse :init)))

(setf (get my_service::rouletteRequest :md5sum-) "11369571d31538ac64222d058e8cc357")
(setf (get my_service::rouletteRequest :datatype-) "my_service/rouletteRequest")
(setf (get my_service::rouletteRequest :definition-)
      "int32 number
string color
---
bool result

")

(setf (get my_service::rouletteResponse :md5sum-) "11369571d31538ac64222d058e8cc357")
(setf (get my_service::rouletteResponse :datatype-) "my_service/rouletteResponse")
(setf (get my_service::rouletteResponse :definition-)
      "int32 number
string color
---
bool result

")



(provide :my_service/roulette "11369571d31538ac64222d058e8cc357")


