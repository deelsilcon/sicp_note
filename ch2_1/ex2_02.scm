#lang sicp
;point
(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))
(define (print-point p) 
  (newline) 
  (display "(") 
  (display (x-point p)) 
  (display ",") 
  (display (y-point p)) 
  (display ")")) 

;segment
(define (make-segment src dest)
  (cons src dest))
(define (start-segment src)
  (car src))
(define (end-segment dest)
  (cdr dest))
(define (midpoint-seg seg)
  (define (average a b) (/ (+ a b) 2.0))
  (let ((a (start-segment seg))
        (b (end-segment seg)))
    (make-point (average (x-point a)
                         (x-point b))
                (average (y-point a)
                         (y-point b)))))




;test
(print-point (midpoint-seg (make-segment (make-point 2 4)
                                         (make-point 1 5))))