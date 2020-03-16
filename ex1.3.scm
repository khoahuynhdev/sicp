(define (Square x)
  (* x x))

(define (Smaller x y)
  (if (<= x y) x y))

(define (Smallest x y z)
  (Smaller (Smaller x y) (Smaller y z)))

(define (Process x y z)
  (-
    (+ (Square x)
       (+ (Square y) (Square z)))
    (Square(Smallest x y z))))

; (Smaller 3 5)
; (Smallest 3 4 5)

; Sum Square of 2 larger numbers
(Process 5 9 10) ; 181
