; b ** n = b * b ** (n - 1)
; b ** 0 = 1

(define (my-expt b n)
  (if (= n 0)
      1
      (* b (my-expt b (- n 1)))))

; (my-expt 2 3) ; 8
