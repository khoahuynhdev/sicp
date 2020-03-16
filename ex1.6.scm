; this will run in applicative-order, which results in the else clause is evaluated before the cond
(define (new-if predicate then-clause else-clause) (cond (predicate then-clause)
(else else-clause)))


; So the else-clause here will be evaluated before the new-if
(define (sqrt-iter guess x) (new-if (good-enough? guess x) guess (sqrt-iter (improve guess x) x)))
