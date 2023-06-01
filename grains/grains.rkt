#lang racket

(provide square total)

(define (square a-square)
  (arithmetic-shift 1 (- a-square 1)))

(define (total)
  (- (arithmetic-shift 1 64) 1))
