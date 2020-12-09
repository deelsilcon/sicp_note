#lang sicp
(define (even? n)
  (= (remainder n 2) 0))

(define (iter s a N)
  (cond ((= N 1) (* s a))
        ((even? N) (iter (* s s) a (/ N 2)))
        (else (iter s (* a s) (- N 1)))))

(define (fast-expo-it b n)
  (iter b 1 n))
;;;test this iterative procedure

(fast-expo-it 3 6)