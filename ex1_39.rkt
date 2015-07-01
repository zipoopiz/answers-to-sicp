(load "D:\\source_code\\sicp\\ex1_37.rkt")

(define (tan-cf x k)
  (cont-frac (lambda (i) 
               (if (= i 1)
                   x
                   (- (* x x))))
             (lambda (i) (- (* 2 i) 1))
             k))

(tan-cf (/ 3.1415926 4) 100)