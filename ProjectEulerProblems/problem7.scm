#lang racket

;Find the 10001st prime
(define (square x)
  (* x x))

(define (prime? num) ;will check if a number is a prime or not
    (= num (divide num 2)))
  
  ;This function is used to test if a number has a remainder of 0 increasing till it gets to the square root of the number
  ;it is testings. If the remainder does not equal 0 then it is a prime.
  (define (divide num factor)
    (cond ((>(square factor) num) num) 
          ((= (remainder num factor) 0) factor)
          ((divide num (+ factor 1)))))
  
  (define (find_primes start count which_prime)
    (cond ((= count which_prime) start)
          ((equal? (prime? start) #t)
           (if (= (+ count 1) which_prime) start
               (find_primes (+ start 1) (+ count 1) which_prime)))
          (else
           (find_primes (+ start 1) count which_prime))))
  
  (find_primes 2 0 10001)