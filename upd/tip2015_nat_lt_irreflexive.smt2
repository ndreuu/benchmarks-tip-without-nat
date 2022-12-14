
(set-logic HORN)
(define-fun zero_105 () Int 0)
(define-fun succ_103 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_256 0)) (((false_256) (true_256))))
(declare-fun diseqBool_117 (Bool_256 Bool_256) Bool)
(declare-fun isfalse_117 (Bool_256) Bool)
(declare-fun istrue_117 (Bool_256) Bool)
(assert (isfalse_117 false_256))
(assert (istrue_117 true_256))
(assert (diseqBool_117 false_256 true_256))
(assert (diseqBool_117 true_256 false_256))
(declare-fun and_256 (Bool_256 Bool_256 Bool_256) Bool)
(declare-fun or_261 (Bool_256 Bool_256 Bool_256) Bool)
(declare-fun hence_256 (Bool_256 Bool_256 Bool_256) Bool)
(declare-fun not_259 (Bool_256 Bool_256) Bool)
(assert (and_256 false_256 false_256 false_256))
(assert (and_256 false_256 true_256 false_256))
(assert (and_256 false_256 false_256 true_256))
(assert (and_256 true_256 true_256 true_256))
(assert (or_261 false_256 false_256 false_256))
(assert (or_261 true_256 true_256 false_256))
(assert (or_261 true_256 false_256 true_256))
(assert (or_261 true_256 true_256 true_256))
(assert (hence_256 true_256 false_256 false_256))
(assert (hence_256 false_256 true_256 false_256))
(assert (hence_256 true_256 false_256 true_256))
(assert (hence_256 true_256 true_256 true_256))
(assert (not_259 true_256 false_256))
(assert (not_259 false_256 true_256))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_295 (Int Int) Bool)
(declare-fun iszero_103 (Int) Bool)
(declare-fun issucc_103 (Int) Bool)
(assert (forall ((x_46696 Int))
	(p_295 x_46696 (succ_103 x_46696))))
(assert (iszero_103 zero_105))
(assert (forall ((x_46698 Int))
	(issucc_103 (succ_103 x_46698))))
(assert (forall ((x_46699 Int))
	(diseqInt zero_105 (succ_103 x_46699))))
(assert (forall ((x_46700 Int))
	(diseqInt (succ_103 x_46700) zero_105)))
(assert (forall ((x_46701 Int) (x_46702 Int))
	(=> (diseqInt x_46701 x_46702) (diseqInt (succ_103 x_46701) (succ_103 x_46702)))))
(declare-fun lt_272 (Bool_256 Int Int) Bool)
(assert (forall ((x_46687 Bool_256) (n_86 Int) (z_1514 Int))
	(=> (lt_272 x_46687 n_86 z_1514) (lt_272 x_46687 (succ_103 n_86) (succ_103 z_1514)))))
(assert (forall ((z_1514 Int))
	(lt_272 true_256 zero_105 (succ_103 z_1514))))
(assert (forall ((x_46685 Int))
	(lt_272 false_256 x_46685 zero_105)))
(assert (forall ((x_46686 Int))
	(=> (and true (lt_272 true_256 x_46686 x_46686)) false)))
(check-sat)