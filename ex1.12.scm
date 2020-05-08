 	 ; 1
       ; 1   1
     ; 1   2   1
   ; 1   3   3   1
 ; 1   4   6   4   1
       ; . . .
; compute element of pascal triangle

(define (pascal r c)
  (if (or (= c 1) (= r c))
      1
      (+ (pascal (- r 1) (- c 1))
	 (pascal (- r 1) c))))

; (pascal 3 2) ;2
; (pascal 5 3) ; 6

; pretty print it
(define (print-pascal-triangle depth)
  (define (iter-row n)
    (define (iter-col r c)
      (display (pascal r c))
      (display " ")
      (if (= r c)
	  (newline)
	  (iter-col r (+ c 1))))
    (iter-col n 1)
    (if (= n depth)
	(values)
	(iter-row (+ n 1))))
  (iter-row 1))

(print-pascal-triangle 20)
