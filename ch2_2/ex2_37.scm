#lang sicp
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))
(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      nil
      (cons (accumulate op init (map car seqs))
            (accumulate-n op init (map cdr seqs)))))
(define (dot-product v1 v2) 
   (accumulate + 0 (map * v1 v2)))
(dot-product (list 1 2 3) (list 4 5 6)) 

(define matrix (list (list 1 2 3 4) (list 5 6 7 8) (list 9 10 11 12))) 


;a
(define (matrix-*-vector m v)
  (map (lambda (rowm) (dot-product rowm v)) m))

(matrix-*-vector matrix (list 2 3 4 5))

;b
(define (transpose m)
  (accumulate-n cons nil m))

(transpose matrix)

;c
(define (matrix-*-matrix m n) 
   (let ((n-cols (transpose n)))
     (map (lambda (m-row) (matrix-*-vector n-cols m-row)) 
          m)))

(matrix-*-matrix matrix (list (list 1 1) (list 1 1) (list 1 2) (list 1 2))) 