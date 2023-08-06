#lang scheme

;playing with lambda

(define a 1)
(define b 2)

(define double
  (lambda (x)
    (* 2 x)))


(double a)
(double b) 

;This can still be even more easily accomplished by just a regular expression tho :/ 

(define (double1 x)
  (* 2 x))

(double1 a)
(double1 b)




;Function within a function maybe?


(define (triple x) ;writing extra function to combine with double1 function 
  (* 3 x))

(triple 3) ;testing

;function within a function 
(double1 (triple 3))


;now test with lambda

;(define x 5) 

;(double1
 ;  (lambda (x)
 ;    (* 3 x)))
;yeah...that didnt work




;TESTING string-split native:

;with only one argument, defaluts the second arg, the 'splitter' to " ". 
(string-split "  foo bar  baz  ")
(string-split "gay man")
(string-split "gay-man")
(string-split "gayman") 

;with 2 arguments, here you set the 'splitter' string argument/parameter yourself. 
(string-split "gay,man")
(string-split "gay,man" ",")
(string-split "caracaracaracaracar" "a") 



;sample code from Discord:

(define (split-by x)
    (lambda (s) (string-split s x)))


 (define comma-split (split-by ","))



 (comma-split "abc,def")


;how this works:
;when defining comma split, planting "," as the input for split-by occupies the 's' varaible in the native string-split 
;'x' in split-by is kept as the variable to be manually inputted in the string-split native function.
;so to use comma-split, one needs a string with at least one come to run into the string-split native, and split the string by the comma. 










     


















