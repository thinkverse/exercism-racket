#lang racket

(provide leap-year?)

(define (leap-year? year)
  (if (zero? (modulo year 400))
      true (if (zero? (modulo year 100))
          false (if (zero? (modulo year 4))
            true false))))
