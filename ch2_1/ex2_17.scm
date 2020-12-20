#lang sicp
(define (last-pair ls)
  (let ((ptr (cdr ls)))
    (if (null? ptr)
        ls
        (last-pair ptr))))

;test
(last-pair (list 23 72 149 34))