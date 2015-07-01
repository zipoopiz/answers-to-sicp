(load "ex2_36_accumulate_n.rkt")

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (map (lambda (w)
         (dot-product w v))
         m))

(define (transpose mat)
  (accumulate-n cons '() mat))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (row) 
           (map (lambda (col) (dot-product row col)) cols))
         m)))

(define v (list 1 2 3))
(define w (list 2 3 4))
(define m1 (list (list 1 2 3) (list 2 3 4)))
(define m2 (list (list 1 2) (list 3 4) (list 5 6)))
(dot-product v w)
(matrix-*-vector m1 v)
(transpose m1)
(matrix-*-matrix m1 m2)
(matrix-*-matrix m2 m1)