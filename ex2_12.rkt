(load "D:\\source_code\\sicp\\ex2_8.rkt")

(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))
(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))
(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2))

(define (make-center-percent c p)
  (let ((tolerance (* c p)))
    (make-interval (- c tolerance)
                   (+ c tolerance))))

(define (percent i)
  (let ((c (center i))
        (hi (upper-bound i)))
    (/ (- hi c) c)))

(define i3 (make-center-percent 5 0.05)) 
;(print-interval i3)
;(newline)
;(percent i3)