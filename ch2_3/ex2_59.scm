#lang sicp
(define (element-of-set? x set)
  (cond ((null? set) false)
        ((equal? x  (car set)) true)
        (else (element-of-set? x (cdr set)))))

(define (union-set set1 set2)
  (if (null? set1) set2
        (union-set (cdr set1)
                   (if (element-of-set? (car set1) set2) set2 (cons (car set1) set2)))))

;test
(define s1 '(1 2 3 4))
(define s2 '(1 3 5))
(union-set s1 s2)