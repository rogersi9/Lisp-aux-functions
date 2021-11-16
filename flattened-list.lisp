(defun flatten-nums-nodup (lst)

  (cond ((null lst) nil) ; if list is null

        ((atom (car lst)) ; if first element is an atom
                            
         (cond ((not(numberp (car lst))) (remove-duplicates (flatten-nums-nodup (cdr lst)) :from-end t)) ; check if first element is not a number

               (t (remove-duplicates (cons (car lst) (flatten-nums-nodup (cdr lst))) :from-end t)))) ; if first element is a number

        (t (remove-duplicates (append (flatten-nums-nodup (car lst)) (flatten-nums-nodup (cdr lst))) :from-end t)))) ; if car is not an atom

;Example
(flatten-nums-nodup '(1 2 (3 1) (a 2.5) (2 4.5) ((1 2))))