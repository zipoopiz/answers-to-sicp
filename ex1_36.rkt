(load "D:\\source_code\\sicp\\utils.rkt")

(fixed-point (lambda (x) (/ (log 1000) (log x))) 2.0)
(newline)
(fixed-point (lambda (x) (average x (/ (log 1000) (log x)))) 2.0)

