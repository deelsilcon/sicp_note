(#%require (lib "27.ss" "srfi"))


(define (square x) (* x x)) 
  
 (define (expmod base exp m) 
   (cond ((= exp 0) 1) 
         ((even? exp) 
          (remainder (square (expmod base (/ exp 2) m)) 
                     m)) 
         (else 
          (remainder (* base (expmod base (- exp 1) m)) 
                     m))))         
  
(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))
  
 (define (fast-prime? n times) 
   (cond ((= times 0) true) 
         ((fermat-test n) (fast-prime? n (- times 1))) 
         (else false))) 
  
 (define (prime? n) 
   (fast-prime? n 50)) 
  
 (define (timed-prime-test n) 
   (start-prime-test n (runtime))) 
  
 (define (start-prime-test n start-time) 
   (if (prime? n) 
       (report-prime n (- (runtime) start-time)))) 
  
 (define (report-prime n elapsed-time) 
   (newline) 
   (display n) 
   (display " *** ") 
   (display elapsed-time))

 ; See comments in exercise 1.22 
 (newline) 
 (timed-prime-test 1000000007) 
 (timed-prime-test 1000000009) 
 (timed-prime-test 1000000021) 
 (timed-prime-test 10000000019) 
 (timed-prime-test 10000000033) 
 (timed-prime-test 10000000061) 
 (timed-prime-test 100000000003) 
 (timed-prime-test 100000000019) 
 (timed-prime-test 100000000057) 
 (timed-prime-test 1000000000039) 
 (timed-prime-test 1000000000061) 
 (timed-prime-test 1000000000063) 
  