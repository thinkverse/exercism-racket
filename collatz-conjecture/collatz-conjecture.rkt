#lang racket

(provide collatz)

(define (collatz num)
  (if (exact-positive-integer? num)
      (letrec ([reduce (lambda (n t)
                         (cond
                           [(eq? n 1) t]
                           [(even? n) (reduce (/ n 2) (add1 t))]
                           [else (reduce (add1 (* n 3)) (add1 t))]
                           )
                         )])
        (reduce num 0))
      (error "cannot calculate collatz on nonpositive-integer")))
