#lang racket

(provide
  spark
  generate-line)

(define default-bars '(▁ ▂ ▃ ▄ ▅ ▆ ▇ █))

; generate spark line from list using the bars defined by b
(define (generate-line l b)
  ; get index and return the corresponding bar
  (map (curry list-ref b)
       ; see Formula section of README
       (map (lambda (number)
              (floor (quotient
                       (* (sub1 (length b))
                          number)
                       (apply max l))))
            l)))

; spark with default bars
(define (spark l)
  (generate-line l default-bars))
