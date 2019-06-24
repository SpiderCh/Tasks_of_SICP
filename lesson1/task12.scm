(define (pascal_element row col)
  (cond
    ((or (= row col) (= col 1))
      1
    )
    (else
      (+ (pascal_element (- row 1) (- col 1)) (pascal_element (- row 1) col))
    )
  )
)

(define (pascal_iter row col line)
  (cond
    ((= row col) (append line (cons 1 '())))
    (else (pascal_iter row (+ col 1) (append line (cons (pascal_element row col) '()))))
  )
)

(define (pascal_line row)
  (cond
    ((= row 1) (cons 1 '()))
    (else (pascal_iter row 2 (cons 1 '())))
  )
)