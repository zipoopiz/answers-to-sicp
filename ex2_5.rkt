(define (nint-cons x y)
  (* (expt 2 x) (expt 3 y)))

(define (nint-car z)
  (if (not (= (remainder z 3) 0))
      (divide-count z 2 1)
      (nint-car (/ z 3))))

(define (nint-cdr z)
  (if (not (= (remainder z 2) 0))
      (divide-count z 3 1)
      (nint-cdr (/ z 2))))

(define (divide-count n base cnt)
  (if (= 1 (/ n base))
      cnt
      (divide-count (/ n base) base (+ cnt 1))))
(define z (nint-cons 2 3))
(nint-car z)
(nint-cdr z)