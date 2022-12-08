
(set-logic HORN)
(declare-fun zero_103 () Int)
(declare-fun succ_101 (Int) Int)
(declare-datatypes ((Bool_254 0)) (((false_254) (true_254))))
(declare-fun diseqBool_116 (Bool_254 Bool_254) Bool)
(declare-fun isfalse_116 (Bool_254) Bool)
(declare-fun istrue_116 (Bool_254) Bool)
(assert (isfalse_116 false_254))
(assert (istrue_116 true_254))
(assert (diseqBool_116 false_254 true_254))
(assert (diseqBool_116 true_254 false_254))
(declare-fun and_254 (Bool_254 Bool_254 Bool_254) Bool)
(declare-fun or_259 (Bool_254 Bool_254 Bool_254) Bool)
(declare-fun hence_254 (Bool_254 Bool_254 Bool_254) Bool)
(declare-fun not_257 (Bool_254 Bool_254) Bool)
(assert (and_254 false_254 false_254 false_254))
(assert (and_254 false_254 true_254 false_254))
(assert (and_254 false_254 false_254 true_254))
(assert (and_254 true_254 true_254 true_254))
(assert (or_259 false_254 false_254 false_254))
(assert (or_259 true_254 true_254 false_254))
(assert (or_259 true_254 false_254 true_254))
(assert (or_259 true_254 true_254 true_254))
(assert (hence_254 true_254 false_254 false_254))
(assert (hence_254 false_254 true_254 false_254))
(assert (hence_254 true_254 false_254 true_254))
(assert (hence_254 true_254 true_254 true_254))
(assert (not_257 true_254 false_254))
(assert (not_257 false_254 true_254))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_291 (Int Int) Bool)
(declare-fun iszero_101 (Int) Bool)
(declare-fun issucc_101 (Int) Bool)
(assert (forall ((x_46539 Int))
	(p_291 x_46539 (succ_101 x_46539))))
(assert (iszero_101 zero_103))
(assert (forall ((x_46541 Int))
	(issucc_101 (succ_101 x_46541))))
(assert (forall ((x_46542 Int))
	(diseqInt zero_103 (succ_101 x_46542))))
(assert (forall ((x_46543 Int))
	(diseqInt (succ_101 x_46543) zero_103)))
(assert (forall ((x_46544 Int) (x_46545 Int))
	(=> (diseqInt x_46544 x_46545) (diseqInt (succ_101 x_46544) (succ_101 x_46545)))))
(declare-fun leq_37 (Bool_254 Int Int) Bool)
(assert (forall ((x_46523 Bool_254) (x_46521 Int) (z_1504 Int))
	(=> (leq_37 x_46523 z_1504 x_46521) (leq_37 x_46523 (succ_101 z_1504) (succ_101 x_46521)))))
(assert (forall ((z_1504 Int))
	(leq_37 false_254 (succ_101 z_1504) zero_103)))
(assert (forall ((y_1668 Int))
	(leq_37 true_254 zero_103 y_1668)))
(assert (forall ((x_46522 Int) (y_1669 Int))
	(=> (and true (diseqInt x_46522 x_46522) (leq_37 true_254 x_46522 y_1669) (leq_37 true_254 x_46522 y_1669)) false)))
(assert (forall ((x_46522 Int) (y_1669 Int))
	(=> (and true (diseqInt y_1669 x_46522) (leq_37 false_254 x_46522 y_1669) (leq_37 true_254 x_46522 y_1669)) false)))
(assert (forall ((x_46522 Int) (y_1669 Int))
	(=> (and true (diseqInt x_46522 x_46522) (leq_37 true_254 x_46522 x_46522) (leq_37 false_254 x_46522 y_1669)) false)))
(assert (forall ((x_46522 Int) (y_1669 Int))
	(=> (and true (diseqInt x_46522 x_46522) (leq_37 false_254 x_46522 x_46522) (leq_37 false_254 x_46522 y_1669)) false)))
(check-sat)
