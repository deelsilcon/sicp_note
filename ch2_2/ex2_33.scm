#lang sicp
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

;a.
(define (my-map p sequence)
  (accumulate (lambda (fs rest)
                (cons (p fs) rest)) nil sequence))
;test
(define (square x)
  (* x x))
(my-map square (list)) 
(my-map square (list 1 2 3 4))

;b.
(define (my-append seq1 seq2)
  (accumulate cons seq2 seq1));be careful of the given order of the parameter

;test
(my-append (list) (list 1 2 3 4))
(my-append (list 9 3) (list 1 2 3 4))

;c.
(define (my-length seq) 
  (accumulate (lambda (x y) (+ 1 y)) 0 seq))

;test
(my-length (list 1 2 3 (list 4 5))) 