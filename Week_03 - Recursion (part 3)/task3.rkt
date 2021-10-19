#lang racket

(define (find-max n)
  (define (helper current-n max)
    (cond
      [(zero? current-n) max]
      [(> (remainder current-n 10) max) (helper (quotient current-n 10) (remainder current-n 10))]
      [else (helper (quotient current-n 10) max)]
      )
  )
  (helper (quotient n 10) (remainder n 10))
)

(= (find-max 55345) 5)
(= (find-max 14752) 7)
(= (find-max 329450) 9)
(= (find-max 9521) 9)