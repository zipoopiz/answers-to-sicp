(define (fringe tree)
    (cond ((null? tree) '())
          ((not (pair? tree)) (list tree))
          (else (append (fringe (car tree)) (fringe (cdr tree))))))
(define x (list (list 1 (list 6 8)) (list 3 4)))
(fringe x)