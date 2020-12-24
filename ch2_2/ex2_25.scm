#lang sicp
(define (t1 ls)
  (car (cdr (car (cdr (cdr ls))))))
(t1 (list 1 3 (list 5 7) 9))

(define (t2 ls)
  (car (car ls)))
(t2 (list (list 7)))

(define (t3 ls)
  (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr ls)))))))))))))
(t3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))