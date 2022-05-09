#!/usr/bin/sbcl --script 

(defun new_double_linked_list()
  ;; (next val) (prev val)
  '((NIL NIL) (NIL NIL)))

(defun set_val(dl e)
  ;; TODO: もっと単純にできそう
  (append (list (cons (car (car dl)) `(,e))) (list (cons (car (car (cdr dl))) `(,e)))))

;;
;; TEST
;;
(print (new_double_linked_list))
(print (set_val (new_double_linked_list) 55))
