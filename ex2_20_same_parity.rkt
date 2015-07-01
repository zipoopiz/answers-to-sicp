(define (same-parity x . y)
  (define filter 
    (if (even? x)
        even?
        odd?))
  (define (iter y result)
    (if (null? y)
        result
        (if (filter (car y))
            (iter (cdr y) (append result (list (car y))))
            (iter (cdr y) result))))
  (iter y (list x)))
  
(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)
                
            
(define (h . w) w)
(define g (lambda w w))
(h 1 2 3 4)
(g 1 2 3 4)