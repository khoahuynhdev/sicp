(define (square n)
  (* n n))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divide? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (divide? a b) (= (remainder b a) 0))
(define (smallest-divisor n) (find-divisor n 2))

(define (next input)
  (cond ((= 2 input) 3)
        (else (+ input 2))))

(define (prime? n)
  (= (smallest-divisor n) n))

(prime? 199)
; The observed ratio of the speed of the two algorithms is not 2, but roughly 1.5 (or 3:2).

; This is mainly due to the NEXT procedure's IF test. The input did halve indeed, but we need to do an extra IF test.
