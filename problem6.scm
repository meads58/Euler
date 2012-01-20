;Problem6 Difference between the sum of the squares 
;of the first one hundred natural numbers and the 
;square of the sum.

(define (numbers-upto num)
  (define (recurse n list)
    (if (> n num)
	(reverse list)
	(recurse (+ n 1) (cons n list))))
  (recurse 1 '()))

(define (sum-list nums)
  (define (recurse sum nums)
    (if (null? nums)
	sum
	(recurse (+ sum (car nums)) (cdr nums))))
  (recurse 0 nums))
  
(define (sum-diff n)
  (let* ((nums (numbers-upto n))
	 (squares (map (lambda (n) (* n n)) 
		       nums)))
    (let ((sum-nums (sum-list nums))
	  (sum-squares (sum-list squares)))
      (- sum-squares (* sum-nums sum-nums)))))
    
    
  

;Sum will add up all numbers in a range starting for 0 
;up to the 'size' you specify.
;count is a counter you set to 0.
;total is the running total of values you are adding.
;size is how big the range of values you want to sum is

(define (sum-with-fn count total size fn)
  (if (> count size) 
      total
      (sum-with-fn (+ count 1) 
		   (+ total (fn count)) 
		   size 
		   fn)))

(define (sum-with-fn size fn)
  (define (recurse  count total)
    (if (> count size) 
	total
	(recurse (+ count 1) 
		 (+ total (fn count)))))
  (recurse 0 0))
		


(define (sum size);e.g. (1 + 2...+ size)^2 
  (sum-with-fn size (lambda (n) n)))

(define (sum-of-squares size)
  (sum-with-fn size square))


(define (sum-squared2 n)
  (let ((s (sum 0 0 n)))
    (* s s)))
(define (square x);squares a value of x
  (* x x))

(define (sum-diff2 n)
  (-  (sum-squared2 n) (sum-of-squares 0 0 n))) 

;whoa I see you can do this in 1 line of code in scala!! At least I have less code
;then some of the answers in C/C++ haha.