
(set-logic HORN)
(define-fun Z_2040 () Int 0)
(define-fun S_466 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_339 0)) (((false_339) (true_339))))
(declare-fun diseqBool_156 (Bool_339 Bool_339) Bool)
(declare-fun isfalse_156 (Bool_339) Bool)
(declare-fun istrue_156 (Bool_339) Bool)
(assert (isfalse_156 false_339))
(assert (istrue_156 true_339))
(assert (diseqBool_156 false_339 true_339))
(assert (diseqBool_156 true_339 false_339))
(declare-fun and_339 (Bool_339 Bool_339 Bool_339) Bool)
(declare-fun or_346 (Bool_339 Bool_339 Bool_339) Bool)
(declare-fun hence_339 (Bool_339 Bool_339 Bool_339) Bool)
(declare-fun not_344 (Bool_339 Bool_339) Bool)
(assert (and_339 false_339 false_339 false_339))
(assert (and_339 false_339 true_339 false_339))
(assert (and_339 false_339 false_339 true_339))
(assert (and_339 true_339 true_339 true_339))
(assert (or_346 false_339 false_339 false_339))
(assert (or_346 true_339 true_339 false_339))
(assert (or_346 true_339 false_339 true_339))
(assert (or_346 true_339 true_339 true_339))
(assert (hence_339 true_339 false_339 false_339))
(assert (hence_339 false_339 true_339 false_339))
(assert (hence_339 true_339 false_339 true_339))
(assert (hence_339 true_339 true_339 true_339))
(assert (not_344 true_339 false_339))
(assert (not_344 false_339 true_339))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun projS_189 (Int Int) Bool)
(declare-fun isZ_433 (Int) Bool)
(declare-fun isS_433 (Int) Bool)
(assert (forall ((x_55258 Int))
	(projS_189 x_55258 (S_466 x_55258))))
(assert (isZ_433 Z_2040))
(assert (forall ((x_55260 Int))
	(isS_433 (S_466 x_55260))))
(assert (forall ((x_55261 Int))
	(diseqInt Z_2040 (S_466 x_55261))))
(assert (forall ((x_55262 Int))
	(diseqInt (S_466 x_55262) Z_2040)))
(assert (forall ((x_55263 Int) (x_55264 Int))
	(=> (diseqInt x_55263 x_55264) (diseqInt (S_466 x_55263) (S_466 x_55264)))))
(declare-datatypes ((list_242 0)) (((nil_272) (cons_242 (head_484 Int) (tail_484 list_242)))))
(declare-fun diseqlist_242 (list_242 list_242) Bool)
(declare-fun head_485 (Int list_242) Bool)
(declare-fun tail_485 (list_242 list_242) Bool)
(declare-fun isnil_272 (list_242) Bool)
(declare-fun iscons_242 (list_242) Bool)
(assert (forall ((x_55266 Int) (x_55267 list_242))
	(head_485 x_55266 (cons_242 x_55266 x_55267))))
(assert (forall ((x_55266 Int) (x_55267 list_242))
	(tail_485 x_55267 (cons_242 x_55266 x_55267))))
(assert (isnil_272 nil_272))
(assert (forall ((x_55269 Int) (x_55270 list_242))
	(iscons_242 (cons_242 x_55269 x_55270))))
(assert (forall ((x_55271 Int) (x_55272 list_242))
	(diseqlist_242 nil_272 (cons_242 x_55271 x_55272))))
(assert (forall ((x_55273 Int) (x_55274 list_242))
	(diseqlist_242 (cons_242 x_55273 x_55274) nil_272)))
(assert (forall ((x_55275 Int) (x_55276 list_242) (x_55277 Int) (x_55278 list_242))
	(=> (diseqInt x_55275 x_55277) (diseqlist_242 (cons_242 x_55275 x_55276) (cons_242 x_55277 x_55278)))))
(assert (forall ((x_55275 Int) (x_55276 list_242) (x_55277 Int) (x_55278 list_242))
	(=> (diseqlist_242 x_55276 x_55278) (diseqlist_242 (cons_242 x_55275 x_55276) (cons_242 x_55277 x_55278)))))
(declare-fun barbar_6 (Bool_339 Bool_339 Bool_339) Bool)
(assert (forall ((y_2273 Bool_339))
	(barbar_6 true_339 true_339 y_2273)))
(assert (forall ((x_55227 Bool_339))
	(barbar_6 x_55227 false_339 x_55227)))
(declare-fun x_55217 (Bool_339 Int Int) Bool)
(assert (forall ((x_55228 Bool_339) (y_2275 Int) (x_55219 Int))
	(=> (x_55217 x_55228 x_55219 y_2275) (x_55217 x_55228 (S_466 x_55219) (S_466 y_2275)))))
(assert (forall ((x_55219 Int))
	(x_55217 false_339 (S_466 x_55219) Z_2040)))
(assert (forall ((z_2041 Int))
	(x_55217 false_339 Z_2040 (S_466 z_2041))))
(assert (x_55217 true_339 Z_2040 Z_2040))
(declare-fun elem_18 (Bool_339 Int list_242) Bool)
(assert (forall ((x_55233 Bool_339) (x_55234 Bool_339) (x_55235 Bool_339) (z_2042 Int) (xs_651 list_242) (x_55220 Int))
	(=> (and (x_55217 x_55234 x_55220 z_2042) (elem_18 x_55235 x_55220 xs_651) (barbar_6 x_55233 x_55234 x_55235)) (elem_18 x_55233 x_55220 (cons_242 z_2042 xs_651)))))
(assert (forall ((x_55220 Int))
	(elem_18 false_339 x_55220 nil_272)))
(declare-fun union_2 (list_242 list_242 list_242) Bool)
(assert (forall ((x_55239 list_242) (z_2043 Int) (xs_652 list_242) (y_2277 list_242))
	(=> (and (union_2 x_55239 xs_652 y_2277) (elem_18 true_339 z_2043 y_2277)) (union_2 x_55239 (cons_242 z_2043 xs_652) y_2277))))
(assert (forall ((x_55243 list_242) (z_2043 Int) (xs_652 list_242) (y_2277 list_242))
	(=> (and (union_2 x_55243 xs_652 y_2277) (elem_18 false_339 z_2043 y_2277)) (union_2 (cons_242 z_2043 x_55243) (cons_242 z_2043 xs_652) y_2277))))
(assert (forall ((x_55244 list_242))
	(union_2 x_55244 nil_272 x_55244)))
(declare-fun x_55222 (Bool_339 Bool_339 Bool_339) Bool)
(assert (forall ((x_55245 Bool_339))
	(x_55222 x_55245 true_339 x_55245)))
(assert (forall ((y_2278 Bool_339))
	(x_55222 false_339 false_339 y_2278)))
(declare-fun subset_0 (Bool_339 list_242 list_242) Bool)
(assert (forall ((x_55247 Bool_339) (x_55248 Bool_339) (x_55249 Bool_339) (z_2044 Int) (xs_653 list_242) (y_2279 list_242))
	(=> (and (elem_18 x_55248 z_2044 y_2279) (subset_0 x_55249 xs_653 y_2279) (x_55222 x_55247 x_55248 x_55249)) (subset_0 x_55247 (cons_242 z_2044 xs_653) y_2279))))
(assert (forall ((y_2279 list_242))
	(subset_0 true_339 nil_272 y_2279)))
(assert (forall ((x_55252 list_242) (x_55225 list_242) (y_2280 list_242))
	(=> (and true (diseqlist_242 x_55252 y_2280) (subset_0 true_339 x_55225 y_2280) (union_2 x_55252 x_55225 y_2280)) false)))
(check-sat)
