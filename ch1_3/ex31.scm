#lang sicp
;;;iterative process
(define (product term a next b)
  (define (iter a res)
    (if (> a b)
        res
        (iter (next a) (* res (term a)))))
  (iter a 1))
;;;recursive process
(define (product-r term a next b)
  (if (> a b)
      1
      (* (term a) (product-r term (next a) next b))))


(define (pi-term n)
  (if (even? n)
      (/ (+ n 2) (+ n 1))
      (/ (+ n 1) (+ n 2))))
;;;test

(define (cube a)
  (* a a a))
(define (inc a)
  (+ a 1))

(product cube 1 inc 3)
(product-r cube 1 inc 3)

;;;test formula
(* 4 (product pi-term 1 inc 1000))