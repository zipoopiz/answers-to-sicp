(load "utils.rkt")
(load "ex1_43.rkt")

; (define (fourth-root x)
;   (fixed-point (average-damp 
;                 (average-damp (lambda (y) (/ x (expt y 3)))))
;                1.0))
 
; (fourth-root 81)
 
 (define (n-th-root x n)
   (fixed-point ((repeated average-damp n) (lambda (y) (/ x (expt y (- n 1))))) 1.0))
 
 (n-th-root 65526 16)
