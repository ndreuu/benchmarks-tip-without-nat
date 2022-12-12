
(set-logic HORN)
(define-fun Z_24 () Int 0)
(define-fun S_7 ((x Int)) Int (+ x 1))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun projS_7 (Int Int) Bool)
(declare-fun isZ_7 (Int) Bool)
(declare-fun isS_7 (Int) Bool)
(assert (forall ((x_288 Int))
	(projS_7 x_288 (S_7 x_288))))
(assert (isZ_7 Z_24))
(assert (forall ((x_290 Int))
	(isS_7 (S_7 x_290))))
(assert (forall ((x_291 Int))
	(diseqInt Z_24 (S_7 x_291))))
(assert (forall ((x_292 Int))
	(diseqInt (S_7 x_292) Z_24)))
(assert (forall ((x_293 Int) (x_294 Int))
	(=> (diseqInt x_293 x_294) (diseqInt (S_7 x_293) (S_7 x_294)))))
(declare-datatypes ((list_6 0)) (((nil_6) (cons_6 (head_12 Int) (tail_12 list_6)))))
(declare-fun diseqlist_6 (list_6 list_6) Bool)
(declare-fun head_13 (Int list_6) Bool)
(declare-fun tail_13 (list_6 list_6) Bool)
(declare-fun isnil_6 (list_6) Bool)
(declare-fun iscons_6 (list_6) Bool)
(assert (forall ((x_296 Int) (x_297 list_6))
	(head_13 x_296 (cons_6 x_296 x_297))))
(assert (forall ((x_296 Int) (x_297 list_6))
	(tail_13 x_297 (cons_6 x_296 x_297))))
(assert (isnil_6 nil_6))
(assert (forall ((x_299 Int) (x_300 list_6))
	(iscons_6 (cons_6 x_299 x_300))))
(assert (forall ((x_301 Int) (x_302 list_6))
	(diseqlist_6 nil_6 (cons_6 x_301 x_302))))
(assert (forall ((x_303 Int) (x_304 list_6))
	(diseqlist_6 (cons_6 x_303 x_304) nil_6)))
(assert (forall ((x_305 Int) (x_306 list_6) (x_307 Int) (x_308 list_6))
	(=> (diseqInt x_305 x_307) (diseqlist_6 (cons_6 x_305 x_306) (cons_6 x_307 x_308)))))
(assert (forall ((x_305 Int) (x_306 list_6) (x_307 Int) (x_308 list_6))
	(=> (diseqlist_6 x_306 x_308) (diseqlist_6 (cons_6 x_305 x_306) (cons_6 x_307 x_308)))))
(declare-fun last_1 (Int list_6) Bool)
(assert (forall ((x_281 Int) (x_278 Int) (x_279 list_6) (y_22 Int))
	(=> (last_1 x_281 (cons_6 x_278 x_279)) (last_1 x_281 (cons_6 y_22 (cons_6 x_278 x_279))))))
(assert (forall ((x_283 Int))
	(last_1 x_283 (cons_6 x_283 nil_6))))
(assert (last_1 Z_24 nil_6))
(assert (forall ((x_285 Int) (x_280 Int))
	(=> (and true (diseqInt x_285 x_280) (last_1 x_285 (cons_6 x_280 nil_6))) false)))
(check-sat)
