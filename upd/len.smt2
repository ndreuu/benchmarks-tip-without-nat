(set-logic HORN)

(define-fun Z_24 () Int 0)

(declare-datatype list ((nil) (cons (car Int) (cdr list))))

(declare-fun len (list Int) Bool)
(assert (len nil Z_24))
(assert (forall ((xs list) (x Int) (n Int))
	(=> (len xs n) (len (cons x xs) (+ n 1)))))

(assert (forall ((xs list) (x Int) (ys list) (y Int) (z Int))
	(=> (and (len xs x) (len (cons y xs) z) (= x z)) false)))

(check-sat) 
