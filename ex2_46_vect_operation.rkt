(define (make-vect x y)
  (cons x y))

(define (xcol-vect v)
  (car v))

(define (ycol-vect v)
  (cdr v))

(define (add-vect v1 v2)
  (make-vect (+ (xcol-vect v1)
                (xcol-vect v2))
             (+ (ycol-vect v1)
                (ycol-vect v2))))

(define (sub-vect v1 v2)
  (make-vect (- (xcol-vect v1)
                (xcol-vect v2))
             (- (ycol-vect v1)
                (ycol-vect v2))))

(define (scale-vect multiplier v)
  (make-vect (* multiplier (xcol-vect v))
             (* multiplier (ycol-vect v))))

(define v1 (make-vect 1 2))
(define v2 (make-vect -1 3))

;(add-vect v1 v2)
;(sub-vect v1 v2)
;(scale-vect 3 v1)