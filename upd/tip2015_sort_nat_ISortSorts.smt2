
(set-logic HORN)
(declare-fun zero_19 () Int)
(declare-fun succ_19 (Int) Int)
(declare-datatypes ((Bool_108 0)) (((false_108) (true_108))))
(declare-fun diseqBool_49 (Bool_108 Bool_108) Bool)
(declare-fun isfalse_49 (Bool_108) Bool)
(declare-fun istrue_49 (Bool_108) Bool)
(assert (isfalse_49 false_108))
(assert (istrue_49 true_108))
(assert (diseqBool_49 false_108 true_108))
(assert (diseqBool_49 true_108 false_108))
(declare-fun and_108 (Bool_108 Bool_108 Bool_108) Bool)
(declare-fun or_109 (Bool_108 Bool_108 Bool_108) Bool)
(declare-fun hence_108 (Bool_108 Bool_108 Bool_108) Bool)
(declare-fun not_108 (Bool_108 Bool_108) Bool)
(assert (and_108 false_108 false_108 false_108))
(assert (and_108 false_108 true_108 false_108))
(assert (and_108 false_108 false_108 true_108))
(assert (and_108 true_108 true_108 true_108))
(assert (or_109 false_108 false_108 false_108))
(assert (or_109 true_108 true_108 false_108))
(assert (or_109 true_108 false_108 true_108))
(assert (or_109 true_108 true_108 true_108))
(assert (hence_108 true_108 false_108 false_108))
(assert (hence_108 false_108 true_108 false_108))
(assert (hence_108 true_108 false_108 true_108))
(assert (hence_108 true_108 true_108 true_108))
(assert (not_108 true_108 false_108))
(assert (not_108 false_108 true_108))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_53 (Int Int) Bool)
(declare-fun iszero_19 (Int) Bool)
(declare-fun issucc_19 (Int) Bool)
(assert (forall ((x_12449 Int))
	(p_53 x_12449 (succ_19 x_12449))))
(assert (iszero_19 zero_19))
(assert (forall ((x_12451 Int))
	(issucc_19 (succ_19 x_12451))))
(assert (forall ((x_12452 Int))
	(diseqInt zero_19 (succ_19 x_12452))))
(assert (forall ((x_12453 Int))
	(diseqInt (succ_19 x_12453) zero_19)))
(assert (forall ((x_12454 Int) (x_12455 Int))
	(=> (diseqInt x_12454 x_12455) (diseqInt (succ_19 x_12454) (succ_19 x_12455)))))
(declare-datatypes ((list_82 0)) (((nil_87) (cons_82 (head_164 Int) (tail_164 list_82)))))
(declare-fun diseqlist_82 (list_82 list_82) Bool)
(declare-fun head_165 (Int list_82) Bool)
(declare-fun tail_165 (list_82 list_82) Bool)
(declare-fun isnil_87 (list_82) Bool)
(declare-fun iscons_82 (list_82) Bool)
(assert (forall ((x_12457 Int) (x_12458 list_82))
	(head_165 x_12457 (cons_82 x_12457 x_12458))))
(assert (forall ((x_12457 Int) (x_12458 list_82))
	(tail_165 x_12458 (cons_82 x_12457 x_12458))))
(assert (isnil_87 nil_87))
(assert (forall ((x_12460 Int) (x_12461 list_82))
	(iscons_82 (cons_82 x_12460 x_12461))))
(assert (forall ((x_12462 Int) (x_12463 list_82))
	(diseqlist_82 nil_87 (cons_82 x_12462 x_12463))))
(assert (forall ((x_12464 Int) (x_12465 list_82))
	(diseqlist_82 (cons_82 x_12464 x_12465) nil_87)))
(assert (forall ((x_12466 Int) (x_12467 list_82) (x_12468 Int) (x_12469 list_82))
	(=> (diseqInt x_12466 x_12468) (diseqlist_82 (cons_82 x_12466 x_12467) (cons_82 x_12468 x_12469)))))
(assert (forall ((x_12466 Int) (x_12467 list_82) (x_12468 Int) (x_12469 list_82))
	(=> (diseqlist_82 x_12467 x_12469) (diseqlist_82 (cons_82 x_12466 x_12467) (cons_82 x_12468 x_12469)))))
(declare-fun leq_7 (Bool_108 Int Int) Bool)
(assert (forall ((x_12423 Bool_108) (x_12419 Int) (z_587 Int))
	(=> (leq_7 x_12423 z_587 x_12419) (leq_7 x_12423 (succ_19 z_587) (succ_19 x_12419)))))
(assert (forall ((z_587 Int))
	(leq_7 false_108 (succ_19 z_587) zero_19)))
(assert (forall ((y_533 Int))
	(leq_7 true_108 zero_19 y_533)))
(declare-fun ordered_3 (Bool_108 list_82) Bool)
(assert (forall ((x_12427 Bool_108) (x_12428 Bool_108) (x_12429 Bool_108) (y_535 Int) (xs_170 list_82) (y_534 Int))
	(=> (and (leq_7 x_12428 y_534 y_535) (ordered_3 x_12429 (cons_82 y_535 xs_170)) (and_108 x_12427 x_12428 x_12429)) (ordered_3 x_12427 (cons_82 y_534 (cons_82 y_535 xs_170))))))
(assert (forall ((y_534 Int))
	(ordered_3 true_108 (cons_82 y_534 nil_87))))
(assert (ordered_3 true_108 nil_87))
(declare-fun insert_2 (list_82 Int list_82) Bool)
(assert (forall ((z_589 Int) (xs_171 list_82) (x_12421 Int))
	(=> (leq_7 true_108 x_12421 z_589) (insert_2 (cons_82 x_12421 (cons_82 z_589 xs_171)) x_12421 (cons_82 z_589 xs_171)))))
(assert (forall ((x_12436 list_82) (z_589 Int) (xs_171 list_82) (x_12421 Int))
	(=> (and (insert_2 x_12436 x_12421 xs_171) (leq_7 false_108 x_12421 z_589)) (insert_2 (cons_82 z_589 x_12436) x_12421 (cons_82 z_589 xs_171)))))
(assert (forall ((x_12421 Int))
	(insert_2 (cons_82 x_12421 nil_87) x_12421 nil_87)))
(declare-fun isort_2 (list_82 list_82) Bool)
(assert (forall ((x_12438 list_82) (x_12439 list_82) (y_537 Int) (xs_172 list_82))
	(=> (and (isort_2 x_12439 xs_172) (insert_2 x_12438 y_537 x_12439)) (isort_2 x_12438 (cons_82 y_537 xs_172)))))
(assert (isort_2 nil_87 nil_87))
(assert (forall ((x_12442 list_82) (xs_173 list_82))
	(=> (and true (isort_2 x_12442 xs_173) (ordered_3 false_108 x_12442)) false)))
(check-sat)