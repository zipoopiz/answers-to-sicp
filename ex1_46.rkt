
(define (iter-improve good-enough? improve)
  (lambda (guess)
    (display guess)
    (newline)
    (if (good-enough? guess)
        guess
        ((iter-improve good-enough? improve) (improve guess)))))

(define tolerance 0.0001)

(define (fixed-point f first-guess)
  ((iter-improve (lambda (x) (< (abs (- (f x) x)) tolerance))
                f) first-guess))

(define (average x y)
  (/ (+ x y) 2))


;(define (square-root x)
;  (fixed-point (lambda (y) (average y (/ x y))) 1.0))



(define (square-root x)
  ((iter-improve (lambda (guess) (< (abs (- x (* guess guess))) tolerance))
                (lambda (guess) (average guess (/ x guess)))) 1.0))

;(square-root 16)