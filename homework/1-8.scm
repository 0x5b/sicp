;; Newton's method (root-finding)^3

(define (power3 x)
  (* x x x))

(define (cube-sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (power3 guess) x)) 0.0001))

(define (cube-sqrt x)
  (cube-sqrt-iter 1.0 x))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
