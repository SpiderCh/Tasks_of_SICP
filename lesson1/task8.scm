(define (improve guess original)
  (/ (+ (* guess 2)
	(/ original (square guess)))
     3)
  )

(define (good_enough? guess previous_guess)
  (< (abs (- previous_guess guess))
     0.001)
  )

(define (cube_root_iter guess previous_guess original)
  (if (good_enough? guess previous_guess)
      guess
      (cube_root_iter (improve guess original)
                       guess
                       original))
  )

(define (cube_root x)
  (cube_root_iter 1.0 x x)
  )
