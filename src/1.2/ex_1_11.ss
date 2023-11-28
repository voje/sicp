#lang scheme

;# Recursive process
(define (rec n)
  (if (< n 3)
    n
    (+ (rec (- n 1)) (* 2 (rec (- n 2))) (* 3 (rec (- n 3))))))

;# Iterative process using tail recursion
(define (iter n)
  (define (iter-step x fx-1 fx-2 fx-3)
    (define fx (+ fx-1 (* 2 fx-2) (* 3 fx-3)))
    (if (>= x n) fx
      (iter-step (+ x 1)
                 fx
                 fx-1
                 fx-2)))
  (if (< n 3) n 
    (iter-step 3 2 1 0)
    ))
  
'-------
(rec -1)
(iter -1)
(rec 0)
(iter 0)
(rec 1)
(iter 1)
(rec 2)
(iter 2)
(rec 3)
(iter 3)
(rec 4)
(iter 4)
(rec 5)
(iter 5)
(rec 6)
(iter 6)
(rec 7)
(iter 7)
(rec 8)
(iter 8)

