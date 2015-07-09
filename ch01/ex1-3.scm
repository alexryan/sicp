;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Exercise 1.3: Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers
;;;
;;; $mit-scheme --load ex1-3.scm 
;;; (q3 2 3 4) => 25
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (square x) (* x x))
;;;(define (max a b) (cond ((> a b) a) (else b)) )
(define (min a b) (cond ((< a b) a) (else b)) )
;;;(define (max3 a b c) (max a (max b c)) )
(define (min3 a b c) (min a (min b c)) )

;;; (sumofsquares 1 2 3) => 14
(define (sumofsquares a b c) (+ (square a) (square b) (square c)) )

;;; (q3 2 3 4) => 25
;;; (q3 4 3 2) => 25
;;; (q3 3 1 4) ==> 25
(define (q3 a b c) (- (sumofsquares a b c) (square (min3 a b c)) ) )

(display (q3 2 3 4))
(display "\n")

