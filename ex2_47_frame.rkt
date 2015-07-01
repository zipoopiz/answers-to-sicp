(load "ex2_46_vect_operation.rkt")
;;(define (make-frame origin edge1 edge2)
;;  (list origin edge1 edge2))

;;(define (origin-frame frame)
;;  (car frame))

;;(define (edge1-frame frame)
;;  (cadr frame))

;;(define (edge2-frame frame)
;;  (caddr frame))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;以上是实现frame的其中一个版本

(define (make-frame origin edge1 edge2)
  (cons origin (cons edge1 edge2)))

(define (origin-frame frame)
  (car frame))

(define (edge1-frame frame)
  (cadr frame))

(define (edge2-frame frame)
  (cddr frame))

;(define orign (make-vect 0 0))
;(define edge1 (make-vect 2 0))
;(define edge2 (make-vect 0 3))

;(define frame (make-frame orign edge1 edge2))

;(origin-frame frame)
;(edge1-frame frame)
;(edge2-frame frame)
