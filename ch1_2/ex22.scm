#lang sicp
(define (square x) (* x x)) 
  
(define (smallest-divisor n) 
  (find-divisor n 2)) 
  
(define (find-divisor n test-divisor) 
  (cond ((> (square test-divisor) n) n) 
        ((divides? test-divisor n) test-divisor) 
        (else (find-divisor n (+ test-divisor 1))))) 
  
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

;1000000007***976
;1000000009***1995
;1000000021***1959
;10000000019***6026
;10000000033***5984
;10000000061***6028
;100000000003***20989
;100000000019***16954
;100000000057***17952
;1000000000039***62876
;1000000000061***64824
;1000000000063***67824

(define (search-for-primes lo hi)
  (define (iter n)
    (cond ((<= n hi) (timed-prime-test n) (iter (+ n 2)))))
  (iter (if (odd? lo) lo (+ lo 1))))

 (search-for-primes 1000000000 1000000021)       ; 1e9 
 (search-for-primes 10000000000 10000000061)     ; 1e10 
 (search-for-primes 100000000000 100000000057)   ; 1e11 
 (search-for-primes 1000000000000 1000000000063) ; 1e12

;;;Increasing the test size by factor of 10, the time it takes roughly increase by factor of 3.
;;;It matches the prediction.