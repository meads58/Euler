;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (fib a b c total)
  (cond ((and (< c 40) (remainder c 2) 0)
         (fib b total (+ total b)))
         (else (fib b (+ total b) total))))
