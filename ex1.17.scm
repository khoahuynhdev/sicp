(define (fast-prod a b)
  (if (= b 0) 0
      (if (even? b) (* 2 ( fast-prod a (/ b 2) ))
	  (+ a (fast-prod a (- b 1))))
      ))

; (fast-prod 2 3)
; (fast-prod 10 15)
; (fast-prod 9 7)
(fast-prod 8 1)
