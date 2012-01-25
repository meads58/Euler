;Chapter 7 exercises
 
;--------------------------Boring Exercises-------------
;-----------------7.1
(define (vowel? letter)
  (member? letter 'aeiou))
 
(define (gertrude wd)
  (se (if (vowel? (first wd)) 'an 'a)
      wd
      'is
      (if (vowel? (first wd)) 'an 'a)
      wd
      'is
      (if (vowel? (first wd)) 'an 'a)
      wd))
 
 
(define (gertrude wd)
  (let ((article (if (vowel? first wd)) 'an 'a))
    (se article 'is article 'is article)))
 
;-------------------------7.2
(let ((pi (3.4159))
      (pie ('lemon meringue)))
  (se 'pi is pi '((but pie) is pie)))
 
;---------------------------------REAL EXERCISES-------------
;------------------------7.3
(define (superlative adjective word1)
  (se (word adjective 'est) word1))
 
;--------------------------7.4
(define (sum-square a b)
  (let ((+ *)
        (* +))
    (* (+ a a (+ b b)))))
 
;create a variable with symbol + and * which are passed in with their respective primitive procedures.
 
 

 