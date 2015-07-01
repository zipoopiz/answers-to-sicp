(load "ex2_2.rkt")
;; implementation 1
;(define (make-rect bottom-left top-right)
;  (cons bottom-left top-right))

;(define (bottom-left rect)
;  (car rect))

;(define (top-right rect)
;  (cdr rect))

;(define (width rect)
;  (abs (- (x-point (bottom-left rect))
;          (x-point (top-right rect)))))

;(define (hight rect)
;  (abs (- (y-point (bottom-left rect))
;          (y-point (top-right rect)))))

;; implementation 2
(define (make-rect width-seg hight-seg)
  (cons width-seg hight-seg))
(define (width-seg rect)
  (car rect))
(define (hight-seg rect)
  (cdr rect))
(define (width rect)
  (let ((w-seg (width-seg rect)))
    (abs (- (x-point (start-seg w-seg))
            (x-point (end-seg w-seg))))))
(define (hight rect)
  (let ((h-seg (hight-seg rect)))
    (abs (- (y-point (start-seg h-seg))
            (y-point (end-seg h-seg))))))



(define (perimeter rect)
  (* 2 (+ (width rect) (hight rect))))

(define (area rect)
  (* (width rect) (hight rect)))

;(define rect (make-rect (make-point 0 0)
;                        (make-point 3 4)))

(define rect (make-rect (make-seg (make-point 0 0)
                                  (make-point 3 0))
                        (make-seg (make-point 0 0)
                                  (make-point 0 4))))
                                              
(perimeter rect)
(area rect)