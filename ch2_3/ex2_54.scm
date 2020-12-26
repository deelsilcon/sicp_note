#lang sicp
(define (equal? list1 list2) 
  (cond ((and (not (pair? list1)) (not (pair? list2))) 
         (eq? list1 list2)) 
        ((and (pair? list1) (pair? list2)) 
         (and (equal? (car list1) (car list2)) (equal? (cdr list1) (cdr list2)))) 
        (else false)))

;test
(equal? '(a b c (e f g)) '(a b c (e f g)))
(equal? '(a b c (e f g)) '(a b c e f g))
