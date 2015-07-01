(define (split painter-placer smaller-placer)
  (define  (split-helper painter n)
    (if (= n 0)
        painter
        (let ((smaller (split-helper painter (- n 1))))
          (painter-split painter (smaller-split smaller smaller)))))
  split-helper)