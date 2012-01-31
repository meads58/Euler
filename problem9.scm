;;Project Euler question 9
;A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
;
;a2 + b2 = c2
;For example, 32 + 42 = 9 + 16 = 25 = 52.
;
;There exists exactly one Pythagorean triplet for which a + b + c = 1000.
;Find the product abc.

;a^2 + b^2 = c^2
;a < b < c
;a + b + c = 1000


(define (check-Order? a b c)
  (if (and (< a b) (< b c)) #t
      #f))


(define (check1000? a b c)
  (if (= (+ a b c) 1000) #t
      #f)) 

(define (check-triple? a b c)
  (if (= (+ (* a a) (* b b)) (* c c)) #t
      #f))

          
(check-Order? 1 1 1)








