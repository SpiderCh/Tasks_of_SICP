(define (pascal_element row col)
  (cond
    ((or (= row col) (= col 1))
      1
    )
    ; ((= row 0) 0)
    (else
      (+ (pascal_element (- row 1) (- col 1)) (pascal_element (- row 1) col))
    )
  )
)

(define (pascal_iter row col)
  (cond
    ((= row col) (cons 1 '()))
    (else (append (cons (pascal_element row col) '()) (pascal_iter row (+ col 1))))
  )
)

(define (pascal_line row)
  (pascal_iter row 1)
)