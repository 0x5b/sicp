(define (sum-max-squares a b c)
  (define max1 (max a b c))
  (define (square s) (* s s))
  (cond ((= max1 a) (+ (square max1) (square (max b c))))
        ((= max1 b) (+ (square max1) (square (max a c))))
        ((= max1 c) (+ (square max1) (square (max a b))))))

(sum-max-squares 1 5 10)
; 125
