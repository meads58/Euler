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


(define (square x)
  (* x x))

(define (eulids m n) ;Creates a list of triples 
   (list (calcA m n)
         (calcB m n)
         (calcC m n)))

(define (calcA m n) ;Calculates side A
  (* 2 m n))

(define (calcB m n) ;Calculates side B
  (-(square m)(square n)))

(define (calcC m n) ;Calculates side C the hypotenuse
  (+(square m) (square n)))

(define (total m n d);Adds a b c togethers and multiples by the d parameter. Increase d will find more combinations of triples
  (* d (apply + (eulids m n))))

; Does the pythagorean triple add up to the max value?
(define (eulids? m n d max)
  (cond ((= d 100000) '(Can't find a triple matching that total))
        ((> (total m n d) (* 2 max)) (eulids? 2 1 (+ d 1) max))
        ((= (total m n d) max)
          (* d (apply * (eulids m n))))          
            ;and (= (total m n d) max) 
            ;  (< (calcA m n) (calcB m n))
            ;  (< (calcB m n) (calcC m n)))
            ;(se(eulids m n) '(multiply each value by ) d))
        ((< (+ n 1) m) (eulids? m (+ n 1) d max))
        ((= (+ n 1) m) (eulids? (+ m 1) 1 d max))
        (else #f)))


(eulids? 2 1 1 1000)