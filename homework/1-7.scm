;; Newton's method (root-finding)

(define (square x)
  (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (avarage guess (/ x guess)))

(define (avarage x y)
  (/ (+ x y) 2))

;(define (good-enough? guess x)
;  (< (abs (- (square guess) x)) 0.0000001))

(define (mysqrt x)
  (sqrt-iter 1.0 x))
;;

(define (good-enough? guess x)
  (define new-guess (improve guess x))
  (< (abs (- new-guess guess)) 0.00000001))
