(define (product item a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (item a)))))
  (iter a 1))
(define (factorial n)
  (product (lambda (x) x) 1 (lambda (x) (+ x 1)) n))

(define pi (* 4
              (product (lambda (x)
                         (if (even? x)
                             (/ (+ x 2) (+ x 1))
                             (/ (+ x 1) (+ x 2))))
                       1
                       (lambda (x)
                         (+ x 1))
                       100)))
pi