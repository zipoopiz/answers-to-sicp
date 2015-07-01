(load "D:\\source_code\\sicp\\utils.rkt")
(load "D:\\source_code\\sicp\\ex1_42.rkt")

;(define (repeated f n)
;  (lambda (v)
;    (define (iter y result)
;      (if (= y 1)
;          (f result)
;          (iter (- y 1) (f result))))
;    (iter n v)))

(define (repeated f n)
  (if (= n 1)
      f
      (compose f (repeated f (- n 1)))))

;((repeated square 2) 5)
;((repeated inc 5) 5)