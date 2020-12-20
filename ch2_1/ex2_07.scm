#lang sicp
(define (add-interval x y)
  (make-interval (+ (lb x) (lb y))
                 (+ (ub x) (ub y))))

(define (sub-interval x y)
  (make-interval (- (lb x) (ub y))
                 (- (ub x) (lb y))))

(define (mul-interval x y)
  (let ((p1 (* (lb x) (lb y)))
        (p2 (* (lb x) (ub y)))
        (p3 (* (ub x) (lb y)))
        (p4 (* (ub x) (ub y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define (div-interval x y)
  (mul-interval
   x
   (make-interval (/ 1.0 (ub y))
                  (/ 1.0 (lb y)))))

(define (make-interval a b)
  (cons a b))

(define (ub interval) (max (car interval) (cdr interval))) 
(define (lb interval) (min (car interval) (cdr interval)))
(define (print-interval name i) 
  (newline) 
  (display name) 
  (display ": [") 
  (display (lb i)) 
  (display ",") 
  (display (ub i)) 
  (display "]")) 

(define (div-interval-check x y) 
  (if (>= 0 (* (lb y) (ub y))) ;sicp
      (error "Division error (interval spans 0)" y) 
      (mul-interval x  
                    (make-interval (/ 1. (ub y)) 
                                   (/ 1. (lb y)))))) 

(define i (make-interval 2 7)) 
(define span-0 (make-interval -1 1)) 
(print-interval "i/span-0" (div-interval-check i span-0)) 
        
    