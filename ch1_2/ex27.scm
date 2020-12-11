#lang sicp
(define (expmod base exp m) 
   (cond ((= exp 0) 1) 
         ((even? exp) 
          (remainder 
           (square (expmod base (/ exp 2) m)) 
           m)) 
         (else 
          (remainder 
           (* base (expmod base (- exp 1) m)) 
           m)))) 
  
(define (square x) (* x x))

(define (carnum-test n)
  (define (iter a n)
    (cond ((or (= n 1) (= n 0)) false)
          ((= a n) true)
          ((not (= (expmod a n n) (remainder a n))) false)
          (else (iter (+ a 1) n))))
     (iter 1 n))

(carnum-test 561) 
(carnum-test 1105) 
(carnum-test 1729) 
(carnum-test 2465) 
(carnum-test 2821) 
(carnum-test 6601) 