#lang sicp
(define (make-frame origin edge1 edge2)
  (list origin edge1 edge2))

(define (frame-org frame)
  (car frame))
(define (frame-e1 frame)
  (cadr frame))
(define (frame-e2 frame)
  (caddr frame))

;test
(define frm (make-frame 1 2 3))
(frame-org frm)
(frame-e1 frm)
(frame-e2 frm)
;The second one is almost the same.