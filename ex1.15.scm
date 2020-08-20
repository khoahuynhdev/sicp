(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x)))) (define (sine angle)
(if (not (> (abs angle) 0.1)) angle
(p (sine (/ angle 3.0)))))

(p 12.5)

; 12.5 /3  approximately 5 times
; growth as log(3) in steps
; growth as o(1) for space
