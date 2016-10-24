; nth returns the element at position n of a zero-indexed list l
(define nth
  (lambda (n l)
    (if (zero? n)
      (car l)
      (nth (- n 1) (cdr l)))))

; create spark line from list
(define spark-line
  (lambda (l)
    (let ((bars (list '▁ '▂ '▃ '▄ '▅ '▆ '▇ '█)))
      (letrec*
        ((get-percentage
           (lambda (n)
             (floor
               (/ (* (length bars) n)
                  (apply max l)))))
          (barify
            (lambda (i)
              (nth (- i 1) bars))))
        (map barify
             (map (lambda (e)
                    (if (zero? (get-percentage e))
                      1
                      (get-percentage e)))
                  l))))))
