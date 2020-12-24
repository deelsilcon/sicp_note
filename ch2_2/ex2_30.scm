#lang sicp
(define (square-tree t)
  (cond ((null? t) nil)
        ((not (pair? t)) (* t t))
        (else (cons (square-tree (car t))
                    (square-tree (cdr t))))))

(define (square-tree-2 t) 
  (map (lambda (sub-tree) 
         (if (pair? sub-tree) 
           (square-tree-2 sub-tree) 
           (square sub-tree))) 
       t)) 
(define (square x)
  (* x x))
;test
(define my-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))
(square-tree my-tree)
(square-tree-2 my-tree)
       