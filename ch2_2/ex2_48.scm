#lang sicp
;vector from ex2.46
(define (make-vect x y)
  (cons x y))
(define (xcor-vect vector)
  (car vector))
(define (ycor-vect vector)
  (cdr vector))
(define (add-vect v1 v2)
  (cons (+ (xcor-vect v1) (xcor-vect v2)) (+ (ycor-vect v1) (ycor-vect v2))))
(define (sub-vect v1 v2)
  (cons (- (xcor-vect v1) (xcor-vect v2)) (- (ycor-vect v1) (ycor-vect v2))))
(define (scale v s)
  (cons (* (xcor-vect v) s) (* (ycor-vect v) s)))

;
(define (make-segment start end)
  (cons (make-vect 0 start) (make-vect 0 end)))

(define (start-segment line)
  (car line))
(define (end-segment line)
  (cdr line))