;; methods to manipulate interval
(define (add-interval x y)
(make-interval (+ (lower-bound x) (lower-bound y))
(+ (upper-bound x) (upper-bound y))))

(define (mul-interval x y)
(let ((p1 (* (lower-bound x) (lower-bound y)))
      (p2 (* (lower-bound x) (upper-bound y)))
(p3 (* (upper-bound x) (lower-bound y)))
(p4 (* (upper-bound x) (upper-bound y))))
(make-interval (min p1 p2 p3 p4)
(max p1 p2 p3 p4))))

(define (div-interval x y)
(mul-interval
x
(make-interval (/ 1.0 (upper-bound y))
(/ 1.0 (lower-bound y)))))

(define (print-interval i)
  (newline)
  (display "[")
  (display (lower-bound i))
  (display ", ")
  (display (upper-bound i))
  (display "]"))

;;interval construction and selectors
(define (make-interval x y)
  (cons x y))

(define (upper-bound i)
  (max (car i) (cdr i)))

(define (lower-bound i)
  (min (car i) (cdr i)))



(define i1 (make-interval 3 5))
(define i2 (make-interval -1 6))
;(print-interval (add-interval i1 i2))
;(print-interval (mul-interval i1 i2))
;(print-interval (div-interval i1 i2))
