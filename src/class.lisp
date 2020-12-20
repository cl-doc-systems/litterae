(defpackage #:example/class
  (:use #:cl)
  (:export
   #:name
   #:user
   #:last-login-at
   #:email
   #:admin))
(in-package example/class)


(defclass user ()
  ((name :reader name
         :type string
         :initarg :name
         :documentation "A full username.")
   (email :reader email
          :type string
          :initarg :email
          :documentation "Correct email address.")
   (last-login-at :accessor last-login-at))
  (:documentation "All users in the system have this class.

Last login slot is updated automatically."))


(defclass admin (user)
  ()
  (:documentation "Admins should have additional priveleges."))


(defgeneric is-admin (user)
  (:documentation "Returns t if user can modify the system."))


(defmethod is-admin ((user user))
  nil)


(defmethod is-admin ((user admin))
  t)
