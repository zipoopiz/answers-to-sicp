(define (make-mobile left right)
  ;(list left right))
  (cons left right))

(define (make-branch length structure)
  ;(list length structure))
  (cons length structure))

(define (left-branch mobile)
  ;(list-ref mobile 0))
  (car mobile))

(define (right-branch mobile)
  ;(list-ref mobile 1))
  (cdr mobile))

(define (branch-length branch)
  ;(list-ref branch 0))
  (car branch))

(define (branch-structure branch)
  ;(list-ref branch 1))
  (cdr branch))

(define (branch-weight branch)
    (let ((s (branch-structure branch)))
      (if (pair? s)
        (total-weight s)
        s)))

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile)) (branch-weight (right-branch mobile))))

(define (balanced mobile)
  (define (branch-balanced branch)
    (let ((s (branch-structure branch)))
      (if (pair? s)
          (balanced s)
          #t)))
  (define (torque branch)
    (* (branch-length branch) (branch-weight branch)))
  (let ((left (left-branch mobile))
        (right (right-branch mobile)))
    (if (= (torque left) (torque right))
        (and (branch-balanced left) (branch-balanced right))
        #f)))

(define mobile-a (make-mobile
                  (make-branch
                   10
                   30)
                  (make-branch
                   20
                   (make-mobile
                    (make-branch
                     20
                     5)
                    (make-branch
                     10
                     10)))))
(total-weight mobile-a)
(balanced mobile-a)