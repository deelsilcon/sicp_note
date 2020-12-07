#lang sicp
(define (max-of-two a b)
  (if (> b a) b a))
(define (square a)
(* a a))
(define (solution a b c)
  (if (= (max-of-two a b) (max-of-two b c))
      (+ (square(max-of-two a b)) (square(max-of-two a c)))
      (+ (square(max-of-two a b)) (square(max-of-two b c)))))
(max-of-two 4 3) ;test MAX(a,b) procedure
(square 3); test Sqr(a) procedure
;test the final result
(solution 1 2 3);
(solution 1 3 2);
(solution 3 2 1);