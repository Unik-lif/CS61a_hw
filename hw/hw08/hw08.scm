(define (my-filter func lst)
  (if (equal? nil lst)
    nil
    (if (func (car lst))
      (cons (car lst) (my-filter func (cdr lst)))
      (my-filter func (cdr lst))
    )
  )
)

(define (interleave s1 s2)
  (if (equal? nil s1)
    s2
    (if (equal? nil s2)
    s1
    (append (list (car s1) (car s2)) (interleave (cdr s1) (cdr s2)))
    )
  )
)

(define (accumulate merger start n term)
  (if (= n 0)
    start
    (merger (term n) (accumulate merger start (- n 1) term))
  )
)

(define (no-repeats lst)
  (define (mutate templist lst)
    (if (equal? nil lst)
      templist
      (if (equal? nil (my-filter (lambda (x) (= (car lst) x)) templist))
        (mutate (append templist (list (car lst))) (cdr lst))
        (mutate templist (cdr lst))
      )
    )
  )
  (mutate nil lst)
)
