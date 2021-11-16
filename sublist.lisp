
(defun sub-list (args start &optional (end nil))
  (cond
    
    ((null args) '()); if list is empty 
    
    ((and (< start 1) (or (eq end nil) (> end (list-length args)))) (sub-list args 1 nil)); start is out of bounds and end is nil or out of bounds
    
    ((and (< start 1) (or (eq end nil) (< end (+ 1 (list-length args))))) (sub-list args 1 end)); start is out of bounds replace with 1
    
    ((or (eq end nil) (> end (list-length args)))(sub-list args start (list-length args))); if end nil replace with list length
    
    ((> start 1) (sub-list (cdr args)(- start 1)(- end 1))); splice from start
    
    ((> end 0) (cons (car args) (sub-list (cdr args) start (- end 1)))); splice from end
    
    (t nil); base case
    
    ))


; Examples 
(sub-list '(1 2 3 4 5 6 7 8 9 10) 5 )
(sub-list '(1 (2 (2 2)) 3 4 5 6 7 8 9 10) 2 5)