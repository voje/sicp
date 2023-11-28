#lang scheme

(define (A x y)
  (cond
    ((= x 0) (* 2 y))
    ((= y 0) 0)
    ((= y 1) 2)
    (else (A (- x 1) (A x (- y 1))))))

(define (pow x y)
    (cond
      ((= y 0) 1)
      ((= y 1) x)
      (else (* x (pow x (- y 1))))))

;(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))

"Ackermann"
(g 10)
(A 1 10)
(pow 2 10)

(pow 2 16)
(A 2 4)
(h 4)
(A 3 3)

