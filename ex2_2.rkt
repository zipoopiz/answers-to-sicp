(load "D:\\source_code\\sicp\\utils.rkt")

(define (make-seg start-point end-point)
  (cons start-point end-point))

(define (start-seg segment)
  (car segment))

(define (end-seg segment)
  (cdr segment))

(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

(define (midpoint-seg segment)
  (make-point (average (x-point (start-seg segment))
                       (x-point (end-seg segment)))
              (average (y-point (start-seg segment))
                       (y-point (end-seg segment)))))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

;(define p1 (make-point 3 4))
;(define p2 (make-point 5 6))
;(define seg (make-seg p1 p2))
;(print-point (midpoint-seg seg))