#lang sicp
(define tolerance 0.00001)
(define (iterative-improve good-enough? improve) 
  (lambda (guess) 
    (if (good-enough? guess) 
        guess 
        ((iterative-improve good-enough? improve) (improve guess))))) 
  
 
(define (close-enough? v1 v2) 
  (< (abs (- v1 v2)) tolerance)) 
  
(define (fixed-point f first-guess) 
  ((iterative-improve 
    (lambda (x) (close-enough? x (f x))) 
    f) 
   first-guess)) 


(define (square x)
  (x * x))

(define (average a b)
  (/ (+ a b) 2))
(define (sqrt x) 
  ((iterative-improve 
    (lambda (y) 
      (< (abs (- (square y) x)) 
         0.0001)) 
    (lambda (y) 
      (average y (/ x y)))) 
   1.0)) 
  