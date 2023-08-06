#lang scheme
;exploring with lambda: 


;creating a lambda addition program: 
(define (abst-1 x y)
  (+ x y)) 



(define (machine-lambda x)
  (lambda (y)
    (abst-1 x y)))


(define procedure-machine(machine-lambda 3))



(procedure-machine 5)


;creating a lambda division program: 
;sample division code 
(/ 4 2) 
(/ 2 4) 


(define (abst-2 x y)
(/ x y))


(define (machine-lambda2 x)
(lambda (y)
  (abst-2 x y)))


(define procedure-machine2(machine-lambda2 4))


(procedure-machine2 2)

;now inversed:

(define inverse-machine (machine-lambda2 2))

(inverse-machine 4)




;Lambda use-case:
;aside from replicating regular named functions, the best use-case for lambda is to hide complexity


;Why does this shit even fucking works:

;So what is happening here is that the initial parameter that the function demands is stored within a named-variable, which hold the value of the function with a given output for the first parameter
;After this happens, the second parameter is 'passed' onto the lambda function
;this means that the second parameter is 'saved' in order to be given a value later, by the user
;once the user gives the value for the second parameter, the function is computed and spits out an output. 


;COMPLEX lambda functions:
;There are 2 ways to create complex lambda functions:
;(1) Hide the function so that it requires no further input from user 
;(2) Hide the function so that it requires the input of the last parameter from user



;1. begin by creating a principle function. This is the function that you will be using lambda to hide it's obscurity 


;2. Then create a named-lambda-function. This function has two components: 
	;(1) Name of the function with one or several parameters 
	;(2)The unamed lambda function
	;	-lambda function contains parameters
	;	-also contains the principle function, with all of it's parameters. 

;3. Now you have to make a decision: 
;	A. Do you want lambda to obscure the function entirely, so that no input is required? (IDK why you would want this, might as well write a normal fucking function with values instead of parameters) 
;	B. Do you want lambda to have any parameters left for the user to give value to?  

;4.	A.  create one variable to take in the param. from the named function, and then create another variable,
;	    This time defined by the previous variable, that takes in the rest of the parameters 
;	    (those in the unamed lambda function) 
	
;	B.Put the values you want to obscure in the named function, and the ones you want the user to give input 
;         too in the unamed function. Then create a variable that takes in the parameters from the named function. 
	  

;(1A) 
(define (principle-complex a b c)
  (- a (* b c)))


(define (machine-complex a)
  (lambda(b c)
    (principle-complex a b c)))


(define operative-complex-a (machine-complex 5))


(define operative-complex-b (operative-complex-a 10 20))


operative-complex-b


;(2A)


(define (principle-complex2 a b c)
  (- a (* b c)))



(define (machine-complex2 a b)
  (lambda(c)
    (principle-complex2 a b c)))



(define operative-complex-a2 (machine-complex2 5 10))


(operative-complex-a2 7)




;(1B) (testing out more than three variables:

;a 5 b 7 c 8 d 9 


(define (principle-complex3 a b c d)
  (+ a (- b (* c d))))


(define (machine-complex3 a)
  (lambda(b c d)
    (principle-complex3 a b c d))) 


(define operative-complex3-a (machine-complex3 5))

(define operative-complex3-b (operative-complex3-a 7 8 9))

operative-complex3-b 


;(2B)

;a 4 b 12 c 14 d 3

(define (principle-complex4 a b c d)
  (+ a (- b (* c d))))

(define (machine-complex4 a b c)
  (lambda (d)
    (principle-complex4 a b c d)))

 (define operative-complex4 (machine-complex4 4 12 14))

 (operative-complex4 3) 


;Mixing up the paremeters!! XD 

;(1C)

;a 7 b 15 c 19 d 4

(define (principle-complex5 a b c d)
  (+ a (- b (* c d))))


(define (machine-complex5 a b)
  (lambda (c d)
    (principle-complex5 a b c d)))


(define operative-complex5 (machine-complex5 7 15))

(operative-complex5 19 4)


;(2C)

;a 32 b 23 c 6 d 14


(define (principle-complex6 a b c d)
  (+ a (- b (* c d))))


(define (machine-complex6 a d)
  (lambda (b c)
    (principle-complex6 a b c d)))


(define operative-complex6 (machine-complex6 32 14))

(operative-complex6 23 6) 


















