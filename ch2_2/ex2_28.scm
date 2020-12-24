#lang sicp
;recursive process
(define (fringe t)
  (cond ((null? t) nil)
        ((pair? t)
         (append (fringe (car t)) (fringe (cdr t))))
        (else (list t))))

(define my-tree (list 1 (list 2 (list 3 4) (list 5 6)) (list 7 (list 8))))
(fringe my-tree)