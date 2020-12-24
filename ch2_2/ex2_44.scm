#lang sicp 
(#%require sicp-pict)

(define (split dirc sub-dirc)
  (lambda (painter n)
    (if (= n 0)
        painter
        (let ((smaller ((split dirc sub-dirc) painter (- n 1))))
          (dirc painter (sub-dirc smaller smaller))))))

;test
(define right-split (split beside below))
(define up-split (split below beside))

(paint (right-split einstein 3))
(paint (up-split einstein 3))