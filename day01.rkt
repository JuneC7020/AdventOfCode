#lang racket

(require racket/runtime-path)

(define-runtime-path input-file "input\\day01.txt")

(define lines (file->lines input-file))

(define (fuel mode-weight) (max 0 (floor (- (/ mode-weight 3) 2))))

(define weight (map string->number lines))

lines

weight

(define fuel-by-mod (map fuel weight))

fuel-by-mod

(apply + fuel-by-mod)



