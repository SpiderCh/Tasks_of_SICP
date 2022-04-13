(define (new_if predicate then_clause else_clause)
  (cond (predicate then_clause)
	(else      else_clause)
  )
)

(define (factorial x)
  (* x (if (= 1 x) x (factorial (- x 1))))
  )

(define (factorial_cond x)
  (* x (cond ((= 1 x) x)
             (else (factorial_cond (- x 1)))
        )
  )
)

;; Lisp uses applicative-order evaluation.
;; Interpreter tries to calculate all arguments before call 'new_if'
;; and goes to infinite recursion.
(define (factorial_new x)
  (* x (new_if (= 1 x) x (factorial_new (- x 1))))
)
