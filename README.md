# flare

very simplistic implementation of [spark](https://github.com/holman/spark) in scheme

usage: guile -l main.scm

# examples
    scheme@(guile-user)> (spark-line '(2 5 5.5 6 10))
    $1 = (▂ ▄ ▅ ▅ █)
    scheme@(guile-user)> (spark-line '(1 2 3 4 100 5 10 20 50 300))
    $2 = (▁ ▁ ▁ ▁ ▃ ▁ ▁ ▁ ▂ █)
    scheme@(guile-user)> (spark-line '(100 275 400 300))
    $3 = (▂ ▆ █ ▆)

