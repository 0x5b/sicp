(define (count-change amount)
  (cc amount 2))

(define (cc amount kinds-of-coins)
  (format #t "args: ~a ~a~%" amount kinds-of-coins)
  (display "===\n")
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount
                     (- kinds-of-coins 1))
                 (cc (- amount
                        (first-denomination kinds-of-coins))
                     kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)))

;;                                             (cc 5 2)
;;                   ______________________________|_______
;;                  /                                      \
;;           (+ (cc 5 1)                                   (cc 0 2))
;;                  |                                          1
;;       (+ (cc 5 0)   (cc 4 1))
;;           /             |
;;          0   (+ (cc 4 0)   (cc 3 1))
;;                 /              | 
;;                0   (+ (cc 3 0) (cc 2 1)) 
;;                       /            | 
;;                      0  (+ (cc 2 0)  (cc 1 1))
;;                             /            |
;;                            0  (+ (cc 1 0) (cc 0 1)) 
;;                                   /          \
;;                                  0            1
;; total 2

;;                                (cc 15 2)
;;                      (+ (cc 15 1)       (cc 10 2)
;;                          1            (+ (cc 10 1)     (cc 5 2))
;;                                            1       (+ (cc 5 1) (cc 0 2)) 
;;                                                        1          1
;; total 4
