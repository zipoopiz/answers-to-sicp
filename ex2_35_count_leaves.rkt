(load "D:\\source_code\\sicp\\list_operation.rkt")
;;;(define (count-leaves t)
;;  (define (inner-recurse x y)
;;    (+
;;     (if (pair? x)
;;         (accumulate inner-recurse 0 x)
;;         1)
;;     y))
;;  (accumulate inner-recurse 0 t))


(define (count-leaves t)
  (accumulate + 0 (map (lambda (node)
                         (if (pair? node)
                             (count-leaves node)
                             1))
                       t)))
(count-leaves (list 1 2 (list 3 4 (list 5 6))))