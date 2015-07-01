(load "ex2_7.rkt")
(define (sub-interval x y)
  (add-interval 
   x
   (make-interval (- (lower-bound y)) (- (upper-bound y)))))

;(print-interval (sub-interval i1 i2))