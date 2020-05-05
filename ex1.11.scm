; n f(n)
; -1 -1
; 0 0
; 1 1
; 2 2
; 3 f(3 - 1) + 2*f(3 - 2) + 3*f(3 - 3) = f(2) + 2*f(1) + 3*f(0) = 1*2 + 2*1 + 3*0 = 4
; 4 f(4 - 1) + 2*f(4 - 2) + 3*f(4 - 3) = f(3) + 2*f(2) + 3*f(1) = 1*2 + 2*1 + 3*0 + 2*2 + 3*1 = 11
; 5 				     = f(4) + 2*f(3) + 3*f(2) = 1*2 + 2*1 + 3*0 + 2*2 + 3*1 + 2*(1*2 + 2*1 + 3*0) + 3*2 = 25

; count state: n

; a b c
; 2 1 0
; a = a + 2*b + 3*c
; b = a
; c = b


; recursive-function
(define (recursive-func n)
  (if (< n 3)
    n
    (+ (recursive-func (- n 1)) (* 2 (recursive-func (- n 2))) (* 3 (recursive-func (- n 3))))))

; (recursive-func 3) ;4
; (recursive-func 4) ;11

; iterative-function
; should terminate on negative value for n

(define (li-func n)
  (if (< n 3)
      n
      (iter-func 2 1 0 n)))

(define (iter-func a b c count)
  (if (< count 3)
      a
      (iter-func (+ a (* 2 b) (* 3 c)) a b (- count 1))))

; (li-func 3)
; (li-func 4)
(li-func 5)
