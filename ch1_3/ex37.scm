#lang sicp
;recursive process
(define (cont-frac n d k)
  (define (frac i)
    (/ (n i)
       (+ (d i)
          (if (= i k)
              0
              (frac (+ 1 i))))))
  (frac 1))
;iterative process
(define (cont-frac-i n d k)
  (define (iter i res)
    (if (= i 0)
        res
        (iter (- i 1) (/ (n i) (+ (d i) res)))))
  (iter k 0.0))
;test
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           100)
(cont-frac-i (lambda (i) 1.0)
           (lambda (i) 1.0)
           100)