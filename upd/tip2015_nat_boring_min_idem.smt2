
(set-logic HORN)
(define-fun zero_112 () Int 0)
(define-fun succ_109 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_266 0)) (((false_266) (true_266))))
(declare-fun diseqBool_125 (Bool_266 Bool_266) Bool)
(declare-fun isfalse_125 (Bool_266) Bool)
(declare-fun istrue_125 (Bool_266) Bool)
(assert (isfalse_125 false_266))
(assert (istrue_125 true_266))
(assert (diseqBool_125 false_266 true_266))
(assert (diseqBool_125 true_266 false_266))
(declare-fun and_266 (Bool_266 Bool_266 Bool_266) Bool)
(declare-fun or_272 (Bool_266 Bool_266 Bool_266) Bool)
(declare-fun hence_266 (Bool_266 Bool_266 Bool_266) Bool)
(declare-fun not_270 (Bool_266 Bool_266) Bool)
(assert (and_266 false_266 false_266 false_266))
(assert (and_266 false_266 true_266 false_266))
(assert (and_266 false_266 false_266 true_266))
(assert (and_266 true_266 true_266 true_266))
(assert (or_272 false_266 false_266 false_266))
(assert (or_272 true_266 true_266 false_266))
(assert (or_272 true_266 false_266 true_266))
(assert (or_272 true_266 true_266 true_266))
(assert (hence_266 true_266 false_266 false_266))
(assert (hence_266 false_266 true_266 false_266))
(assert (hence_266 true_266 false_266 true_266))
(assert (hence_266 true_266 true_266 true_266))
(assert (not_270 true_266 false_266))
(assert (not_270 false_266 true_266))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_317 (Int Int) Bool)
(declare-fun iszero_109 (Int) Bool)
(declare-fun issucc_109 (Int) Bool)
(assert (forall ((x_49944 Int))
	(p_317 x_49944 (succ_109 x_49944))))
(assert (iszero_109 zero_112))
(assert (forall ((x_49946 Int))
	(issucc_109 (succ_109 x_49946))))
(assert (forall ((x_49947 Int))
	(diseqInt zero_112 (succ_109 x_49947))))
(assert (forall ((x_49948 Int))
	(diseqInt (succ_109 x_49948) zero_112)))
(assert (forall ((x_49949 Int) (x_49950 Int))
	(=> (diseqInt x_49949 x_49950) (diseqInt (succ_109 x_49949) (succ_109 x_49950)))))
(declare-fun leq_42 (Bool_266 Int Int) Bool)
(assert (forall ((x_49934 Bool_266) (x_49932 Int) (z_1586 Int))
	(=> (leq_42 x_49934 z_1586 x_49932) (leq_42 x_49934 (succ_109 z_1586) (succ_109 x_49932)))))
(assert (forall ((z_1586 Int))
	(leq_42 false_266 (succ_109 z_1586) zero_112)))
(assert (forall ((y_1777 Int))
	(leq_42 true_266 zero_112 y_1777)))
(assert (forall ((x_49933 Int))
	(=> (and true (diseqInt x_49933 x_49933) (leq_42 true_266 x_49933 x_49933)) false)))
(assert (forall ((x_49933 Int))
	(=> (and true (diseqInt x_49933 x_49933) (leq_42 false_266 x_49933 x_49933)) false)))
(check-sat)
