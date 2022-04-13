(define (average x y)
  (/ (+ x y) 2)
  )

(define (improve guess original)
  (average guess (/ original guess))
  )


;; Original sqrt function from the book

(define (good_enough? guess original)
  (< (abs (- (square guess) original)) 0.001)
  )

(define (sqrt_iteration guess original)
  (if (good_enough? guess original)
      guess
      (sqrt_iteration (improve guess original) original)
      )
  )

(define (sqrt x)
  (sqrt_iteration 1.0 x)
  )


;; Using fractions to detect optimal guess value

(define (fraction_good_enough? guess previous_guess)
  (> (/ (min guess previous_guess) (max guess previous_guess)) 0.99)
  )

(define (fraction_sqrt_iteration guess previous_guess original)
  (if (fraction_good_enough? guess previous_guess)
      guess
      (fraction_sqrt_iteration (improve guess original) guess original))
  )

(define (fraction_sqrt x)
  (fraction_sqrt_iteration 1.0 x x)
  )


;; Trying to find minimum change between guesses with diff

(define (diff_good_enough? guess previous_guess)
  (< (abs (- guess previous_guess)) 0.001)
  )

(define (diff_sqrt_iteration guess previous_guess original)
  (if (diff_good_enough? guess previous_guess)
      guess
      (diff_sqrt_iteration (improve guess original) guess original))
  )

(define (diff_sqrt x)
  (diff_sqrt_iteration 1.0 x x)
  )
