(define default-bars '(▁ ▂ ▃ ▄ ▅ ▆ ▇ █))

; generate spark line from list using the bars defined by b
(define generate-line
  (lambda (l b)
    ; get index and return the corresponding bar
    (map (lambda (index)
           (list-ref b index))
         ; see Formula section of README
         (map (lambda (number)
                (floor-quotient
                  (* (1- (length b))
                     number)
                  (apply max l)))
               l))))

; spark with default bars
(define spark
  (lambda (l)
    (generate-line l default-bars)))
