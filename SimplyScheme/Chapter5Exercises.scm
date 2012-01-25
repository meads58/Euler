;Chapter 5 Exercises

;Boring Exercises
;5.1
;(sentence '() '(me mine)); The '() is empty so just me mine shows.

;(word '23 34)

;(bf 'a);returns noting becasue it is empty after the 'a

;(bf '(aye));again returns nothing as there is only one sentence

;(count (first '(Maggie mae)));will return 6 as this is the length of first word maggie.

;(se "" '() "" '());returns just a sentence of "" "" as the '() are empty they return nothing.

;(count (se "" '() "" '() ));returns 2 becasue there are 2 empty words in the sentence

;----------------5.2

(define (f1 x y)
  (se (bf x) (bl y)))

(define (f2 x y)
  (se (f1 x y) (word (first x) (last y))))

(define (f3 x y)
  (se x x))

(define (f4 x y)
  (word (first (bf x)) (first (bf y))))

;-----------------5.3
;(first 'mezzanine) is being applied to a word so it finds the first letter.
;(first '(mezzanine)) is applied to a sentence so it finds the first word in the sentence.

;-----------------5.4
;(first (square 7)) will evaluate the procedure square which returns 49. Then it will take the first value which is 4.
;(first '(square 7)) treats the square 7 as a sentence and will return the first word e.g. square.

;------------------5.5
;word combines words to return one big word e.g. no spaces abc. Whilst se treats everything as words too but it keeps the spaces between the words its combining e.g. a b c.

;-------------------5.6
;bf is an abbreviation to butfirst

;-------------------5.7
;(bf 'x) returns an empty word ""
;(bf '(x)) returns an empty sentence '()

;-------------------5.8
;think they all are

;-------------------5.9
(se (word (bl (bl (first '(make a))));make mak ma
          (bf (bf (last '(baseball mitt)))));mitt itt tt
    ;matt
    (word (first 'with) (bl (bl (bl (bl 'rigidly))));rigidl rigid rigi rig 
          ;wrig
          (first 'held) (first (bf 'stitches))));titches ht
;matt wright

;---------------------5.10
;A word = need to give butfirst a word to return a word. A 1 word sentence e.g. (frist '(test)) 
;A sentence = need to give butfirst a sentence e.g. in '().

;---------------------5.11
;---------------------5.12

;-------------------REAL EXERCISES----------------
;5.13
; ''bannana evaluates to itself and returns the argument as is => returns ''bananna

;(first ''bannana) is also (first (quote (quote bannna))). So the first procedure returns just the empty quote procedure


;---------5.14
(define (third x)
  (if (< (count x) 3) '(must be at least 3 letters or 3 words)
   (first (butfirst (butfirst x)))))

;(third 't)
;(third 'test)
;(third '(this is))
;(third '(this is a test))

;---------5.15
(define (first-two w)
  (word (first w) (first (butfirst w))))

;(first-two 'amulatory)


;---------5.16
(define (two-first w1 w2)
  (word (first w1) (first w2)))
;(two-first 'test 'case)

(define (two-first-sent s)
  (word (first (first s)) 
        (first (first (butfirst s)))))
               
;(two-first-sent '(brian epstein))

;---------5.17

(define (knight name)
  (se 'sir name))

;(knight '(david wessel))

;---------5.18
(define (ends word)
  (word (first word) (last word)))

;(ends 'john)
;Error becasue 'word' is a key word to a primitive procedure so you can't use it as a variable. When 'word' is evaluated in the body its the procedure and not the variable that is being evaluated. 

;To fix change the var to 'wd' instead of 'word'

;----------5.19

(define (insert-and s)
  (se (butlast s) 'and (last s)))

;(insert-and '(john bill wayne fred joey))

;------------5.20

(define (middle-names s)
  (se (butfirst (butlast s)) ))

;(middle-names '(james paul mccartney))
;(middle-names '(john ronald raoul tolkein))
;(middle-names '(bugs bunny))
;(middle-names '(petter blair denis bernard noone))

;-----------5.21
(define (query s)
  (se (first (butfirst s)) (first s) 
      (butfirst (butfirst (butlast s)))
      (word (last s)'?)))

;(query '(you are experienced))
;(query '(i should have known better))