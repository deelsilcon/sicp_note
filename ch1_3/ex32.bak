#lang sicp
;;;recursive process
(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (id a)
  a)

(define (mult a b)
  (* a b))
(define (inc a)
  (+ a 1))
(define nv 1)

;;;iterative process
(define (accumulate-i combiner null-value term a next b)
  (define (iter a res)
    (if (> a b)
        res
        (iter (next a) (combiner res (term a)))))
  (iter a null-value))

;;;test
(accumulate mult nv id 1 inc 4)
(accumulate-i mult nv id 1 inc 4)
      
