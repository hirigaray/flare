#lang racket

(provide
  spark
  generate-line)

; spark with default bars
(define (spark l)
  (let ((default-bars '(▁ ▂ ▃ ▄ ▅ ▆ ▇ █)))
    (generate-line l default-bars)))

; generate spark line from list using the bars defined by b
(define (generate-line l b)
  ; get index and return the corresponding bar
  (map
    ; see Formula section of README
    (compose (curry list-ref b)
             (lambda (number)
               (floor (quotient
                        (* (sub1 (length b))
                           number)
                        (apply max l)))))
    l))
