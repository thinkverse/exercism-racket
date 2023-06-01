#lang racket

(provide sum-of-squares square-of-sum difference)

(define (sum-of-squares number)
    (/ (* number (+ number 1) (+ (* 2 number) 1)) 6))

(define (square-of-sum number)
  (let ((term (/ (* number (+ number 1)) 2)))
    (* term term)))

(define (difference number)
  (- (square-of-sum number) (sum-of-squares number)))
