 (define nil '()) 
  
 (define (deep-rev items) 
   (define (iter items result) 
     (if (null? items) 
         result 
         (iter (cdr items) (cons (if (pair? (car items))
                                            (deep-rev (car items))
                                            (car items))
                                 result))))
   (iter items nil))

(define x (list (list 1 2) (list 3 4)))
x
(deep-rev x)
(deep-rev (list 1 2 3 4))
