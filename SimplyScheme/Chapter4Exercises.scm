;Chapter 4 Exercises

;Boring Exercises
;----------------------------------------------------------------4.2
(define (yawn x)
  (+ 3 (* x 2)))

(yawn (/ 8 2)) ;george is hired to eval yawn.
;First george hires Diane to div (/ 8 2) and returns 4
;Now George subs 4 in to yawn (yawn 4).
;George hires adam to take care of the +. 
;But first Adam needs to hire Mike to handly the * so Adam
;knows what to add 3 to. 
;Mike works out (* 4 2)=8 which is returned to Adam.Then 
;Adam goes (+ 3 4) and returns the 7 to george

;---------------------------------------------------------------4.3
(define (f x y)
  (- y x)) ;procedure f will subtract x from y
      
(define (identity x ) x); this will return whatever x is.
(define (three x) 3) ; this will always return 3 no matter
;what arguments you send it
(define (seven) 7);takes no arguments and always returns 7
(define (magic n)
  (- (/ (+ (+ (* 3 n);multiples n by 3
              13);takes result of multiply and adds 13 to it.
           (- n 1);takes 1 away from n. Then adds this to the
           );result above.
        4);divides result above by 4.
     3)) ;takes 3 away from the result above. 


;Real Exercises

;----------------------------------------------------------------4.4

(define (sphere-volume r)
  (* (* (/ 4 3) 3.141592654)
  (* r r r)))
;Scheme can only return one value so expression (*(/ 4 3)...
;will not be returned on the (* r r r) expression will.
;Solution: A wrapping expression of (*) needs to be added
;(* (* (/ 4 3) 3.1415) (* r r r)))

(define (next x)
  (x + 1))
;body syntax is wrong. 
;Solution (+ x 1))

(define (square)
  (* x x))
;No argument x when square was defined. 
;Substitution won't happen and you'll just multiple * x x which
;means nothing.
;Solution (define (square x)

(define (triangle-area triangle)
  (* 0.5 base height))
;base and height are not defined as arguments for triangle-area
;an error will occur.
;Solution: (define (triangle-area base height).

;(define (sum-of-squares (square x) (square y))
;   (+ (square x) (square y)))
;There are 2 arguments with the same name 'square which you can't do.
;Also its tring to invoke the procedure within the definition.
;Solution: (define (sum-of-squares x y)..

;-----------------------------------------------------------4.5
;Fahrenheit to Celsius
  (define (fahr-to-cel f)
    (* (/ 5 9) (- f 32)))
  
 ;Celsius to Fahrenheit
  (define (cel-to-fahr c)
    (+ (* (/ 9 5) c) 32))
  
;------------------------------------------------------------4.6
  (define (square x)
    (* x x))
  
  (define (fourth_a n)
    (* n n n n))
  
  (define (fourth_b n)
    (square (square n)))
  
;------------------------------------------------------------4.7----------------------------------
  (define (abs x);returns the absolute value of x.
    (sqrt (square x)))
  

;------------------------------------------------------------4.8 Scientific Notation--------------------------------------------
 
(define (powerOf10 exp count)
  (cond ((> exp 0) (powerOf10 (- exp 1)(* count 10)))
        ((< exp 0) (powerOf10 (+ exp 1)(/ count 10)))
        (else count)))
 
(define (scientific num exp)
  (* num (powerOf10 exp 1)))
 
;found the function expt afterwards
(define (scientific2 num exp)
  (* num (expt 10 exp)))
 
(scientific2 42 -5)
(scientific 4.2 -5)
 
;------------------------------------------------------4.8 The harder problem for hotshots. Seems to work ok---------------------------
 
 
;finding the coefficient of number with base 10
(define (sci-coefficient_pos num)
  (if (< num 1) (* num 10)
      (sci-coefficient (/ num 10))))
 
(define (sci-coefficient_neg num)
  (if (> num 1)  num
      (sci-coefficient_neg (* num 10))))
 
 
(define (sci-coefficient num)
  (cond ((> num 1) (sci-coefficient_pos num))
        ((< num 1) (sci-coefficient_neg num))
        (else 0)))
 
(sci-coefficient 75800)
 
;finding the exponent of a number with base 10.
 
(define (sci-exponent num)
  (/ (log (/ num (sci-coefficient num ))) (log 10)) )
 
(sci-exponent 75800)
 
;------------------------------------------4.9--------------------------------
 
(define (discount price discount)
  (- price (* (/ discount 100) price)))
 
;(discount 29.9 50)
 
;------------------------------------------4.10--------------------------------
 
(define (tip bill)
  (ceiling (+ bill
              (* bill 0.15))
           )
  )
 
;(tip 19.98)
 

   
 
