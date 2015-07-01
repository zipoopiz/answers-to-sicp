(load "D:\\source_code\\sicp\\utils.rkt")

(define (cubic a b c)
  (lambda (x)
    (+ (cube x) (* a (square x)) (* b x) c)))

(newtons-method (cubic -4 4 0) 1)