(load "list_operation.rkt")

(define (triple-sum n given-int)
  (filter (lambda (triple)
            (= given-int 
               (+ (car triple) (cadr triple) (caddr triple))))
          (flatmap (lambda (i) i) (flatmap (lambda (i)
                     (map (lambda (j)
                            (map (lambda (k) (list i j k))
                                 (enumerate-interval 1 n)))
                          (enumerate-interval 1 n)))
                   (enumerate-interval 1 n)))))

;(triple-sum 3 4)
                            
                            