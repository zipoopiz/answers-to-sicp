(load "ex1_43.rkt")

(define (smooth f)
  (define dx 0.00001)
  (lambda (x)
    (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

(define (n-fold-smooth f n)
  (repeated (smooth f) n))

((n-fold-smooth square 2) 5)