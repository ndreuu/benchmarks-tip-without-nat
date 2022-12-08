
(set-logic HORN)
(declare-fun S_518 (Int) Int)
(declare-fun Z_2209 () Int)
(declare-fun diseqInt (Int Int) Bool)
(declare-fun projS_229 (Int Int) Bool)
(declare-fun isS_485 (Int) Bool)
(declare-fun isZ_485 (Int) Bool)
(assert (forall ((x_57425 Int))
	(projS_229 x_57425 (S_518 x_57425))))
(assert (forall ((x_57428 Int))
	(isS_485 (S_518 x_57428))))
(assert (isZ_485 Z_2209))
(assert (forall ((x_57429 Int))
	(diseqInt (S_518 x_57429) Z_2209)))
(assert (forall ((x_57430 Int))
	(diseqInt Z_2209 (S_518 x_57430))))
(assert (forall ((x_57431 Int) (x_57432 Int))
	(=> (diseqInt x_57431 x_57432) (diseqInt (S_518 x_57431) (S_518 x_57432)))))
(declare-datatypes ((list_276 0)) (((nil_308) (cons_276 (head_552 Int) (tail_552 list_276)))))
(declare-fun diseqlist_276 (list_276 list_276) Bool)
(declare-fun head_553 (Int list_276) Bool)
(declare-fun tail_553 (list_276 list_276) Bool)
(declare-fun isnil_308 (list_276) Bool)
(declare-fun iscons_276 (list_276) Bool)
(assert (forall ((x_57434 Int) (x_57435 list_276))
	(head_553 x_57434 (cons_276 x_57434 x_57435))))
(assert (forall ((x_57434 Int) (x_57435 list_276))
	(tail_553 x_57435 (cons_276 x_57434 x_57435))))
(assert (isnil_308 nil_308))
(assert (forall ((x_57437 Int) (x_57438 list_276))
	(iscons_276 (cons_276 x_57437 x_57438))))
(assert (forall ((x_57439 Int) (x_57440 list_276))
	(diseqlist_276 nil_308 (cons_276 x_57439 x_57440))))
(assert (forall ((x_57441 Int) (x_57442 list_276))
	(diseqlist_276 (cons_276 x_57441 x_57442) nil_308)))
(assert (forall ((x_57443 Int) (x_57444 list_276) (x_57445 Int) (x_57446 list_276))
	(=> (diseqInt x_57443 x_57445) (diseqlist_276 (cons_276 x_57443 x_57444) (cons_276 x_57445 x_57446)))))
(assert (forall ((x_57443 Int) (x_57444 list_276) (x_57445 Int) (x_57446 list_276))
	(=> (diseqlist_276 x_57444 x_57446) (diseqlist_276 (cons_276 x_57443 x_57444) (cons_276 x_57445 x_57446)))))
(declare-fun length_55 (Int list_276) Bool)
(assert (forall ((x_57408 Int) (y_2450 Int) (xs_712 list_276))
	(=> (length_55 x_57408 xs_712) (length_55 (S_518 x_57408) (cons_276 y_2450 xs_712)))))
(assert (length_55 Z_2209 nil_308))
(declare-fun x_57402 (list_276 list_276 list_276) Bool)
(assert (forall ((x_57411 list_276) (z_2210 Int) (xs_713 list_276) (y_2451 list_276))
	(=> (x_57402 x_57411 xs_713 y_2451) (x_57402 (cons_276 z_2210 x_57411) (cons_276 z_2210 xs_713) y_2451))))
(assert (forall ((x_57412 list_276))
	(x_57402 x_57412 nil_308 x_57412)))
(declare-fun rotate_7 (list_276 Int list_276) Bool)
(assert (forall ((x_57413 list_276))
	(rotate_7 x_57413 Z_2209 x_57413)))
(assert (forall ((x_57414 list_276) (x_57415 list_276) (x_57405 Int) (x_57406 list_276) (z_2211 Int))
	(=> (and (x_57402 x_57415 x_57406 (cons_276 x_57405 nil_308)) (rotate_7 x_57414 z_2211 x_57415)) (rotate_7 x_57414 (S_518 z_2211) (cons_276 x_57405 x_57406)))))
(assert (forall ((z_2211 Int))
	(rotate_7 nil_308 (S_518 z_2211) nil_308)))
(assert (forall ((x_57422 Int) (x_57418 Int) (x_57419 list_276) (x_57420 list_276) (xs_714 list_276) (ys_203 list_276))
	(=> (and true (diseqlist_276 xs_714 ys_203) (length_55 x_57422 xs_714) (length_55 x_57422 ys_203) (length_55 x_57418 xs_714) (x_57402 x_57419 xs_714 ys_203) (rotate_7 x_57420 x_57418 x_57419) (x_57402 x_57420 xs_714 ys_203)) false)))
(check-sat)
