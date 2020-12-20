#lang sicp
(define (for-each process ls)
  (cond ((null? ls)
      #t)
      (else (process (car ls))
      (for-each process (cdr ls)))))

;test
(for-each (lambda (x) (newline) (display x))
          (list 57 321 88))