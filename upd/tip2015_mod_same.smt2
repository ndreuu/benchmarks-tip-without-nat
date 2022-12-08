
(set-logic HORN)
(declare-fun zero_75 () Int)
(declare-fun succ_73 (Int) Int)
(declare-datatypes ((Bool_203 0)) (((false_203) (true_203))))
(declare-fun diseqBool_90 (Bool_203 Bool_203) Bool)
(declare-fun isfalse_90 (Bool_203) Bool)
(declare-fun istrue_90 (Bool_203) Bool)
(assert (isfalse_90 false_203))
(assert (istrue_90 true_203))
(assert (diseqBool_90 false_203 true_203))
(assert (diseqBool_90 true_203 false_203))
(declare-fun and_203 (Bool_203 Bool_203 Bool_203) Bool)
(declare-fun or_207 (Bool_203 Bool_203 Bool_203) Bool)
(declare-fun hence_203 (Bool_203 Bool_203 Bool_203) Bool)
(declare-fun not_206 (Bool_203 Bool_203) Bool)
(assert (and_203 false_203 false_203 false_203))
(assert (and_203 false_203 true_203 false_203))
(assert (and_203 false_203 false_203 true_203))
(assert (and_203 true_203 true_203 true_203))
(assert (or_207 false_203 false_203 false_203))
(assert (or_207 true_203 true_203 false_203))
(assert (or_207 true_203 false_203 true_203))
(assert (or_207 true_203 true_203 true_203))
(assert (hence_203 true_203 false_203 false_203))
(assert (hence_203 false_203 true_203 false_203))
(assert (hence_203 true_203 false_203 true_203))
(assert (hence_203 true_203 true_203 true_203))
(assert (not_206 true_203 false_203))
(assert (not_206 false_203 true_203))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_213 (Int Int) Bool)
(declare-fun iszero_73 (Int) Bool)
(declare-fun issucc_73 (Int) Bool)
(assert (forall ((x_33466 Int))
	(p_213 x_33466 (succ_73 x_33466))))
(assert (iszero_73 zero_75))
(assert (forall ((x_33468 Int))
	(issucc_73 (succ_73 x_33468))))
(assert (forall ((x_33469 Int))
	(diseqInt zero_75 (succ_73 x_33469))))
(assert (forall ((x_33470 Int))
	(diseqInt (succ_73 x_33470) zero_75)))
(assert (forall ((x_33471 Int) (x_33472 Int))
	(=> (diseqInt x_33471 x_33472) (diseqInt (succ_73 x_33471) (succ_73 x_33472)))))
(declare-fun minus_210 (Int Int Int) Bool)
(assert (forall ((x_33435 Int) (y_1251 Int) (z_1165 Int))
	(=> (minus_210 x_33435 z_1165 y_1251) (minus_210 x_33435 (succ_73 z_1165) (succ_73 y_1251)))))
(assert (forall ((z_1165 Int))
	(minus_210 zero_75 (succ_73 z_1165) zero_75)))
(assert (forall ((y_1250 Int))
	(minus_210 zero_75 zero_75 y_1250)))
(declare-fun lt_215 (Bool_203 Int Int) Bool)
(assert (forall ((x_33439 Bool_203) (n_65 Int) (z_1166 Int))
	(=> (lt_215 x_33439 n_65 z_1166) (lt_215 x_33439 (succ_73 n_65) (succ_73 z_1166)))))
(assert (forall ((z_1166 Int))
	(lt_215 true_203 zero_75 (succ_73 z_1166))))
(assert (forall ((x_33427 Int))
	(lt_215 false_203 x_33427 zero_75)))
(declare-fun mod_203 (Int Int Int) Bool)
(assert (forall ((z_1167 Int) (x_33428 Int))
	(=> (lt_215 true_203 x_33428 (succ_73 z_1167)) (mod_203 x_33428 x_33428 (succ_73 z_1167)))))
(assert (forall ((x_33446 Int) (x_33447 Int) (z_1167 Int) (x_33428 Int))
	(=> (and (minus_210 x_33447 x_33428 (succ_73 z_1167)) (mod_203 x_33446 x_33447 (succ_73 z_1167)) (lt_215 false_203 x_33428 (succ_73 z_1167))) (mod_203 x_33446 x_33428 (succ_73 z_1167)))))
(assert (forall ((x_33428 Int))
	(mod_203 zero_75 x_33428 zero_75)))
(declare-fun go_0 (Int Int Int Int) Bool)
(assert (forall ((x_33450 Int) (x_33432 Int) (x_33431 Int) (x_33430 Int))
	(=> (go_0 x_33450 x_33431 x_33432 (succ_73 x_33430)) (go_0 x_33450 (succ_73 x_33431) (succ_73 x_33432) (succ_73 x_33430)))))
(assert (forall ((x_33452 Int) (x_33431 Int) (x_33430 Int))
	(=> (go_0 x_33452 x_33431 x_33430 (succ_73 x_33430)) (go_0 x_33452 (succ_73 x_33431) zero_75 (succ_73 x_33430)))))
(assert (forall ((x_33454 Int) (x_33433 Int) (x_33430 Int))
	(=> (minus_210 x_33454 (succ_73 x_33430) (succ_73 x_33433)) (go_0 x_33454 zero_75 (succ_73 x_33433) (succ_73 x_33430)))))
(assert (forall ((x_33430 Int))
	(go_0 zero_75 zero_75 zero_75 (succ_73 x_33430))))
(assert (forall ((x_33429 Int) (y_1254 Int))
	(go_0 zero_75 x_33429 y_1254 zero_75)))
(declare-fun modstructural_0 (Int Int Int) Bool)
(assert (forall ((x_33458 Int) (x_33434 Int) (y_1255 Int))
	(=> (go_0 x_33458 x_33434 zero_75 y_1255) (modstructural_0 x_33458 x_33434 y_1255))))
(assert (forall ((x_33460 Int) (x_33461 Int) (m_26 Int) (n_66 Int))
	(=> (and true (diseqInt x_33460 x_33461) (mod_203 x_33460 m_26 n_66) (modstructural_0 x_33461 m_26 n_66)) false)))
(check-sat)