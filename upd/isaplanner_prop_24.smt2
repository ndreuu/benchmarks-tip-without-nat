
(set-logic HORN)
(define-fun Z_391 () Int 0)
(define-fun S_139 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_72 0)) (((false_72) (true_72))))
(declare-fun diseqBool_30 (Bool_72 Bool_72) Bool)
(declare-fun isfalse_30 (Bool_72) Bool)
(declare-fun istrue_30 (Bool_72) Bool)
(assert (isfalse_30 false_72))
(assert (istrue_30 true_72))
(assert (diseqBool_30 false_72 true_72))
(assert (diseqBool_30 true_72 false_72))
(declare-fun and_72 (Bool_72 Bool_72 Bool_72) Bool)
(declare-fun or_72 (Bool_72 Bool_72 Bool_72) Bool)
(declare-fun hence_72 (Bool_72 Bool_72 Bool_72) Bool)
(declare-fun not_72 (Bool_72 Bool_72) Bool)
(assert (and_72 false_72 false_72 false_72))
(assert (and_72 false_72 true_72 false_72))
(assert (and_72 false_72 false_72 true_72))
(assert (and_72 true_72 true_72 true_72))
(assert (or_72 false_72 false_72 false_72))
(assert (or_72 true_72 true_72 false_72))
(assert (or_72 true_72 false_72 true_72))
(assert (or_72 true_72 true_72 true_72))
(assert (hence_72 true_72 false_72 false_72))
(assert (hence_72 false_72 true_72 false_72))
(assert (hence_72 true_72 false_72 true_72))
(assert (hence_72 true_72 true_72 true_72))
(assert (not_72 true_72 false_72))
(assert (not_72 false_72 true_72))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun projS_135 (Int Int) Bool)
(declare-fun isZ_139 (Int) Bool)
(declare-fun isS_139 (Int) Bool)
(assert (forall ((x_3815 Int))
	(projS_135 x_3815 (S_139 x_3815))))
(assert (isZ_139 Z_391))
(assert (forall ((x_3817 Int))
	(isS_139 (S_139 x_3817))))
(assert (forall ((x_3818 Int))
	(diseqInt Z_391 (S_139 x_3818))))
(assert (forall ((x_3819 Int))
	(diseqInt (S_139 x_3819) Z_391)))
(assert (forall ((x_3820 Int) (x_3821 Int))
	(=> (diseqInt x_3820 x_3821) (diseqInt (S_139 x_3820) (S_139 x_3821)))))
(declare-fun max_4 (Int Int Int) Bool)
(assert (forall ((x_3796 Int) (x_3788 Int) (z_392 Int))
	(=> (max_4 x_3796 z_392 x_3788) (max_4 (S_139 x_3796) (S_139 z_392) (S_139 x_3788)))))
(assert (forall ((z_392 Int))
	(max_4 (S_139 z_392) (S_139 z_392) Z_391)))
(assert (forall ((x_3798 Int))
	(max_4 x_3798 Z_391 x_3798)))
(declare-fun x_3789 (Bool_72 Int Int) Bool)
(assert (forall ((x_3799 Bool_72) (y_311 Int) (x_3791 Int))
	(=> (x_3789 x_3799 x_3791 y_311) (x_3789 x_3799 (S_139 x_3791) (S_139 y_311)))))
(assert (forall ((x_3791 Int))
	(x_3789 false_72 (S_139 x_3791) Z_391)))
(assert (forall ((z_393 Int))
	(x_3789 false_72 Z_391 (S_139 z_393))))
(assert (x_3789 true_72 Z_391 Z_391))
(declare-fun x_3792 (Bool_72 Int Int) Bool)
(assert (forall ((x_3804 Bool_72) (x_3794 Int) (z_394 Int))
	(=> (x_3792 x_3804 z_394 x_3794) (x_3792 x_3804 (S_139 z_394) (S_139 x_3794)))))
(assert (forall ((z_394 Int))
	(x_3792 false_72 (S_139 z_394) Z_391)))
(assert (forall ((y_312 Int))
	(x_3792 true_72 Z_391 y_312)))
(assert (forall ((x_3808 Int) (x_3809 Bool_72) (x_3810 Bool_72) (a_7 Int) (b_6 Int))
	(=> (and true (diseqBool_30 x_3809 x_3810) (max_4 x_3808 a_7 b_6) (x_3789 x_3809 x_3808 a_7) (x_3792 x_3810 b_6 a_7)) false)))
(check-sat)
