; reverseString function which takes a string in as a parameter and returns it reversed
(define (reverseString str)
	(list->string (reverse (string->list str))))

; isPalindrome function which takes a string in as a parameter, uses reverseString to reverse it, and then determines whether the string passed in the parameter and the reversed string are equal
(define (isPalindrome str)
	(let ([revStr (reverseString str)])
		(string=? str revStr)))

(isPalindrome "racecar") ; #t
(isPalindrome "raceca") ; #f

(define (fib n)
	(if (<= n 2)
		1
		(+ (fib (- n 1)) (fib (- n 2)))))

(fib 5)
