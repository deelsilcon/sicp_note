#lang sicp
(define (double x)
  (* x 2))
(define (half x)
  (/ x 2))

(define (mult-it a b)
  (iter a b 0))

(define (iter a b res)
  (cond ((= b 0) res)
        ((even? b) (iter(double a) (half b) res))
        (else (iter a (- b 1) (+ res a)))))

;;;test
(mult-it 3 4)
(mult-it 1 1)
(mult-it 2 10)