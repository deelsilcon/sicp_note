#lang sicp
(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))

(define (cube a)
  (* a a a))
(define (inc a)
  (+ a 1))

(sum cube 1 inc 4) 