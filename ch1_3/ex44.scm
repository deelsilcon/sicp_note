#lang sicp
(define dx 0.00001) 
  
(define (smooth f) 
  (lambda (x) 
    (/ (+ (f (- x dx)) 
          (f x) 
          (f (+ x dx))) 
       3)))
(define (compose f g)
  (lambda (x)
    (f (g x))))

(define (repeated f n)
  (define (iter i res)
    (if (= i n) res
          (iter (+ 1 i) (compose f res))))
  (iter 0 identity))
  
(define (n-fold-smooth f n) 
  ((repeated smooth n) f)) 