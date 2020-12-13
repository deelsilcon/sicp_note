#lang sicp
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (inc n) (+ n 1))

(define (sum-cubes a b)
  (sum cube a inc b))

(define (sum-integers a b)
  (sum identity a inc b))

(define (cube a)
  (* a a a))

(define (identity x) x)

(sum-cubes 1 10)
(sum-integers 1 10)