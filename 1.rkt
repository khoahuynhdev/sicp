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

(sqrt 100.0)
