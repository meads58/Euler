;Problem6 Difference between the sum of the squares 
;of the first one hundred natural numbers and the 
;square of the sum.

;Sum will add up all numbers in a range starting for 0 
;up to the 'size' you specify.
;count is a counter you set to 0.
;total is the running total of values you are adding.
;size is how big the range of values you want to sum is
(define (sum count total size);e.g. (1 + 2...+ size)^2 
  (if (= count size) (square (+ total count))
      (sum (+ count 1) (+ total count) size)))

(define (square x);squares a value of x
  (* x x))

(define (sum-of-squares count total size);sum of the squares of numbers up to size
  (if (= count size) (+ total (square count)); e.g. 1^2 + 2^2 + 3^2..+ size^2
      (sum-of-squares (+ count 1) (+ total (square count)) size)))

(define (difference x y)
  (- x y))

(difference  (sum 0 0 100) (sum-of-squares 0 0 100)) 

;whoa I see you can do this in 1 line of code in scala!! At least I have less code
;then some of the answers in C/C++ haha.