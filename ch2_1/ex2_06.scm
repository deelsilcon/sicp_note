#lang sicp
(define one (lambda (f) (lambda (x) (f x)))) 
(define two (lambda (f) (lambda (x) (f (f x)))))
(define (add a b) 
  (lambda (f) 
    (lambda (x) 
      ((a f) ((b f) x))))) 

;test
(define (square a)
  (* a a))

((one square) 2)
((two square) 2)
(((add one two) square) 2)