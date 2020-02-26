#lang racket

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- x (square guess)))
    0.00001))

(define (try guess x)
  (if (good-enough? guess x)
    guess
    (try (improve guess x) x)))

(define (sqrt x)
  (try 1.0 x))

#| (sqrt 100.0) |#

(define (plus x y)
  (if (= x 0)
    y
    (plus (- x 1) (+ y 1))))

#| (plus 3 4) |#

#| 1.2.1 |#
(define (factorial n)
  (if (= n 1)
    1
    (* n (factorial (- n 1)))))
(factorial 6)
