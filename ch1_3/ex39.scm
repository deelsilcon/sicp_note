#lang sicp
(define (cont-frac n d k)
  (define (frac i)
    (/ (n i)
       (+ (d i)
          (if (= i k)
              0
              (frac (+ 1 i))))))
  (frac 1))
(define (tan-cf x k)
  (cont-frac (lambda (num) (if (= num 1)
                                x
                                (- (* x x))));careful, use -x^2 here
             (lambda (num) (- (* num 2) 1))
              k))

(tan-cf 1.0 1000)