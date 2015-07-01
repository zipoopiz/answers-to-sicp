(load "list_operation.rkt")
(define (my-map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) '() sequence))


(define (my-append seq1 seq2)
  (accumulate (lambda (x y) (cons x y)) seq2 seq1))

(define (my-length sequence)
  (accumulate (lambda (x y) (+ y 1)) 0 sequence))

(my-map (lambda (x) (* x x)) (list 1 2 3))

(my-append (list 1 2) (list 3 4))

(my-length (list 1 2 2 4))