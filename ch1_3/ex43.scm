#lang sicp
(define (compose f g)
  (lambda (x)
    (f (g x))))

(define (repeated f n)
  (define (iter i res)
    (if (= i n) res
          (iter (+ 1 i) (compose f res))))
  (iter 0 identity))

(define (square x)
  (* x x))

((repeated square 2) 5) 
          