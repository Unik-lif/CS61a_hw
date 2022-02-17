(define (over-or-under num1 num2) 
    (if (< num1 num2)
        -1
        (if (= num1 num2)
            0
            1
        )
    )
)

(define (make-adder num)
    (define (adder inc)
        (+ num inc)
    )
    adder
)

(define (composed f g)
    (define (combine x)
        (f (g x))
    )
    combine
)

(define lst
    (list (list 1) 2 (list 3 4) 5)
)

(define (remove item lst)
    (filter (lambda (x) (not (= item x))) lst)
)
