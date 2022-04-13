(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))
        )
  )

;; (A 1 10) -> 1024
;; (A 2 4)  -> 65536
;; (A 3 3)  -> 65536

(define (pow n m)
  (define (pow-iter res m)
    (if (= m 1)
        res
        (pow-iter (* res n) (- m 1)))
    )
  (pow-iter n m)
  )

(define (f n) (A 0 n)) ;; -> (define (f n) (* 2 n))
(define (g n) (A 1 n)) ;; -> (define (g n) (pow 2 n))
(define (h n) (A 2 n)) ;; -> (define (h n) (pow 2 (g n)))

(define (test-functions n)
  (display "(f n) = (* 2 n) -> ")
  (display (= (f n) (* 2 n)))
  (newline)
  (display "(g n) = (pow 2 n) -> ")
  (display (= (g n) (pow 2 n)))
  (newline)
  (display "(h n) = (pow 2 (g n)) -> ")
  (display (= (h n) (pow 2 (g n))))
  (newline)
  )
