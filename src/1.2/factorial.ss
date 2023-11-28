#lang scheme

; linear-recursive process
; (the amount of information the interpreter needs to store 
; in its memory grows with x)
#;(define (factorial x)
    (if (<= x 1) 1
    (* x (factorial (- x 1)))))

; linear iterative process (number of steps grows with x)
(define (factorial x)
    (define (fact-iter prod count)
        (if (> count x)
            prod
            (fact-iter (* prod count)
                       (+ count 1))))
    (fact-iter 1 1)
)

"---Testing---"
(factorial 0)
(factorial 1)
(factorial 2)
(factorial 3)
(factorial 4)
(factorial 5)
