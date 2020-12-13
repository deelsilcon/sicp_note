#lang sicp
(define (cube x)
  (* x x x))
(define (simp f a b n)
  (define h (/ (- b a) n))
  (define (iter f a b h n sum)
    (cond ((= n 0) (/ (* h (+ sum (f a))) 3.0))
          (even? (iter f a b h (- n 1) (* 2.0 (f (+ a (* n h))))))
          (else (iter f a b h (- n 1) (* 4.0 (f (+ a (* n h))))))))
  (iter f a b h n 0))  

(simp cube 0 1 100)