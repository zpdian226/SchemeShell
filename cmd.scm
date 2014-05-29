(import "java.lang.Runtime")
(import "java.lang.Process")
(import "java.io.InputStreamReader")
(import "java.io.BufferedReader")

(define rt (Runtime.getRuntime))
(define (disln line input)
    (if (equal? line #null)
        (newline)
        (begin
            (display line)
            (newline)
            (disln (.readLine input) input))))

(define (cmd str)
    (define process (.exec rt str))
    (define ir (InputStreamReader. (.getInputStream process)))
    (define input (BufferedReader. ir))
    (disln (.readLine input) input))
