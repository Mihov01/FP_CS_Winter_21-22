#lang racket

(display "Hello, world")

(define (f x)
  (cond
    [(= x 10) (display "x is 10")]
    [(zero? (remainder x 2)) (display "x is not 10 but is even")]
    [else (display "x is not 10 and is not even")]       
    )
  )

(f 10)
(f 5)
(f 6)