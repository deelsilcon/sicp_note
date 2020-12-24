#lang sicp

(define (filter predicate seq)
  (cond ((null? seq) nil)
        ((predicate (car seq))
         (cons (car seq)
               (filter predicate (cdr seq))))
        (else (filter predicate (cdr seq)))))

(define (accumulate op initial seq) 
  (if (null? seq) 
      initial 
      (op (car seq)
          (accumulate op initial (cdr seq)))))
(define (tuples n k)
  (cond ((< n k) nil)
        ((= k 0) (list nil))
        (else (append (tuples (- n 1) k)
                   (map (lambda (t) (cons n t))
                        (tuples (- n 1) (- k 1)))))))

(define (sum-of-three n s)
  (filter (lambda (seq) (= (accumulate + 0 seq) s))
          (tuples n 3)))
;test
(tuples 5 2)
(sum-of-three 20 35)
  
  