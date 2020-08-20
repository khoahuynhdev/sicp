(define (fast-exp b n)
  (define (iter-exp a b n)
    (if (= n 0) a
     (if (even? n) (iter-exp a (* b b) (/ n 2))
	 (iter-exp (* a b) b (- n 1)))))
  (iter-exp 1 b n))

(fast-exp 3 5)
