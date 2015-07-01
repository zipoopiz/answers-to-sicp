
(load "D:\\source_code\\sicp\\ex2_8.rkt")

(define (half x)
  (/ x 2))

(define (interval-width i)
  (half (- (upper-bound i) (lower-bound i))))

(= (interval-width (add-interval i1 i2)) (+ (interval-width i1) (interval-width i2)))

(= (interval-width (sub-interval i1 i2)) (+ (interval-width i1) (interval-width i2)))

(not (= (interval-width (mul-interval i1 i2)) (* (interval-width i1) (interval-width i2))))

(not (= (interval-width (div-interval i1 i2)) (/ (interval-width i1) (interval-width i2))))