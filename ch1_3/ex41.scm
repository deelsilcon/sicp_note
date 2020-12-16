#lang sicp
(define (double f)
  (lambda (x) (f(f x))))
(define (inc x)
  (+ 1 x))
((double inc) 5)

(((double (double double)) inc) 5)
;;;ans is 21;