(define default-bars '(#\▁ #\▂ #\▃ #\▄ #\▅ #\▆ #\▇ #\█))

; create spark line from list using the bars defined by b
(define spark-line
  (lambda (l b)
    (list->symbol
      (map (lambda (index)
             (list-ref b index))
           (map
             (lambda (number)
               (floor-quotient
                 (* (1- (length b)) number)
                 (apply max l)))
             l)))))

; spark with default bars
(define spark
  (lambda (l)
    (spark-line l default-bars)))
