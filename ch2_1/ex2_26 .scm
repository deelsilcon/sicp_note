#lang sicp
(define x (list 1 2 3))
(define y (list 4 5 6))
(append x y)
(cons x y);Note that (cons a (list b c d)) is the same as (list a b c d).
(list x y)