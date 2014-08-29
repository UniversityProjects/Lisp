(defun fact (n)
  (if (numberb n)
      (if (integerp n)
	  (if (<= 0 n)
	      (if (zerop n)
		  1
		  (* n (fact (- n 1))))
	      (error "Number Is Negative!!!"))
	  (error "Argument Is Not An Integer!!!"))
      (error "Argument Is Not A Number!!!")))
	  