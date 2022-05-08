#!/usr/bin/sbcl --script

(defun new_alist ()
  '())

(defun add_key_val(alist k v)
  (cons `(,k ,v) alist))

(defun my_assoc(alist k)
  (if alist
    (if (equal (car (car alist)) k)
      (car alist)
      (my_assoc (cdr alist) k))
    NIL))

;;
;; TEST
;; 
(print "start")
(print (setq al (new_alist)))
(print (add_key_val al "k1" "v1"))
(print (add_key_val (add_key_val al "k2" "v2") "k1" "v1"))
(setq al2 (add_key_val (add_key_val al "k2" "v2") "k1" "v1"))
(print (my_assoc al2 "k1"))
(print "end")
