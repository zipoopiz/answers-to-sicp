(load "list_operation.rkt")
(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (positions) (safe? k positions))
         (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position
                    new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))

(define empty-board '())

(define (adjoin-position row col rest-position)
  (append (list (list row col)) rest-position)) ;;新的position会放在列表的最前方， position中行在列的前面

(define (safe? k positions)
  (if (= 1 (length positions))
      #t
      (let ((checked-position (list-ref positions 0))
            (another-position (list-ref positions (- k 1))))
        (cond ((= k 1) #t)
              ;;((null? another-position) (safe? (- k 1) positions))
              ((or (= (car checked-position) (car another-position)) ;;行相同
                   (let ((col-diff (- (cadr checked-position) (cadr another-position)))
                         (row-of-checked-position (car checked-position))
                         (row-of-another-position (car another-position)))
                     (or (= row-of-checked-position (+ row-of-another-position col-diff))
                         (= row-of-checked-position (- row-of-another-position col-diff))))) ;; 对角线撞到
               #f)
              (else (safe? (- k 1) positions))))))
                  
     
(queens 8)