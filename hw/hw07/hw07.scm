(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cdr (cdr s))))

(define (ordered? s)
    (if (null? s)
        #t
        (if (null? (cdr s))
            #t
            (and (<= (car s) (cadr s)) (ordered? (cdr s)))
        )
    )
)

(define (square x) (* x x))

(define (pow base exp)
    (if (= 0 exp)
        1
        (if (= 1 exp)
            base
            (if (even? exp)
                (square (pow base (quotient exp 2)))
                (* base (square (pow base (quotient exp 2))))
            )
        )
    )
)
