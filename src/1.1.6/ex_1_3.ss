#lang scheme

; Define a procedure that takes three numbers as arguments and returns the sum
; of the squares of the two larger numbers.

(define (sumsquares x y)
  (+ (* x x)
     (* y y)))

(define (larger x y)
  (if (> x y)
    x
    y))

(define (solve x y z)
  (cond ((> x y) (sumsquares x (larger y z)))
        ((> y z) (sumsquares y (larger x z)))
        (else (sumsquares z (larger x y)))))

; Test
(sumsquares 2 4)
(larger 1 2)

(solve 10 6 3)
(solve 1 1 1)
(solve (- 2) 2 1)
(solve 5 (- 3) (- 2))

