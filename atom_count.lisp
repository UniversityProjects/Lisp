;; This function calculates the number of atoms
;; in the list L
;; If L is the empty list (), return 0
;; If L is an atom, return 1
;; If L is not an atom, check the first element of L
;; If the first element of L is an atom,  return 
;; 1 + the number of atoms ;; of the rest of the list
;; Else, if the first element of L is a list,
;; counts the atoms of the first element and sums it
;; with the number of atoms of the rest of the list

(defun atom_count (L)
  (cond ((null L) 0)
	((atom L) 1) 
	((not (atom L)) (if (atom (car L)) 
				  (+ 1 (atom_count (cdr L)))
				  (+ (atom_count (car L)) 
				     (atom_count (cdr L)))))))