#lang sicp
(define (deep-reverse t) 
   (if (pair? t) 
       (reverse (map deep-reverse t)) 
       t))
(define x (list (list 1 2) (list 3 4)))
(deep-reverse x)
