;------Note finished yet about 90% done


;Problem 5b LCM method with prime factorization

;(define (test a b c d e f g h i j)
;  (lcm 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20)

;(define (findPrime a)
 ; (
;(* 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20)

;only need to test up to the square root of the number to see if it is a prime because
;any factor GREATER than the square root must have a matching factor LESS than the square root. 
;Test up to the square root and you've tested all combinatinos by default.

(define (square x);squares a number
  (* x x))

  (define (prime? num) ;will check if a number is a prime or not
    (= num (divide num 2)))
  
  ;This function is used to test if a number has a remainder of 0 increasing till it gets to the square root of the number
  ;it is testings. If the remainder does not equal 0 then it is a prime.
  (define (divide num factor)
    (cond ((>(square factor) num) num) 
          ((= (remainder num factor) 0) factor)
          ((divide num (+ factor 1)))))
  
  ;find the prime factors of a number
  ;start by divising by 2 and work your way up through each prime number
  
  (define (factorMain  val );takes the value you want to factorize and passes it to the factorization procedure.
        (factorization val 2))
    
  (define (factorization val factor)
    (cond ((> (square factor) val) (cons val '()));only test possible factors up to the square root of the value you are trying to factorize
          ((equal? (prime? val) #t) (cons val '()));if the value you are want to factorize is a prime then stop
          (else (findPrimeFactors val factor))));this starts to break the non prime number down to its prime factors
          ;((equal? (prime? fact)#t) Doestn' look like I need this test condtion
        
  ;Breaks down a number until it is only left with a prime number and returns a list of all the prime factors.
   (define (findPrimeFactors val factor)
     (if (= (remainder val factor)0) (cons factor (factorization (/ val factor) 2))
           (factorization val (+ factor 1))))

   (define (list-creator start end);creates a list of numbers increasing by 1 where the range is from 'start' to 'end'.
    (if (= start (+ end 1)) '()
        (cons start (list-creator (+ start 1) end))))
  
  (define (counter a)
    (count a 1))
   
   (define (count lis c);counts the number or times each value appears in the list
     (cond ((= (length lis) 1 )
            (cons (car lis) (cons c '())))
           ((= (car lis) (cadr lis))
            (count (cdr lis) (+ c 1)))
           (else 
            (cons (car lis)(cons c (count(cdr lis) 1))))))

   
   (map counter (map factorMain (list-creator 1 20)));finding the LCD for numbers 1 to 20
  

   
  

   
  
  