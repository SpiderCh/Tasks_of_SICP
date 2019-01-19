(define (f_recursive n)
  (if (< n 3)
      n
      (+ (f_recursive (- n 1))
         (f_recursive (- n 2))
         (f_recursive (- n 3))
         )
   )
  )

(define (f_iter n)
  (define (f-iter a b c count)
     (if (< count 3)
         a
         (f-iter (+ a (* 2 b) (* 3 c))
                 a
                 b
                 (- count 1))))
  (f-iter 2 1 0 n)
)
