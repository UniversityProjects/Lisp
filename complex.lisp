;; This library implements complex numbers in common lisp

;; Complex Number Definition
(defun complex (Re Im)
  (cons Re Im))

;;  Get Real Part
(defun get-Re (c) 
  (car c))

;; Get Imagninary Part
(defun get-Im (c)
  (cdr c))


;; Sum Complex
;; w = a + ib
;; z = c + id
;; w+z = (a + c) + i(b + d)
(defun sum-complex (c1 c2)
  (let (Re (+ (get-Re c1)
	      (get-Re c2))
	   (let Im (+ (get-Im c1)
		      (get-Im c2))
		(complex Re Im)))))


;; Subtraction Complex
;; w = a + ib
;; z = c + id
;; w*z = (a - c) + i(b - d)
(defun sub-complex (c1 c2)
  (let (Re (- (get-Re c1)
	      (get-Re c2))
	   (let Im (- (get-Im c1)
		      (get-Im c2))
		(complex Re Im)))))


;; Product Complex
;; w = a + ib
;; z = c + id
;; w*z = (ac - bd) + i(ad + bc)
(defun prod-complex (c1 c2)
  (let (Re (- (* (get-Re c1)
		 (get-Im c2))
	      (* (get-Im c1)
		 (get-Re c2)))
	     (let Im (+ (* (get-Re c1)
			   (get-Im c2))
			(* (get-Re c2)
			   (get-Im c1)))
		  (complex Re Im)))))
