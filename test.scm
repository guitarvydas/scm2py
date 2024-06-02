(define (AppendInefficient list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (AppendInefficient (cdr list1) list2))))
