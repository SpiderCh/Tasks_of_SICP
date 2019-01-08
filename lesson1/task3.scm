(define (sum_of_squares x y)
  (+ (square x) (square y))
)

(define (task3 x y z)
  (define maxA (max x y))
  (define maxB (max y z))
  (define maxC (max x z))
  (define diff_between_A_B (- maxA maxB))
  (if (= 0 diff_between_A_B)
      (sum_of_squares maxA maxC)
      (sum_of_squares maxA maxB)
  )
)

(define (task3_cond x y z)
  (cond ((> x y) (sum_of_squares x (if (> y z) y z)))
        ((> x z) (sum_of_squares x (if (> y z) y z)))
        ((> y z) (sum_of_squares y (if (> x z) x z)))
        (else    (sum_of_squares z (if (> x y) x y)))
  )
)