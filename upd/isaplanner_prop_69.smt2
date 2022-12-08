
(set-logic HORN)
(declare-fun Z_376 () Int)
(declare-fun S_133 (Int) Int)
(declare-datatypes ((Bool_69 0)) (((false_69) (true_69))))
(declare-fun diseqBool_28 (Bool_69 Bool_69) Bool)
(declare-fun isfalse_28 (Bool_69) Bool)
(declare-fun istrue_28 (Bool_69) Bool)
(assert (isfalse_28 false_69))
(assert (istrue_28 true_69))
(assert (diseqBool_28 false_69 true_69))
(assert (diseqBool_28 true_69 false_69))
(declare-fun and_69 (Bool_69 Bool_69 Bool_69) Bool)
(declare-fun or_69 (Bool_69 Bool_69 Bool_69) Bool)
(declare-fun hence_69 (Bool_69 Bool_69 Bool_69) Bool)
(declare-fun not_69 (Bool_69 Bool_69) Bool)
(assert (and_69 false_69 false_69 false_69))
(assert (and_69 false_69 true_69 false_69))
(assert (and_69 false_69 false_69 true_69))
(assert (and_69 true_69 true_69 true_69))
(assert (or_69 false_69 false_69 false_69))
(assert (or_69 true_69 true_69 false_69))
(assert (or_69 true_69 false_69 true_69))
(assert (or_69 true_69 true_69 true_69))
(assert (hence_69 true_69 false_69 false_69))
(assert (hence_69 false_69 true_69 false_69))
(assert (hence_69 true_69 false_69 true_69))
(assert (hence_69 true_69 true_69 true_69))
(assert (not_69 true_69 false_69))
(assert (not_69 false_69 true_69))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun projS_129 (Int Int) Bool)
(declare-fun isZ_133 (Int) Bool)
(declare-fun isS_133 (Int) Bool)
(assert (forall ((x_3658 Int))
	(projS_129 x_3658 (S_133 x_3658))))
(assert (isZ_133 Z_376))
(assert (forall ((x_3660 Int))
	(isS_133 (S_133 x_3660))))
(assert (forall ((x_3661 Int))
	(diseqInt Z_376 (S_133 x_3661))))
(assert (forall ((x_3662 Int))
	(diseqInt (S_133 x_3662) Z_376)))
(assert (forall ((x_3663 Int) (x_3664 Int))
	(=> (diseqInt x_3663 x_3664) (diseqInt (S_133 x_3663) (S_133 x_3664)))))
(declare-fun x_3640 (Bool_69 Int Int) Bool)
(assert (forall ((x_3645 Bool_69) (x_3642 Int) (z_377 Int))
	(=> (x_3640 x_3645 z_377 x_3642) (x_3640 x_3645 (S_133 z_377) (S_133 x_3642)))))
(assert (forall ((z_377 Int))
	(x_3640 false_69 (S_133 z_377) Z_376)))
(assert (forall ((y_297 Int))
	(x_3640 true_69 Z_376 y_297)))
(declare-fun x_3643 (Int Int Int) Bool)
(assert (forall ((x_3650 Int) (z_378 Int) (y_298 Int))
	(=> (x_3643 x_3650 z_378 y_298) (x_3643 (S_133 x_3650) (S_133 z_378) y_298))))
(assert (forall ((x_3651 Int))
	(x_3643 x_3651 Z_376 x_3651)))
(assert (forall ((x_3652 Int) (n_27 Int) (m_14 Int))
	(=> (and true (x_3643 x_3652 m_14 n_27) (x_3640 false_69 n_27 x_3652)) false)))
(check-sat)
