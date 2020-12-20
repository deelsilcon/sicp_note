#lang sicp

(define (reverse ls)
  (define (iter it res)
    (if (null? it)
        res
        (iter (cdr it) (cons (car it) res))))
  (iter ls nil))
(define tst (list 1 2 3 4))
tst
(reverse tst)