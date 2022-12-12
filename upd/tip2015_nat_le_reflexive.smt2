
(set-logic HORN)
(define-fun zero_27 () Int 0)
(define-fun succ_27 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_122 0)) (((false_122) (true_122))))
(declare-fun diseqBool_54 (Bool_122 Bool_122) Bool)
(declare-fun isfalse_54 (Bool_122) Bool)
(declare-fun istrue_54 (Bool_122) Bool)
(assert (isfalse_54 false_122))
(assert (istrue_54 true_122))
(assert (diseqBool_54 false_122 true_122))
(assert (diseqBool_54 true_122 false_122))
(declare-fun and_122 (Bool_122 Bool_122 Bool_122) Bool)
(declare-fun or_123 (Bool_122 Bool_122 Bool_122) Bool)
(declare-fun hence_122 (Bool_122 Bool_122 Bool_122) Bool)
(declare-fun not_122 (Bool_122 Bool_122) Bool)
(assert (and_122 false_122 false_122 false_122))
(assert (and_122 false_122 true_122 false_122))
(assert (and_122 false_122 false_122 true_122))
(assert (and_122 true_122 true_122 true_122))
(assert (or_123 false_122 false_122 false_122))
(assert (or_123 true_122 true_122 false_122))
(assert (or_123 true_122 false_122 true_122))
(assert (or_123 true_122 true_122 true_122))
(assert (hence_122 true_122 false_122 false_122))
(assert (hence_122 false_122 true_122 false_122))
(assert (hence_122 true_122 false_122 true_122))
(assert (hence_122 true_122 true_122 true_122))
(assert (not_122 true_122 false_122))
(assert (not_122 false_122 true_122))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_78 (Int Int) Bool)
(declare-fun iszero_27 (Int) Bool)
(declare-fun issucc_27 (Int) Bool)
(assert (forall ((x_17947 Int))
	(p_78 x_17947 (succ_27 x_17947))))
(assert (iszero_27 zero_27))
(assert (forall ((x_17949 Int))
	(issucc_27 (succ_27 x_17949))))
(assert (forall ((x_17950 Int))
	(diseqInt zero_27 (succ_27 x_17950))))
(assert (forall ((x_17951 Int))
	(diseqInt (succ_27 x_17951) zero_27)))
(assert (forall ((x_17952 Int) (x_17953 Int))
	(=> (diseqInt x_17952 x_17953) (diseqInt (succ_27 x_17952) (succ_27 x_17953)))))
(declare-fun leq_10 (Bool_122 Int Int) Bool)
(assert (forall ((x_17938 Bool_122) (x_17936 Int) (z_687 Int))
	(=> (leq_10 x_17938 z_687 x_17936) (leq_10 x_17938 (succ_27 z_687) (succ_27 x_17936)))))
(assert (forall ((z_687 Int))
	(leq_10 false_122 (succ_27 z_687) zero_27)))
(assert (forall ((y_665 Int))
	(leq_10 true_122 zero_27 y_665)))
(assert (forall ((x_17937 Int))
	(=> (and true (leq_10 false_122 x_17937 x_17937)) false)))
(check-sat)
