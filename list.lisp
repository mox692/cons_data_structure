#!/usr/bin/sbcl --script

(defun new_list()
  '())

(defun my_car(l)
  (car l))

(defun my_cdr(l)
  (cdr l))

(defun unshift(l e)
  (cons e l))

(defun my_push(l e)
  (if l
    (cons (car l) (my_push (cdr l) e))
    (cons e nil)))

;;
;; TEST
;;
(print "start")
(print (setq l (new_list)))
(print (unshift l 1))
(print (unshift (unshift l 2) 1))
(print (setq l2 (unshift (unshift l 2) 1)))
(print (my_push l2 3))
(print "end")

