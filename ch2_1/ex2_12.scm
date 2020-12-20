#lang sicp
(define (make-interval a b)
  (cons a b))

(define (ub interval) (max (car interval) (cdr interval))) 
(define (lb interval) (min (car interval) (cdr interval)))

(define (make-center-percent ct to)
  (make-interval (- ct to) (+ ct to)))

(define (center interval)
  (/ (+ (ub interval) (lb interval) 2.0)))

(define (percent interval)
  (- (ub interval) (center interval)))
        