#lang sicp
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))
(define (horner-eval x cof-seq)
  (accumulate (lambda (this-cof higher-terms)(+ (* higher-terms x) this-cof))
              0
              cof-seq))
;test
(horner-eval 2 (list 1 3 0 5 0 1))