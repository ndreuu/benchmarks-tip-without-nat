
(set-logic HORN)
(define-fun zero_5 () Int 0)
(define-fun succ_5 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_86 0)) (((false_86) (true_86))))
(declare-fun diseqBool_35 (Bool_86 Bool_86) Bool)
(declare-fun isfalse_35 (Bool_86) Bool)
(declare-fun istrue_35 (Bool_86) Bool)
(assert (isfalse_35 false_86))
(assert (istrue_35 true_86))
(assert (diseqBool_35 false_86 true_86))
(assert (diseqBool_35 true_86 false_86))
(declare-fun and_86 (Bool_86 Bool_86 Bool_86) Bool)
(declare-fun or_86 (Bool_86 Bool_86 Bool_86) Bool)
(declare-fun hence_86 (Bool_86 Bool_86 Bool_86) Bool)
(declare-fun not_86 (Bool_86 Bool_86) Bool)
(assert (and_86 false_86 false_86 false_86))
(assert (and_86 false_86 true_86 false_86))
(assert (and_86 false_86 false_86 true_86))
(assert (and_86 true_86 true_86 true_86))
(assert (or_86 false_86 false_86 false_86))
(assert (or_86 true_86 true_86 false_86))
(assert (or_86 true_86 false_86 true_86))
(assert (or_86 true_86 true_86 true_86))
(assert (hence_86 true_86 false_86 false_86))
(assert (hence_86 false_86 true_86 false_86))
(assert (hence_86 true_86 false_86 true_86))
(assert (hence_86 true_86 true_86 true_86))
(assert (not_86 true_86 false_86))
(assert (not_86 false_86 true_86))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_11 (Int Int) Bool)
(declare-fun iszero_5 (Int) Bool)
(declare-fun issucc_5 (Int) Bool)
(assert (forall ((x_4523 Int))
	(p_11 x_4523 (succ_5 x_4523))))
(assert (iszero_5 zero_5))
(assert (forall ((x_4525 Int))
	(issucc_5 (succ_5 x_4525))))
(assert (forall ((x_4526 Int))
	(diseqInt zero_5 (succ_5 x_4526))))
(assert (forall ((x_4527 Int))
	(diseqInt (succ_5 x_4527) zero_5)))
(assert (forall ((x_4528 Int) (x_4529 Int))
	(=> (diseqInt x_4528 x_4529) (diseqInt (succ_5 x_4528) (succ_5 x_4529)))))
(declare-fun leq_1 (Bool_86 Int Int) Bool)
(assert (forall ((x_4513 Bool_86) (x_4511 Int) (z_463 Int))
	(=> (leq_1 x_4513 z_463 x_4511) (leq_1 x_4513 (succ_5 z_463) (succ_5 x_4511)))))
(assert (forall ((z_463 Int))
	(leq_1 false_86 (succ_5 z_463) zero_5)))
(assert (forall ((y_375 Int))
	(leq_1 true_86 zero_5 y_375)))
(assert (forall ((x_4512 Int) (y_376 Int))
	(=> (and true (diseqInt x_4512 y_376) (leq_1 true_86 x_4512 y_376) (leq_1 true_86 y_376 x_4512)) false)))
(check-sat)
