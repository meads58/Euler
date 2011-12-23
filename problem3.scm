;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname problem3) (read-case-sensitive #t) (teachpacks ((lib "convert.ss" "teachpack" "htdp") (lib "docs.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.ss" "teachpack" "htdp") (lib "docs.ss" "teachpack" "htdp")))))
(define (find-max fromList) ; from the list of prime numbers created by 'list-primes' this function finds the largest value from the list.
  (if (null?(cdr fromList)) ; I copied this code but it works fine for what I needed.
      (car fromList)
      (if(>(car fromList)(find-max(cdr fromList)))
      (car fromList)
      (find-max (cdr fromList)))))
               

(define (factors? p n) ;this is the main part it finds all the factors of a number with a simple
  (cond ((> p (count n)) '())
        ((= (remainder n p) 0) (cons p (factors? (+ p 1) n)))
        (else (factors? (+ p 1) n))))      
 
(define (count sqn)
  (sqrt sqn))


    
   
 (define (list-primes count factor-list) ;here you take the list of factors and filter the list down to prime values only
   (if (> count (- (length factor-list) 1)) '()
       (if (= (length (factors? 1 (list-ref factor-list count))) 1)
           (cons (list-ref factor-list count) (list-primes (+ count 1) factor-list))
       (list-primes (+ count 1) factor-list))))
 
 (find-max (list-primes 0 (factors? 1 600851475143)));
    
         