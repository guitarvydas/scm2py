(define (resolveArgsHelper args accumulator bindings)
  (cond ((null? args)
         accumulator)
        (else
         (resolveArgsHelper (cdr args) 
                              (AppendInefficient accumulator
                                                 (list (value (car args) bindings)))
                              bindings))))
