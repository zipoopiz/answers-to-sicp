(load "D:\\source_code\\sicp\\utils.rkt")

(define golden-ratio 
  (fixed-point (lambda (x) (+ 1 (/ 1 x)))
               1.0))
golden-ratio