(load "ex2_46_vect_operation.rkt")
(define (make-segment start end)
  (cons start end))

(define (start-segment seg)
  (car seg))

(define (end-segment seg)
  (cdr seg))

;(define seg (make-segment (make-vect 1 1) (make-vect 2 4)))

;(start-segment seg)

;(end-segment seg)