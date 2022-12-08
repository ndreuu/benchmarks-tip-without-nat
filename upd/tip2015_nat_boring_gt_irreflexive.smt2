
(set-logic HORN)
(declare-fun zero_7 () Int)
(declare-fun succ_7 (Int) Int)
(declare-datatypes ((Bool_88 0)) (((false_88) (true_88))))
(declare-fun diseqBool_37 (Bool_88 Bool_88) Bool)
(declare-fun isfalse_37 (Bool_88) Bool)
(declare-fun istrue_37 (Bool_88) Bool)
(assert (isfalse_37 false_88))
(assert (istrue_37 true_88))
(assert (diseqBool_37 false_88 true_88))
(assert (diseqBool_37 true_88 false_88))
(declare-fun and_88 (Bool_88 Bool_88 Bool_88) Bool)
(declare-fun or_88 (Bool_88 Bool_88 Bool_88) Bool)
(declare-fun hence_88 (Bool_88 Bool_88 Bool_88) Bool)
(declare-fun not_88 (Bool_88 Bool_88) Bool)
(assert (and_88 false_88 false_88 false_88))
(assert (and_88 false_88 true_88 false_88))
(assert (and_88 false_88 false_88 true_88))
(assert (and_88 true_88 true_88 true_88))
(assert (or_88 false_88 false_88 false_88))
(assert (or_88 true_88 true_88 false_88))
(assert (or_88 true_88 false_88 true_88))
(assert (or_88 true_88 true_88 true_88))
(assert (hence_88 true_88 false_88 false_88))
(assert (hence_88 false_88 true_88 false_88))
(assert (hence_88 true_88 false_88 true_88))
(assert (hence_88 true_88 true_88 true_88))
(assert (not_88 true_88 false_88))
(assert (not_88 false_88 true_88))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_15 (Int Int) Bool)
(declare-fun iszero_7 (Int) Bool)
(declare-fun issucc_7 (Int) Bool)
(assert (forall ((x_4656 Int))
	(p_15 x_4656 (succ_7 x_4656))))
(assert (iszero_7 zero_7))
(assert (forall ((x_4658 Int))
	(issucc_7 (succ_7 x_4658))))
(assert (forall ((x_4659 Int))
	(diseqInt zero_7 (succ_7 x_4659))))
(assert (forall ((x_4660 Int))
	(diseqInt (succ_7 x_4660) zero_7)))
(assert (forall ((x_4661 Int) (x_4662 Int))
	(=> (diseqInt x_4661 x_4662) (diseqInt (succ_7 x_4661) (succ_7 x_4662)))))
(declare-fun lt_88 (Bool_88 Int Int) Bool)
(assert (forall ((x_4645 Bool_88) (n_33 Int) (z_471 Int))
	(=> (lt_88 x_4645 n_33 z_471) (lt_88 x_4645 (succ_7 n_33) (succ_7 z_471)))))
(assert (forall ((z_471 Int))
	(lt_88 true_88 zero_7 (succ_7 z_471))))
(assert (forall ((x_4642 Int))
	(lt_88 false_88 x_4642 zero_7)))
(declare-fun gt_88 (Bool_88 Int Int) Bool)
(assert (forall ((x_4649 Bool_88) (x_4643 Int) (y_387 Int))
	(=> (lt_88 x_4649 y_387 x_4643) (gt_88 x_4649 x_4643 y_387))))
(assert (forall ((x_4644 Int))
	(=> (and true (gt_88 true_88 x_4644 x_4644)) false)))
(check-sat)
