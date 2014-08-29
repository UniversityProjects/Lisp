(defun fib (f)
  (if (numberp f) ;; argument f must be a number
      (if (integerp f) ;; argument f must be an integer
	  (if (<= 0 f) ;; argument f must be non negative
	      (if (or (zerop f) (= f 1)) ;; if argument is zero or one, return one
		  1
		  (+ (fib (- f 1)) ;; return fib(n-1)+fib(n-2)
		     (fib (- f 2))))
	      (error "Argument Is Negative"))
	  (error "Argument Is Not An Integer Number"))
      (error "Argument Is Not A Number!!!")))
	 