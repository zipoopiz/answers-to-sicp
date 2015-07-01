(load "ex2_38_fold_left.rkt")

(define (rev1 sequence)
  (fold-right (lambda (x y) 
                (append y (list x))) 
              '()
              sequence))

(define (rev2 sequence)
  (fold-left (lambda (x y) (cons y x)) '() sequence))

;(rev1 (list 1 2 3 4))
;(rev2 (list 1 2 3 4))