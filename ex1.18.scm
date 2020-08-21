(define (rpm a b)
  (
   cond ((= b 1) a)
   ((even? b) (+ 0 (rpm (+ a a) (truncate (/ b 2)))))
   (else (+ a (rpm (+ a a) (truncate (/ b 2)))))
   )
  )

; (rpm 15 10)
(rpm 91 115)
