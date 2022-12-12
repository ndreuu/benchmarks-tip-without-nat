
(set-logic HORN)
(define-fun Z_246 () Int 0)
(define-fun S_87 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_45 0)) (((false_45) (true_45))))
(declare-fun diseqBool_18 (Bool_45 Bool_45) Bool)
(declare-fun isfalse_18 (Bool_45) Bool)
(declare-fun istrue_18 (Bool_45) Bool)
(assert (isfalse_18 false_45))
(assert (istrue_18 true_45))
(assert (diseqBool_18 false_45 true_45))
(assert (diseqBool_18 true_45 false_45))
(declare-fun and_45 (Bool_45 Bool_45 Bool_45) Bool)
(declare-fun or_45 (Bool_45 Bool_45 Bool_45) Bool)
(declare-fun hence_45 (Bool_45 Bool_45 Bool_45) Bool)
(declare-fun not_45 (Bool_45 Bool_45) Bool)
(assert (and_45 false_45 false_45 false_45))
(assert (and_45 false_45 true_45 false_45))
(assert (and_45 false_45 false_45 true_45))
(assert (and_45 true_45 true_45 true_45))
(assert (or_45 false_45 false_45 false_45))
(assert (or_45 true_45 true_45 false_45))
(assert (or_45 true_45 false_45 true_45))
(assert (or_45 true_45 true_45 true_45))
(assert (hence_45 true_45 false_45 false_45))
(assert (hence_45 false_45 true_45 false_45))
(assert (hence_45 true_45 false_45 true_45))
(assert (hence_45 true_45 true_45 true_45))
(assert (not_45 true_45 false_45))
(assert (not_45 false_45 true_45))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun projS_85 (Int Int) Bool)
(declare-fun isZ_87 (Int) Bool)
(declare-fun isS_87 (Int) Bool)
(assert (forall ((x_2427 Int))
	(projS_85 x_2427 (S_87 x_2427))))
(assert (isZ_87 Z_246))
(assert (forall ((x_2429 Int))
	(isS_87 (S_87 x_2429))))
(assert (forall ((x_2430 Int))
	(diseqInt Z_246 (S_87 x_2430))))
(assert (forall ((x_2431 Int))
	(diseqInt (S_87 x_2431) Z_246)))
(assert (forall ((x_2432 Int) (x_2433 Int))
	(=> (diseqInt x_2432 x_2433) (diseqInt (S_87 x_2432) (S_87 x_2433)))))
(declare-fun x_2406 (Bool_45 Int Int) Bool)
(assert (forall ((x_2412 Bool_45) (y_195 Int) (x_2408 Int))
	(=> (x_2406 x_2412 x_2408 y_195) (x_2406 x_2412 (S_87 x_2408) (S_87 y_195)))))
(assert (forall ((x_2408 Int))
	(x_2406 false_45 (S_87 x_2408) Z_246)))
(assert (forall ((z_247 Int))
	(x_2406 false_45 Z_246 (S_87 z_247))))
(assert (x_2406 true_45 Z_246 Z_246))
(declare-fun x_2409 (Bool_45 Int Int) Bool)
(assert (forall ((x_2417 Bool_45) (x_2411 Int) (z_248 Int))
	(=> (x_2409 x_2417 z_248 x_2411) (x_2409 x_2417 (S_87 z_248) (S_87 x_2411)))))
(assert (forall ((z_248 Int))
	(x_2409 false_45 (S_87 z_248) Z_246)))
(assert (forall ((y_196 Int))
	(x_2409 true_45 Z_246 y_196)))
(assert (forall ((x_2421 Bool_45) (x_2422 Bool_45) (n_18 Int))
	(=> (and true (diseqBool_18 x_2421 x_2422) (x_2409 x_2421 n_18 Z_246) (x_2406 x_2422 n_18 Z_246)) false)))
(check-sat)
