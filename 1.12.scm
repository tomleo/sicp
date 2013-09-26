#lang planet neil/sicp

;;Pascal's Triangle

(define (p x y)
  (cond
    ((= x 0) 1)
    ((= x y) 1)
    (else
     (+ (p x (- y 1)) ;;up-1
        (p (- x 1) (- y 1)))))) ;over-1 up-1

;;(p 1 1) ;; 1
;;(p 2 2) ;; 1
(p 2 3) ;; 2
;;(p 2 4)
;;(p 2 5)
;;(p 3 5)

(define (p-start n)
  (p n n))



