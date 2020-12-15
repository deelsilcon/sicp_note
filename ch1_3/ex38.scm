#lang sicp
(define (cont-frac n d k)
  (define (frac i)
    (/ (n i)
       (+ (d i)
          (if (= i k)
              0
              (frac (+ 1 i))))))
  (frac 1))
(define (e-euler k) 
  (+ 2.0 (cont-frac (lambda (i) 1) 
                    (lambda (i) 
                      (if (= (remainder i 3) 2) 
                          (/ (+ i 1) 1.5) 
                          1)) 
                    k)))

(e-euler 100)