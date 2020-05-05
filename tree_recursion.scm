; Fib with tree recursion
(define (fib n)
  (cond ((= n 0) 0)
	((= n 1) 1)
	(else (+ (fib (- n 1)) (fib (- n 2))))))

; (fib 4) ;3
; (fib 7) ;


(define (l-fib n)
  (fib-iter 1 0 n))
(define (fib-iter a b count)
  (if (= count 0) b (fib-iter (+ a b) a (- count 1))))

(l-fib 7) ;13
(l-fib 8) ;21

; (if (> 3 2) 'y 'n)
