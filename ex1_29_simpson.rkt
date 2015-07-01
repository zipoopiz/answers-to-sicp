(load "ex1_30_sum.rkt")

(define (simpson-integral f a b n)
  (define h (/ (- b a) n))
  (* (/ h 3) 
     (sum (lambda (k) 
            (let ((index (+ a (* k h))))
                  (cond ((or (= k 0) (= k n)) (f index))
                        ((even? k) (* 2 (f index)))
                        (else (* 4 (f index))))))
          0
          inc
          n)))
(define (inc n) (+ n 1))
(define (cube x) (* x x x))