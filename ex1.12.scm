 	 ; 1
       ; 1   1
     ; 1   2   1
   ; 1   3   3   1
 ; 1   4   6   4   1
       ; . . .
; compute element of pascal triangle

(define (pascal r c)
  (if (or (= r 1) (= c 1) (= r c))
      1
      (+ (pascal (- r 1) (- c 1))
	 (pascal (- r 1) c))))

; (pascal 3 2) ;2
(pascal 5 3) ; 6
