#lang planet neil/sicp

;;f(n)=n if n<3
;;f(n)=f(n-1) + 2f(n-2) + 3f(n-3) if n>=3
;;Base Case: f(3): 2 + 2 = 4

(define (f-recursive n)
  (cond 
    ((< n 3) n)
    (else
     (+
      (f-recursive(- n 1))
      (* 2 (f-recursive(- n 2)))
      (* 3 (f-recursive(- n 3)))))))

(display `recursive)
(f-recursive 3)
(f-recursive 4)
(f-recursive 5)
(f-recursive 6)

;; f(n)   = a + b + c
;; f(n+1) = a` + b` + c`
;; a =  f(n-1)    a` = a + b + c
;; b = 2f(n-2)    b` = 2a (because f(n-1) is defined as a)
;; c = 3f(n-3)    c  = 3b/2

;;f(n)=n if n<3
;;f(n)=f(n-1) + 2f(n-2) + 3f(n-3) if n>=3

;; f(3) = a + b + c

(define (a-prime a b c)
  (+ a b c))

(define (b-prime a)
  (* 2 a))

(define (c-prime b)
  (/
   (* 3 b)
   2))

;; n = f(n)
;; i = current position
;; A, B, C
;; (f-iter n i 2 2 0)
(define (f-iter n i a b c)
  (cond
    ((< n 3) n)
    ((= n 3) (+ 2 2 0))
    ((= n i) (+ a b c))
    (else
     (cond
       ((< i 3) (f-iter n 3 2 2 0))
       (else
        (f-iter n (+ i 1) (a-prime a b c) (b-prime a) (c-prime b)))))))
(define (f-iterative n)
  (f-iter n 0 0 0 0))

(display `iterative)
(f-iterative 3)
(f-iterative 4)
(f-iterative 5)
(f-iterative 6)
    
  