#lang sicp
(define (same-parity fst . rest)
  (define (iter ls parity res)
    (if (null? ls)
        res
        (iter (cdr ls) parity
              (if (= (remainder (car ls) 2) parity)
                  (append res (list (car ls)))
                  res))))
  (iter rest (remainder fst 2) (list fst)))
;much quicker solution using reverse in ex2.18

(define (reverse ls)
  (define (iter it res)
    (if (null? it)
        res
        (iter (cdr it) (cons (car it) res))))
  (iter ls nil))

(define (same-parity-quick fst . rest)
  (define (iter ls parity res)
    (if (null? ls)
        (reverse res)
        (iter (cdr ls) parity
              (if (= (remainder (car ls) 2) parity)
                  (cons (car ls) res)
                  res))))
  (iter rest (remainder fst 2) (list fst)))

(same-parity 1 2 3 4 5 6 7)
(same-parity-quick 1 2 3 4 5 6 7)