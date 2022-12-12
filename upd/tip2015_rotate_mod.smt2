
(set-logic HORN)
(define-fun Z_1263 () Int 0)
(define-fun S_308 ((x Int)) Int (+ x 1))
(define-fun zero_84 () Int 0)
(define-fun succ_82 ((x Int)) Int (+ x 1))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun unS_429 (Int Int) Bool)
(declare-fun isZ_287 (Int) Bool)
(declare-fun isS_287 (Int) Bool)
(assert (forall ((x_34537 Int))
	(unS_429 x_34537 (S_308 x_34537))))
(assert (isZ_287 Z_1263))
(assert (forall ((x_34539 Int))
	(isS_287 (S_308 x_34539))))
(assert (forall ((x_34540 Int))
	(diseqInt Z_1263 (S_308 x_34540))))
(assert (forall ((x_34541 Int))
	(diseqInt (S_308 x_34541) Z_1263)))
(assert (forall ((x_34542 Int) (x_34543 Int))
	(=> (diseqInt x_34542 x_34543) (diseqInt (S_308 x_34542) (S_308 x_34543)))))
(declare-fun add_230 (Int Int Int) Bool)
(declare-fun minus_225 (Int Int Int) Bool)
(declare-fun le_214 (Int Int) Bool)
(declare-fun ge_214 (Int Int) Bool)
(declare-fun lt_229 (Int Int) Bool)
(declare-fun gt_217 (Int Int) Bool)
(declare-fun mult_214 (Int Int Int) Bool)
(declare-fun div_214 (Int Int Int) Bool)
(declare-fun mod_216 (Int Int Int) Bool)
(assert (forall ((y_1364 Int))
	(add_230 y_1364 Z_1263 y_1364)))
(assert (forall ((x_34511 Int) (y_1364 Int) (r_261 Int))
	(=> (add_230 r_261 x_34511 y_1364) (add_230 (S_308 r_261) (S_308 x_34511) y_1364))))
(assert (forall ((y_1364 Int))
	(minus_225 Z_1263 Z_1263 y_1364)))
(assert (forall ((x_34511 Int) (y_1364 Int) (r_261 Int))
	(=> (minus_225 r_261 x_34511 y_1364) (minus_225 (S_308 r_261) (S_308 x_34511) y_1364))))
(assert (forall ((y_1364 Int))
	(le_214 Z_1263 y_1364)))
(assert (forall ((x_34511 Int) (y_1364 Int))
	(=> (le_214 x_34511 y_1364) (le_214 (S_308 x_34511) (S_308 y_1364)))))
(assert (forall ((y_1364 Int))
	(ge_214 y_1364 Z_1263)))
(assert (forall ((x_34511 Int) (y_1364 Int))
	(=> (ge_214 x_34511 y_1364) (ge_214 (S_308 x_34511) (S_308 y_1364)))))
(assert (forall ((y_1364 Int))
	(lt_229 Z_1263 (S_308 y_1364))))
(assert (forall ((x_34511 Int) (y_1364 Int))
	(=> (lt_229 x_34511 y_1364) (lt_229 (S_308 x_34511) (S_308 y_1364)))))
(assert (forall ((y_1364 Int))
	(gt_217 (S_308 y_1364) Z_1263)))
(assert (forall ((x_34511 Int) (y_1364 Int))
	(=> (gt_217 x_34511 y_1364) (gt_217 (S_308 x_34511) (S_308 y_1364)))))
(assert (forall ((y_1364 Int))
	(mult_214 Z_1263 Z_1263 y_1364)))
(assert (forall ((x_34511 Int) (y_1364 Int) (r_261 Int) (z_1264 Int))
	(=> (and (mult_214 r_261 x_34511 y_1364) (add_230 z_1264 r_261 y_1364)) (mult_214 z_1264 (S_308 x_34511) y_1364))))
(assert (forall ((x_34511 Int) (y_1364 Int))
	(=> (lt_229 x_34511 y_1364) (div_214 Z_1263 x_34511 y_1364))))
(assert (forall ((x_34511 Int) (y_1364 Int) (r_261 Int) (z_1264 Int))
	(=> (and (ge_214 x_34511 y_1364) (minus_225 z_1264 x_34511 y_1364) (div_214 r_261 z_1264 y_1364)) (div_214 (S_308 r_261) x_34511 y_1364))))
(assert (forall ((x_34511 Int) (y_1364 Int))
	(=> (lt_229 x_34511 y_1364) (mod_216 x_34511 x_34511 y_1364))))
(assert (forall ((x_34511 Int) (y_1364 Int) (r_261 Int) (z_1264 Int))
	(=> (and (ge_214 x_34511 y_1364) (minus_225 z_1264 x_34511 y_1364) (mod_216 r_261 z_1264 y_1364)) (mod_216 r_261 x_34511 y_1364))))
(declare-datatypes ((Bool_214 0)) (((false_214) (true_214))))
(declare-fun diseqBool_97 (Bool_214 Bool_214) Bool)
(declare-fun isfalse_97 (Bool_214) Bool)
(declare-fun istrue_97 (Bool_214) Bool)
(assert (isfalse_97 false_214))
(assert (istrue_97 true_214))
(assert (diseqBool_97 false_214 true_214))
(assert (diseqBool_97 true_214 false_214))
(declare-fun and_214 (Bool_214 Bool_214 Bool_214) Bool)
(declare-fun or_218 (Bool_214 Bool_214 Bool_214) Bool)
(declare-fun hence_214 (Bool_214 Bool_214 Bool_214) Bool)
(declare-fun not_217 (Bool_214 Bool_214) Bool)
(assert (and_214 false_214 false_214 false_214))
(assert (and_214 false_214 true_214 false_214))
(assert (and_214 false_214 false_214 true_214))
(assert (and_214 true_214 true_214 true_214))
(assert (or_218 false_214 false_214 false_214))
(assert (or_218 true_214 true_214 false_214))
(assert (or_218 true_214 false_214 true_214))
(assert (or_218 true_214 true_214 true_214))
(assert (hence_214 true_214 false_214 false_214))
(assert (hence_214 false_214 true_214 false_214))
(assert (hence_214 true_214 false_214 true_214))
(assert (hence_214 true_214 true_214 true_214))
(assert (not_217 true_214 false_214))
(assert (not_217 false_214 true_214))
(declare-datatypes ((list_148 0)) (((nil_167) (cons_148 (head_296 Int) (tail_296 list_148)))))
(declare-fun diseqlist_148 (list_148 list_148) Bool)
(declare-fun head_297 (Int list_148) Bool)
(declare-fun tail_297 (list_148 list_148) Bool)
(declare-fun isnil_167 (list_148) Bool)
(declare-fun iscons_148 (list_148) Bool)
(assert (forall ((x_34515 Int) (x_34516 list_148))
	(head_297 x_34515 (cons_148 x_34515 x_34516))))
(assert (forall ((x_34515 Int) (x_34516 list_148))
	(tail_297 x_34516 (cons_148 x_34515 x_34516))))
(assert (isnil_167 nil_167))
(assert (forall ((x_34518 Int) (x_34519 list_148))
	(iscons_148 (cons_148 x_34518 x_34519))))
(assert (forall ((x_34520 Int) (x_34521 list_148))
	(diseqlist_148 nil_167 (cons_148 x_34520 x_34521))))
(assert (forall ((x_34522 Int) (x_34523 list_148))
	(diseqlist_148 (cons_148 x_34522 x_34523) nil_167)))
(assert (forall ((x_34524 Int) (x_34525 list_148) (x_34526 Int) (x_34527 list_148))
	(=> (diseqInt x_34524 x_34526) (diseqlist_148 (cons_148 x_34524 x_34525) (cons_148 x_34526 x_34527)))))
(assert (forall ((x_34524 Int) (x_34525 list_148) (x_34526 Int) (x_34527 list_148))
	(=> (diseqlist_148 x_34525 x_34527) (diseqlist_148 (cons_148 x_34524 x_34525) (cons_148 x_34526 x_34527)))))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_234 (Int Int) Bool)
(declare-fun iszero_82 (Int) Bool)
(declare-fun issucc_82 (Int) Bool)
(assert (forall ((x_34529 Int))
	(p_234 x_34529 (succ_82 x_34529))))
(assert (iszero_82 zero_84))
(assert (forall ((x_34531 Int))
	(issucc_82 (succ_82 x_34531))))
(assert (forall ((x_34532 Int))
	(diseqInt zero_84 (succ_82 x_34532))))
(assert (forall ((x_34533 Int))
	(diseqInt (succ_82 x_34533) zero_84)))
(assert (forall ((x_34534 Int) (x_34535 Int))
	(=> (diseqInt x_34534 x_34535) (diseqInt (succ_82 x_34534) (succ_82 x_34535)))))
(declare-fun take_33 (list_148 Int list_148) Bool)
(assert (forall ((x_34458 list_148) (z_1252 Int) (xs_396 list_148) (z_1251 Int))
	(=> (take_33 x_34458 z_1251 xs_396) (take_33 (cons_148 z_1252 x_34458) (succ_82 z_1251) (cons_148 z_1252 xs_396)))))
(assert (forall ((z_1251 Int))
	(take_33 nil_167 (succ_82 z_1251) nil_167)))
(assert (forall ((y_1352 list_148))
	(take_33 nil_167 zero_84 y_1352)))
(declare-fun plus_76 (Int Int Int) Bool)
(assert (forall ((x_34462 Int) (z_1253 Int) (y_1353 Int))
	(=> (plus_76 x_34462 z_1253 y_1353) (plus_76 (succ_82 x_34462) (succ_82 z_1253) y_1353))))
(assert (forall ((x_34463 Int))
	(plus_76 x_34463 zero_84 x_34463)))
(declare-fun minus_224 (Int Int Int) Bool)
(assert (forall ((x_34464 Int) (y_1355 Int) (z_1254 Int))
	(=> (minus_224 x_34464 z_1254 y_1355) (minus_224 x_34464 (succ_82 z_1254) (succ_82 y_1355)))))
(assert (forall ((z_1254 Int))
	(minus_224 zero_84 (succ_82 z_1254) zero_84)))
(assert (forall ((y_1354 Int))
	(minus_224 zero_84 zero_84 y_1354)))
(declare-fun lt_228 (Bool_214 Int Int) Bool)
(assert (forall ((x_34468 Bool_214) (n_73 Int) (z_1255 Int))
	(=> (lt_228 x_34468 n_73 z_1255) (lt_228 x_34468 (succ_82 n_73) (succ_82 z_1255)))))
(assert (forall ((z_1255 Int))
	(lt_228 true_214 zero_84 (succ_82 z_1255))))
(assert (forall ((x_34446 Int))
	(lt_228 false_214 x_34446 zero_84)))
(declare-fun mod_215 (Int Int Int) Bool)
(assert (forall ((z_1256 Int) (x_34447 Int))
	(=> (lt_228 true_214 x_34447 (succ_82 z_1256)) (mod_215 x_34447 x_34447 (succ_82 z_1256)))))
(assert (forall ((x_34475 Int) (x_34476 Int) (z_1256 Int) (x_34447 Int))
	(=> (and (minus_224 x_34476 x_34447 (succ_82 z_1256)) (mod_215 x_34475 x_34476 (succ_82 z_1256)) (lt_228 false_214 x_34447 (succ_82 z_1256))) (mod_215 x_34475 x_34447 (succ_82 z_1256)))))
(assert (forall ((x_34447 Int))
	(mod_215 zero_84 x_34447 zero_84)))
(declare-fun length_21 (Int list_148) Bool)
(assert (forall ((x_34479 Int) (x_34480 Int) (y_1358 Int) (l_23 list_148))
	(=> (and (length_21 x_34480 l_23) (plus_76 x_34479 (succ_82 zero_84) x_34480)) (length_21 x_34479 (cons_148 y_1358 l_23)))))
(assert (length_21 zero_84 nil_167))
(declare-fun drop_35 (list_148 Int list_148) Bool)
(assert (forall ((x_34483 list_148) (z_1258 Int) (xs_397 list_148) (z_1257 Int))
	(=> (drop_35 x_34483 z_1257 xs_397) (drop_35 x_34483 (succ_82 z_1257) (cons_148 z_1258 xs_397)))))
(assert (forall ((z_1257 Int))
	(drop_35 nil_167 (succ_82 z_1257) nil_167)))
(assert (forall ((x_34486 list_148))
	(drop_35 x_34486 zero_84 x_34486)))
(declare-fun x_34450 (list_148 list_148 list_148) Bool)
(assert (forall ((x_34488 list_148) (z_1259 Int) (xs_398 list_148) (y_1360 list_148))
	(=> (x_34450 x_34488 xs_398 y_1360) (x_34450 (cons_148 z_1259 x_34488) (cons_148 z_1259 xs_398) y_1360))))
(assert (forall ((x_34489 list_148))
	(x_34450 x_34489 nil_167 x_34489)))
(declare-fun rotate_2 (list_148 Int list_148) Bool)
(assert (forall ((x_34490 list_148) (x_34491 list_148) (z_1261 Int) (xs_399 list_148) (z_1260 Int))
	(=> (and (x_34450 x_34491 xs_399 (cons_148 z_1261 nil_167)) (rotate_2 x_34490 z_1260 x_34491)) (rotate_2 x_34490 (succ_82 z_1260) (cons_148 z_1261 xs_399)))))
(assert (forall ((z_1260 Int))
	(rotate_2 nil_167 (succ_82 z_1260) nil_167)))
(assert (forall ((x_34494 list_148))
	(rotate_2 x_34494 zero_84 x_34494)))
(assert (forall ((x_34495 Int) (x_34496 Int) (x_34497 Int) (x_34498 Int) (x_34453 Int) (y_1362 Int) (z_1262 Int))
	(=> (and true (diseqInt x_34496 x_34498) (plus_76 x_34495 y_1362 z_1262) (plus_76 x_34496 x_34453 x_34495) (plus_76 x_34497 x_34453 y_1362) (plus_76 x_34498 x_34497 z_1262)) false)))
(assert (forall ((x_34499 Int) (x_34500 Int) (x_34454 Int) (y_1363 Int))
	(=> (and true (diseqInt x_34499 x_34500) (plus_76 x_34499 x_34454 y_1363) (plus_76 x_34500 y_1363 x_34454)) false)))
(assert (forall ((x_34501 Int) (x_34455 Int))
	(=> (and true (diseqInt x_34501 x_34455) (plus_76 x_34501 x_34455 zero_84)) false)))
(assert (forall ((x_34502 Int) (x_34456 Int))
	(=> (and true (diseqInt x_34502 x_34456) (plus_76 x_34502 zero_84 x_34456)) false)))
(assert (forall ((x_34503 list_148) (x_34504 Int) (x_34505 Int) (x_34506 list_148) (x_34507 Int) (x_34508 Int) (x_34509 list_148) (x_34510 list_148) (n_74 Int) (xs_400 list_148))
	(=> (and true (diseqlist_148 x_34503 x_34510) (rotate_2 x_34503 n_74 xs_400) (length_21 x_34504 xs_400) (mod_215 x_34505 n_74 x_34504) (drop_35 x_34506 x_34505 xs_400) (length_21 x_34507 xs_400) (mod_215 x_34508 n_74 x_34507) (take_33 x_34509 x_34508 xs_400) (x_34450 x_34510 x_34506 x_34509)) false)))
(check-sat)
