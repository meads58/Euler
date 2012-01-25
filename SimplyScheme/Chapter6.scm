;Chapter 6 exercises
;----------------Boring Exercises
;----------6.1
;nowhere man
;3 becasue empty? is called and there is nothing passed in so empty? compares nothing with nothing and returns #t
;goes

;----------6.2
;(or #f #f #f #t) 
  ;#t
;(and #f #f #f #t)
 ; #f
;(or (= 2 3) (= 4 3))
  ;#f
;(not #f)
  ;#t
;(or (not (= 2 3)) (= 4 3))
  ;#t
;(or (and (= 2 3) (= 3 3)) (and (< 2 3) (< 3 4)))
  ;#t

;----------6.3
(define (sign number)
  (cond ((< number 0) 'negative)
        ((= number 0) 'zero)
        (else 'positive)))
;---------6.4
(define (utensil meal)
  (if (equal? meal 'chinese) 'chopsticks
      'fork))
;(utensil 'fishnChips)
;(utensil 'chinese)

;------------------------REAL EXERCISES----
;6.5

(define (european-time ET)
  (cond ((equal? ET '(12 am)) 24)
        ((equal? (last ET) 'am) (first ET)) 
        (else(+ 12 (first ET)))))

;(european-time '(8 am))
;(european-time '(4 pm))
;(european-time '(12 am))

(define (american-time AT)
  (cond ((equal? AT 24) (se 12 '(am)))
        ((equal? AT 12) (se 12 '(pm)))
        ((> AT 12) (se (- AT 12) '(pm)))
        (else(se AT '(am)))))

;(american-time 21)
;(american-time 12)
;(american-time 24)

;--------------6.6
(define (teen? age)
  (if (and (>= age 13) (<= age 19)) #t
           #f))
;(teen? 13)
;(teen? 19)
;(teen? 15)
;(teen? 10)
;(teen? 20)

;----------------6.7
(define (type-of anything)
  (cond ((number? anything) 'number)
        ((word? anything) 'word)
        ((boolean? anything) 'boolean)
        (else 'sentence)))

;(type-of '(getting better))
;(type-of 'revolution)
;(type-of (= 3 3))

;--------------------6.8
(define (vowel? fletter)
  (member? fletter 'aeiou))

(define (indef-article article)
  (if (vowel? (first article)) (se 'An article)
      (se 'A article)))

;(indef-article 'beatle)
;(indef-article 'album)

;------------------6.9
(define (thismany num noun)
  (if (= num 1) (se num noun)
      (se num (word noun 's))))

;(thismany 1 'partridge)
;(thismany 3 'french-hen)

;--------------------6.10
(define (sort2 numSe)
  (if (< (first numSe) (last numSe)) numSe
      (se (last numSe) (first numSe))))

;(sort2 '(5 7))
;(sort2 '(7 5))

;-----------------------6.11
(define (febDate day year)
  (cond ((> day 29) #f)
        ((and (= day 29) (> (remainder year 4) 0)) #f)
        ((and (= day 29) (> (remainder year 100) 0) 
              (>(remainder year 400)0)) #f)
        (else #t)))

(define (valid-date? day mon yr)
  (cond ((or (<= day 0) (<= mon 0) (<= yr 0)) #f)
        ((and (member? mon '(4 6 9 11)) (> day 30)) #f)
        ((> day 31) #f)
        ((> mon 12) #f)
        ((= mon 2)(febDate day yr))
        (else #t)))
        

;(valid-date? 4 10 1949)
;(valid-date? 4 20 1776)
;(valid-date? 0 5 1992)
;(valid-date? 29 2 1900)
;(valid-date? 29 2 2000)

;-------------------6.12
(define (plural noun)
  (cond ((member? noun '(piano cello disco logo patio radio photo))
         (word noun 's))
        ((and (equal? (last noun) 'y) (vowel? (last (butlast noun))))
         (word  noun 's))
        ((and (equal? (last noun) 'y) (equal? (vowel? (last (butlast noun))) #f))
         (word (butlast noun) 'ies))
        ((or (member? (word (last(butlast noun)) (last noun)) '(ss zz ch sh))
                            (member? (last noun) '(s x)))
                            (word noun 'es))
        ((and (equal? (last noun) 'o) (vowel? (last (butlast noun))))
         (word noun 's))
        ((and (equal? (last noun) 'o) (equal? (vowel? (last(butlast noun))) #f))
         (word noun 'es))
        ((equal? (last noun) 'f)
         (word (butlast noun) 'ves))
        ((equal? (word (last (butlast noun)) (last noun)) 'fe)
         (word (butlast (butlast noun)) 'ves))
        (else (word noun 's))))

;(plural 'boat)
;(plural 'book)
;(plural 'box)
;(plural 'bus)
;(plural 'key)
;(plural 'day)
;(plural 'baby)
;(plural 'country)
;(plural 'elf)
;(plural 'theif)
;(plural 'kangaroo)
;(plural 'piano)
;(plural 'church)
;(plural 'glass)
;(plural 'bush)

;------------------------------6.13
(define (title name)
   (word (first name)))

(define (greet2 name)
  (if (equal? (last name) 'jr) 
      (greet2 (butlast name))
      (cond ((equal? (title name) 'dr)
             (se 'hello (title name) (last name)))
            ((equal? (title name) 'queen)
             (se 'hello 'your 'majesty))
            ((equal? (title name) 'sir)
             (se 'hello (title name) (last name)))
            ((equal? (title name) 'lord)
             (se 'hello (title name) (last name)))
            (else (se 'hello (first name))))))


;(greet2 '(dr marie curie))
;(greet2 '(dr martin luther king jr))
;(greet2 '(john lennon))
;(greet2 '(queen elizabeth))
;(greet2 '(lord george gordon byron))
;(greet2 '(sir richard hadlee))
 
;-------------------------------6.14
(define (describe-time seconds)
  (cond ((< seconds 60)
         (se seconds 'seconds))
        ((< seconds 3600)
         (se (/ seconds 60) 'minutes))
        ((< seconds 86400)
         (se (/ seconds 3600)'hours))
        ((< seconds 31556926)
         (se (/ seconds (* 86400 365)) 'years))
        ((< seconds 315569260)
         (se (/ seconds (* 86400 365 10)) 'decades))
        (else (se (/ seconds 3155692600) 'centuries))))
              
      
;(describe-time 930)
;(describe-time 45)
;(describe-time 200000)
;(describe-time 30000000000)
               