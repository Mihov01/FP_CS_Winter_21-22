#lang racket

(define (fib-rec x)
  (cond
    [(< x 0) (error "x was negative")]
    [(zero? x) 0]
    [(= x 1) 1]
    [else (+ (fib-rec (sub1 x)) (fib-rec (- x 2)))]
    )
  )

(define (fib-iter x)
  (define (helper prev2 prev1 left-over)
    (cond
      [(zero? left-over) prev2]
      [(= left-over 1) prev1]
      [else (helper prev1 (+ prev1 prev2) (sub1 left-over))]
      )
    )
  (helper 0 1 x)
  )

; (0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...)

(= (fib-rec 11) 89)
(= (fib-iter 11) 89)
; (fib-rec -11)

; Notice the difference in speed:
; (fib-rec 110)
; (fib-iter 110)