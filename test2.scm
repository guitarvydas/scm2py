(define (call-foreign expr bindings)
  (let ((func (cadr expr))
        (args (cddr expr)))

    (cond ((string=? "unity" func)
           (car args))

          ((string=? "add" func)
           (let ((resolved-args (resolveArgs args bindings)))
             (+ (car resolved-args) (cadr resolved-args))))

          ((string=? "display" func)
           (let ((a (value (car args) bindings)))
             (display a)))
          
          ((string=? "newline" func)
           (newline))
          
          (else (error "call-foreign called with unknown operator" func)))))
