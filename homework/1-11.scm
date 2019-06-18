;; recursive
(define (f1 n)
;;  (format #t "~a~%" n)
  (if (< n 3)
    n
    (+ (f1 (- n 1))
       (f1 (- n 2))
       (f1 (- n 3)))))

;;     (f 4)
;;     (+ (f 3) (f 2) (f 1))
;;     (+ (+ (f 2) (f 1) (f 0)) (f 2) (f 1))
;;     (+ (+ 2 1 0) (f 2) (f 1))
;;     (+ (+ 2 1 0) 2 1)
;;
;; total: 6

;; iterative
(define (f2 n)
  (f2-iter 2 1 0 n))

(define (f2-iter a b c count)
  (format #t "~a ~a ~a ~a~%" a b c count)
  (if (= count 0)
      c
      (f2-iter (+ a b c) a b (- count 1))))

;;     (f2 4)
;;     (iter 2 1 0 4)
;;     (iter 3 2 1 3)
;;     (iter 6 3 2 2)
;;     (iter 11 6 3 1)
;;     (iter 20 11 6 0)
;;
;; total: 6
