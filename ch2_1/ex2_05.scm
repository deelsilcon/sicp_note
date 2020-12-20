#lang sicp

(define (exp base n)
  (define (iter i res)
    (if (= i n)
        res
        (iter (+ i 1) (* res base))))
  (iter 0 1))

;test exp
(exp 11 2)
(exp 2 1)
(exp 2 11)

(define (get-exp n d)
  (define (iter t)
    (if (= 0 (remainder n (exp d t)))
        (iter (+ t 1))
        (- t 1)))
  (iter 1))

;test get exp
(get-exp 2048 2)

(define (my-cons a b) (* (exp 2 a) (exp 3 b))) 
(define (my-car z) (get-exp z 2)) 
(define (my-cdr z) (get-exp z 3))

(define a (my-cons 11 2))
(my-car a)
(my-cdr a)
          