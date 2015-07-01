(load "utils.rkt")
(define (tree-map func tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (func tree))
        (else (cons (tree-map func (car tree))
                    (tree-map func (cdr tree))))))

(define (square-tree tree) (tree-map square tree))

(square-tree
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))