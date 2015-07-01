(load "D:\\source_code\\sicp\\ex2_7.rkt")
(define (error reason . args)
      (display "Error: ")
      (display reason)
      (for-each (lambda (arg) 
                  (display " ")
    	  (write arg))
    	args)
      (newline)
      (scheme-report-environment -1))  ;; we hope that this will signal an error

(define (div-interval2 x y) 
   (if (>= 0 (* (lower-bound y) (upper-bound y))) 
       (error "Division error (interval spans 0)" y) 
       (mul-interval x  
                     (make-interval (/ 1. (upper-bound y)) 
                                    (/ 1. (lower-bound y)))))) 
(print-interval (div-interval2 i1 i2))