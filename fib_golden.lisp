;; implementation of the fibonacci sequence 
;; calculation with the golden ratio formula:
;; Nx = ( (phi)^x - (1 - phi)^x ) / sqrt(5)
;; where phi, the golden ratio, is:
;; phi = 1.6180339887...

(defparameter phi 1.6180339887)

(defun fib_gold (n)
  (if (numberp n)
      (if (integerp n)
	  (if (>= n 0)
	      (floor (/ (- (expt phi n) (expt (- 1 phi) n) ) (sqrt 5)))
	      (error "Argument Is Negative !!!"))
	  (error "Argument Is Not An Integer !!!"))
      (error "Argument Is Not A Number")))