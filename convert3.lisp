(defun digitp (d)
  (and (integerp d) (>= d 0) (<= d 9)))


(defun digitp3 (c0 c1 c2)
  (if (and (digitp c0) (digitp c1) (digitp c2))
      (+ c0 (* 10 c1) (* 100 c2))
      (error "At Least One Digit Is Wrong")))