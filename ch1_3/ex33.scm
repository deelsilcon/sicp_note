#lang sicp
(define (filter combiner null-value term a next b prd)
  (if (> a b)
      null-value
      (if (prd a b);;to test problem a,change this to (prd a)
      (combiner (term a) (filter combiner null-value term (next a) next b prd))
      (combiner null-value (filter combiner null-value term (next a) next b prd)))))

;;;prime? helper fuction
(define (smallest-divisor n) (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
  ((divides?  test-divisor n) test-divisor)
  (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b)(= (remainder b a) 0))
(define (square s)
  (* s s))

(define (prime? n)
  (if (= n 1)
      false
  (= n (smallest-divisor n))))
;a.Get sum of 2 3 5 7

(define (id a)
  a)
(define (add a b)
  (+ a b))
(define (inc a)
  (+ a 1))
(define nv 0)
;(filter add nv id 1 inc 8 prime?)

;b.Product of 1 3 7 9
(define (gcd m n) 
  (cond ((< m n) (gcd n m)) 
        ((= n 0) m) 
        (else (gcd n (remainder m n))))) 
  
(define (relative-prime? m n) 
 (= (gcd m n) 1)) 
(define (mult a b)
  (* a b))
(define nv2 1)
(filter mult nv2 id 1 inc 10 relative-prime?)
