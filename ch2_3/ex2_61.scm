#lang sicp
(define (adjoin-set x set)
  (cond ((or (null? set) (< x (car set)) (cons x set)))
        ((= x (car set)) set)
        (else (cons (car set) (adjoin-set x (cdr set))))))
