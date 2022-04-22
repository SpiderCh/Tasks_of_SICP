(define (sum_of_squares x y)
    (define (square x) (* x x))
    (+ (square x) (square y))
)

(define (compare x y z op)
    (cond ((and (op x y) (op x z)) x)
          ((and (op y x) (op y z)) y)
          (else z)
    )
)

(define (task3 x y z)
    (define (max x y z) (compare x y z >))
    (define (min x y z) (compare x y z <))
    (define sum (+ x y z))
    (define m (- sum (max x y z)))
    (sum_of_squares (- sum m) (- m (min x y z)))
)