(define (inc x) (+ x 1))
(define (dec x) (- x 1))

(define (sum a b)
  (if (= a 0)
    b
    (inc (sum (dec a) b))))

(sum 4 5)
;  (inc (sum 3 5))
;    (inc (inc (sum 2 5)))
;      (inc (inc (inc (sum 1 5))))
;        (inc (inc (inc (inc (sum 0 5)))))
;          (inc (inc (inc (inc 5))))
;        (inc (inc (inc 6)))
;      (inc (inc 7))
;    (inc 8)
;  9
;;;;;;;;;;;

(define (sum a b)
  (if (= a 0)
    b
    (sum (dec a) (inc b))))

(sum 4 5)
; (sum 3 6)
; (sum 2 7)
; (sum 1 8)
; (sum 0 9)
; 9
