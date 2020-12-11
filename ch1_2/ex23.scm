#lang sicp
(define (square x) (* x x)) 
  
(define (smallest-divisor n) 
  (find-divisor n 2)) 
  
(define (find-divisor n test-divisor)
  (define (next n)
    (if (= n 2) 3 (+ n 2)))
  (cond ((> (square test-divisor) n) n) 
        ((divides? test-divisor n) test-divisor) 
        (else (find-divisor n (next test-divisor))))) 
  
(define (divides? a b) 
  (= (remainder b a) 0)) 
  
(define (prime? n) 
  (= n (smallest-divisor n)))

;;; procedure for printing
  
(define (timed-prime-test n) 
  (start-prime-test n (runtime))) 
  
(define (start-prime-test n start-time) 
  (if (prime? n) 
      (report-prime n (- (runtime) start-time))))

(define (report-prime n elapsed-time)
  (newline)
  (display n)
  (display "***")
  (display elapsed-time))

(define (search-for-primes lo hi)
  (define (iter n)
    (cond ((<= n hi) (timed-prime-test n) (iter (+ n 2)))))
  (iter (if (odd? lo) lo (+ lo 1))))
;;; Use the result from ex22
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
;1000000007***997
;1000000009***997
;1000000021***2032
;10000000019***4006
;10000000033***3976
;10000000061***4003
;100000000003***13955
;100000000019***11967
;100000000057***13960
;1000000000039***41898
;1000000000061***42878
;1000000000063***85791

;;;Almost 1.5 times as fast but not twice as fast. This is because we add a new 'if' branch.