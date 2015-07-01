(load "ex1_37.rkt")

(cont-frac (lambda (i) 1)
           (lambda (i) 
             (let ((x (+ (/ (- i 2) 3) 1)))
               (if (= (remainder (- i 2) 3) 0)
                   (* 2 x)
                   1)))
           100)
