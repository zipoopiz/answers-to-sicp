(load "D:\\source_code\\sicp\\utils.rkt")
(define (double f)
  (lambda (x) (f (f x))))

((double inc) 1)

(((double (double double)) inc) 5)
(((double double) inc) 5)

