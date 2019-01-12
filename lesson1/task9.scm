(define (inc a)
  (+ a 1)
  )

(define (dec a)
  (- a 1)
  )

(define (test1 a b)
  (define (sum a b)
    (if (= a 0)
        b
        (inc (sum (dec a) b))
       )
    )
  (sum a b)
  )

;; (sum 4 5)
;; (+ (sum 3 5) 1)
;; (+ (+ (sum 2 5) 1) 1)
;; (+ (+ (+ (sum 1 5) 1) 1) 1)
;; (+ (+ (+ (+ (sum 0 5) 1) 1) 1) 1)
;; (+ (+ (+ (+ 5 1) 1 ) 1) 1)
;; recursive process

(define (test2 a b)
  (define (sum a b)
    (if (= a 0)
        b
        (sum (dec a) (inc b))
        )
    )
  (sum a b)
  )

;; (sum 4 5)
;; (sum 3 6)
;; (sum 2 7)
;; (sum 1 8)
;; (sum 0 9)
;; iterative process
