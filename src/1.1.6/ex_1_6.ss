; Exercise 1.6
; Newton's square root method
;
; x^2 = y
; new_y = (y + x/y) / 2
; Iterate until y^2 is close enough to x

(define (myabs x)
  (if (> x 0)
    x
    (- x)))

(myabs (- 2))
(myabs 4)

(define (mysquare x)
  (* x x))

(define (good-enough? x guess)
  (> 0.001 (myabs (- x (mysquare guess)))))

(good-enough? 9 3) 
(good-enough? 9 2) 
(good-enough? 9 3.0001) 

 
(define (new-guess x guess)
    (/ (+ guess (/ x guess)) 2))

(new-guess 2 1.0)
  
(define (guess-sqrt-iter x guess)
  (if (good-enough? x guess)
    guess 
    (guess-sqrt-iter x (new-guess x guess))))

(define (guess-sqrt x)
  (myif (= x 0)
    0
    (guess-sqrt-iter x 1.0)))

; Exercise 1.6 asks what would happen if we replace the 
; built-in 'if' special form with our own.
; Nothing, as expected.
(define (myif predicate then-clause else-clause)
  (cond (predicate then-clause)
    (else else-clause)))

(myif (< 1 2) 88 99)

(guess-sqrt 0)
(guess-sqrt 1)
(guess-sqrt 2)
(guess-sqrt 3)
(guess-sqrt 4)
(guess-sqrt 9)
(guess-sqrt 144)

