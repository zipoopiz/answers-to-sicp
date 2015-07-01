(load "D:\\source_code\\sicp\\list_operation.rkt")
(define (permutations s)
  (if (null? s) ; empty set?
      (list '()) ; sequence containing empty set
      (flatmap (lambda (x)
                 (map (lambda (p) (cons x p))
                      (permutations (remove x s))))
               s)))

(define (remove item sequence)
  (filter (lambda (x) (not (= x item)))
          sequence))