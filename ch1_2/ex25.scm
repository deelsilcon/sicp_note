#lang sicp
;The modified version of expmod computes huge intermediate results.
;Arithmetic operations on large numbers could be expensive.

 ; Helper procedures 
 (define (fast-expt b n) 
   (cond ((= n 0) 1) 
         ((even? n) (square (fast-expt b (/ n 2)))) 
         (else (* b (fast-expt b (- n 1)))))) 
 (define (square x) (* x x)) 
 (define (report-elapsed-time start-time) 
   (display " *** ") 
   (display (- (runtime) start-time))) 
  
 ; The original & modified procedures 
 (define (expmod base exp m) 
   (cond ((= exp 0) 1) 
         ((even? exp) 
           (remainder 
             (square (expmod base (/ exp 2) m)) ; (1) 
             m)) 
         (else 
           (remainder 
             (* base (expmod base (- exp 1) m)) 
             m)))) 
  
 (define (modified-expmod base exp m) 
   (remainder (fast-expt base exp) m)) 
  
 ; Test the speed 
 (define start-time (runtime)) 
 (expmod 999999 1000000 1000000) 
 (report-elapsed-time start-time) 
  
 (define start-time2 (runtime)) 
 (modified-expmod 999999 1000000 1000000) 
 (report-elapsed-time start-time2)

; *** 9981
; *** 1332866
;Solution From: http://community.schemewiki.org/?sicp-ex-1.25