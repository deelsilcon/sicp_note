#lang sicp
;;;These two processes are both iterative
(define (+ a b)
  (if (= a 0) b (inc (+ (dec a) b))))
(define (s+ a b)
  (if (= a 0) b (+ (dec a) (inc b))))

(+ 4 5)
(s+ 4 5)