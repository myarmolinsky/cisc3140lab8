; reverseString function which takes a string in as a parameter and returns it reversed
(define (reverseString str)
  (list->string (reverse (string->list str))))

; isPalindrome function which takes a string in as a parameter, uses reverseString to reverse it, and then determines whether the string passed in the parameter and the reversed string are equal
(define (isPalindrome str)
  (let ([revStr (reverseString str)])
    (string=? str revStr)))

(isPalindrome "racecar") ; #t
(isPalindrome "raceca") ; #f

; sumOfSeries function which uses a lambda expression and takes a list as a parameter and recursively finds the sum of all of the members of the list by using car to get the first member and then cdr to put the rest of the list into another iteration of sumOfSeries.  The recursion ends when a null list is passed as a parameter
(define sumOfSeries
  (lambda (ls)
    (if (null? ls)
      0
      (+ (car ls) (sumOfSeries (cdr ls))))))

(sumOfSeries '(1 5 10 -4)) ; 12
(sumOfSeries '(4 13 6 0)) ; 23

; calculate function which takes in 2 parameters and then uses cond to check if each is an integer.  If either is not an integer, the user is told that both parameters must be integers and which parameter is not an integer.  If both parameters are integers then the sum of them is returned
(define (calculate a b)
  (cond
    [(not (integer? a)) "Both parameters must be integers, the first parameter is not an integer"]
    [(not (integer? b)) "Both parameters must be integers, the second parameter is not an integer"]
    [(+ a b)]))

(calculate 3 4) ; 7
(calculate #t 4) ; Both parameters must be integers, the first parameter is not an integer
(calculate 3 "egg") ; Both parameters must be integers, the second parameter is not an integer