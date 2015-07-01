(define (eq-rec? x y)
  (cond ((and (not (pair? x)) (not (pair? y)))
         (eq? x y))
        ((and (pair? x) (pair? y))
         (and (eq-rec? (car x) (car y)) (eq-rec? (cdr x) (cdr y))))
        (else #f)))


;(eq-rec? '(a (a b) c) '(a (a b) c))


;(eq-rec? '(1 2 3) '(1 2 3 4))

;(eq? '() '())

;(car ''abracadabra)

;(car '(quote abra))