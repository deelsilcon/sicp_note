#lang sicp
(define (cons x y)
  (lambda (m) (m x y)))
(define (car z)
  (z (lambda (p q) p)))
(define (cdr z)
  (z (lambda (p q) q)))

;test
(car (cons 1 2))
(cdr (cons 2 3))