#lang sicp
(define (recur-f n)
  (if (< n 3)
      n
      (+ (recur-f (- n 1)) (* 2 (recur-f (- n 2))) (* 3 (recur-f (- n 3))))))
;;;test recursive process
(recur-f 5)
(recur-f 2)

(define (f-iter a b c i n)
  (if (> i n)
      c
  (if (< i 3)
      (f-iter b c i (+ 1 i) n)
      (f-iter b c (+ (* 3 a) (* 2 b) c) (+ 1 i) n))))

(define (iter-f n)
  (f-iter 0 0 0 1 n))
;;;test iterative process
(iter-f 5)
(iter-f 2)