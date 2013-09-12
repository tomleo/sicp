#lang planet neil/sicp

;;f(n)=n if n<3
;;f(n)=f(n-1) + 2f(n-2) + 3f(n-3) if n>=3

(define (f-recursive n)
  (cond 
    ((< n 3) n)
    (+
           (f-recursive(- n 1))
           (* 2 (f-recursive(- n 2)))
           (* 3 (f-recursive(- n 3)))
     )))

(f-recursive 4)

(define (g x)
  (cond
    (< x 5) (`yes)
    (`no)
   ))

(g 5)

