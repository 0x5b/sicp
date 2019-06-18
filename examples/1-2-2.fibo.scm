;; recursive
(define (fib1 n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib1 (- n 1))
                 (fib1 (- n 2))))))

;;   (fib1 8)
;;   (+ (fib1 7) (fib1 6))
;;   (+ (+ (fib1 6) (fib1 5)) (fib1 6))
;;   (+ (+ (+ (fib1 5) (fib1 4)) (fib1 5)) (fib1 6))
;;   ..............

;; iterative
(define (fib2 n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (format #t "~a ~a ~a~%" a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))

;;    (fib2 8)
;;    (fib-iter 1 0 8)
;;    (fib-iter 1 1 7)
;;    (fib-iter 2 1 6)
;;    (fib-iter 3 2 5)
;;    (fib-iter 5 3 4)
;;    (fib-iter 8 5 3)
;;    (fib-iter 13 8 2)
;;    (fib-iter 21 13 1)
;;    (fib-iter 34 21 0)
;;
;; total: 21
