
(cl:in-package :asdf)

(defsystem "my_service-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "roulette" :depends-on ("_package_roulette"))
    (:file "_package_roulette" :depends-on ("_package"))
  ))