(define default-bars '(#\▁ #\▂ #\▃ #\▄ #\▅ #\▆ #\▇ #\█))

; create spark line from list using the bars defined by b
(define spark-line
  (lambda (l b)
    (list->string
      (map (lambda (index)
             (list-ref b (- index 1)))
           (map (lambda (percentage)
                  (if (or (zero? percentage)
                          (negative? percentage))
                    1
                    percentage))
                (map
                  (lambda (number)
                    (floor-quotient
                      (* (length b) number)
                      (apply max l))) l))))))

; spark with default bars
(define spark
  (lambda (l)
    (spark-line l default-bars)))
