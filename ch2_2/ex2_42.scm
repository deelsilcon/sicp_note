#lang sicp
;helper procedure
(define (flatmap proc seq) 
  (accumulate append nil (map proc seq)))
(define (accumulate op initial seq) 
  (if (null? seq) 
      initial 
      (op (car seq)
          (accumulate op initial (cdr seq)))))
(define (enumerate-interval low high) 
  (if (> low high) 
      nil 
      (cons low (enumerate-interval (+ low 1) high))))
(define (filter predicate seq)
  (cond ((null? seq) nil)
        ((predicate (car seq))
         (cons (car seq)
               (filter predicate (cdr seq))))
        (else (filter predicate (cdr seq)))))

(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (pos) (safe? k pos))
         (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))

(define empty-board nil) 
(define (adjoin-position new-row k rest-of-queens)
  (cons (list new-row k) rest-of-queens))

;find the pair (i,k);
(define (queen-in-col-k k pos)
  (cond ((null? pos) nil)
        ((= (cadar pos) k)
         (car pos))
        (else (queen-in-col-k k (cdr pos)))))
;find the pairs sequence (i, j) where j != k;
(define (queen-not-in-col-k k pos)
  (cond ((null? pos) nil)
        ((= (cadar pos) k)
         (cdr pos))
        (else (cons (car pos)
                    (queen-not-in-col-k k (cdr pos))))))

;check same row || main-diagonal || sub-diagonal, 
(define (safe? k position)
  (let ((qk (queen-in-col-k k position))
        (nqk (queen-not-in-col-k k position)))
    (null? (filter (lambda (x)
                     (or (= ( car x) (car qk))
                         (= (- (car x) (cadr x))
                            (- (car qk) (cadr qk)))
                         (= (+ (car x) (cadr x))
                            (+ (car qk) (cadr qk)))))
           nqk))))
        
        
;test 
(queens 4)