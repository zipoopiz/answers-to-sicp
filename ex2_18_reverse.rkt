 (define nil '()) 
  
 (define (rev items) 
   (define (iter items result) 
     (if (null? items) 
         result 
         (iter (cdr items) (cons (car items) result)))) 
  
   (iter items nil)) 

(define (rev2 items)
  (if (null? items)
      '()
      (let ((r (rev (cdr items))))
        (append r (list (car items))))))

(rev2 (list 1 4 9 16 25))

(define x (list (list 1 2) (list 3 4)))
x
(rev2 x)