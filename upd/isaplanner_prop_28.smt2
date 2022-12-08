
(set-logic HORN)
(declare-fun Z_234 () Int)
(declare-fun S_83 (Int) Int)
(declare-datatypes ((Bool_43 0)) (((false_43) (true_43))))
(declare-fun diseqBool_16 (Bool_43 Bool_43) Bool)
(declare-fun isfalse_16 (Bool_43) Bool)
(declare-fun istrue_16 (Bool_43) Bool)
(assert (isfalse_16 false_43))
(assert (istrue_16 true_43))
(assert (diseqBool_16 false_43 true_43))
(assert (diseqBool_16 true_43 false_43))
(declare-fun and_43 (Bool_43 Bool_43 Bool_43) Bool)
(declare-fun or_43 (Bool_43 Bool_43 Bool_43) Bool)
(declare-fun hence_43 (Bool_43 Bool_43 Bool_43) Bool)
(declare-fun not_43 (Bool_43 Bool_43) Bool)
(assert (and_43 false_43 false_43 false_43))
(assert (and_43 false_43 true_43 false_43))
(assert (and_43 false_43 false_43 true_43))
(assert (and_43 true_43 true_43 true_43))
(assert (or_43 false_43 false_43 false_43))
(assert (or_43 true_43 true_43 false_43))
(assert (or_43 true_43 false_43 true_43))
(assert (or_43 true_43 true_43 true_43))
(assert (hence_43 true_43 false_43 false_43))
(assert (hence_43 false_43 true_43 false_43))
(assert (hence_43 true_43 false_43 true_43))
(assert (hence_43 true_43 true_43 true_43))
(assert (not_43 true_43 false_43))
(assert (not_43 false_43 true_43))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun projS_81 (Int Int) Bool)
(declare-fun isZ_83 (Int) Bool)
(declare-fun isS_83 (Int) Bool)
(assert (forall ((x_2312 Int))
	(projS_81 x_2312 (S_83 x_2312))))
(assert (isZ_83 Z_234))
(assert (forall ((x_2314 Int))
	(isS_83 (S_83 x_2314))))
(assert (forall ((x_2315 Int))
	(diseqInt Z_234 (S_83 x_2315))))
(assert (forall ((x_2316 Int))
	(diseqInt (S_83 x_2316) Z_234)))
(assert (forall ((x_2317 Int) (x_2318 Int))
	(=> (diseqInt x_2317 x_2318) (diseqInt (S_83 x_2317) (S_83 x_2318)))))
(declare-datatypes ((list_39 0)) (((nil_39) (cons_39 (head_78 Int) (tail_78 list_39)))))
(declare-fun diseqlist_39 (list_39 list_39) Bool)
(declare-fun head_79 (Int list_39) Bool)
(declare-fun tail_79 (list_39 list_39) Bool)
(declare-fun isnil_39 (list_39) Bool)
(declare-fun iscons_39 (list_39) Bool)
(assert (forall ((x_2320 Int) (x_2321 list_39))
	(head_79 x_2320 (cons_39 x_2320 x_2321))))
(assert (forall ((x_2320 Int) (x_2321 list_39))
	(tail_79 x_2321 (cons_39 x_2320 x_2321))))
(assert (isnil_39 nil_39))
(assert (forall ((x_2323 Int) (x_2324 list_39))
	(iscons_39 (cons_39 x_2323 x_2324))))
(assert (forall ((x_2325 Int) (x_2326 list_39))
	(diseqlist_39 nil_39 (cons_39 x_2325 x_2326))))
(assert (forall ((x_2327 Int) (x_2328 list_39))
	(diseqlist_39 (cons_39 x_2327 x_2328) nil_39)))
(assert (forall ((x_2329 Int) (x_2330 list_39) (x_2331 Int) (x_2332 list_39))
	(=> (diseqInt x_2329 x_2331) (diseqlist_39 (cons_39 x_2329 x_2330) (cons_39 x_2331 x_2332)))))
(assert (forall ((x_2329 Int) (x_2330 list_39) (x_2331 Int) (x_2332 list_39))
	(=> (diseqlist_39 x_2330 x_2332) (diseqlist_39 (cons_39 x_2329 x_2330) (cons_39 x_2331 x_2332)))))
(declare-fun x_2285 (Bool_43 Int Int) Bool)
(assert (forall ((x_2292 Bool_43) (y_183 Int) (x_2287 Int))
	(=> (x_2285 x_2292 x_2287 y_183) (x_2285 x_2292 (S_83 x_2287) (S_83 y_183)))))
(assert (forall ((x_2287 Int))
	(x_2285 false_43 (S_83 x_2287) Z_234)))
(assert (forall ((z_235 Int))
	(x_2285 false_43 Z_234 (S_83 z_235))))
(assert (x_2285 true_43 Z_234 Z_234))
(declare-fun elem_4 (Bool_43 Int list_39) Bool)
(assert (forall ((z_236 Int) (xs_66 list_39) (x_2288 Int))
	(=> (x_2285 true_43 x_2288 z_236) (elem_4 true_43 x_2288 (cons_39 z_236 xs_66)))))
(assert (forall ((x_2300 Bool_43) (z_236 Int) (xs_66 list_39) (x_2288 Int))
	(=> (and (elem_4 x_2300 x_2288 xs_66) (x_2285 false_43 x_2288 z_236)) (elem_4 x_2300 x_2288 (cons_39 z_236 xs_66)))))
(assert (forall ((x_2288 Int))
	(elem_4 false_43 x_2288 nil_39)))
(declare-fun x_2289 (list_39 list_39 list_39) Bool)
(assert (forall ((x_2304 list_39) (z_237 Int) (xs_67 list_39) (y_185 list_39))
	(=> (x_2289 x_2304 xs_67 y_185) (x_2289 (cons_39 z_237 x_2304) (cons_39 z_237 xs_67) y_185))))
(assert (forall ((x_2305 list_39))
	(x_2289 x_2305 nil_39 x_2305)))
(assert (forall ((x_2306 list_39) (x_2291 Int) (xs_68 list_39))
	(=> (and true (x_2289 x_2306 xs_68 (cons_39 x_2291 nil_39)) (elem_4 false_43 x_2291 x_2306)) false)))
(check-sat)
