(load "D:\\source_code\\sicp\\utils.rkt")

(define (compose f g)
  (lambda (x)
    (f (g x))))

;((compose square inc) 6)