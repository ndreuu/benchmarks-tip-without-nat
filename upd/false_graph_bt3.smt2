
(set-logic HORN)
(define-fun Z_2711 () Int 0)
(define-fun S_623 ((x Int)) Int (+ x 1))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun unS_869 (Int Int) Bool)
(declare-fun isZ_559 (Int) Bool)
(declare-fun isS_559 (Int) Bool)
(assert (forall ((x_125367 Int))
	(unS_869 x_125367 (S_623 x_125367))))
(assert (isZ_559 Z_2711))
(assert (forall ((x_125369 Int))
	(isS_559 (S_623 x_125369))))
(assert (forall ((x_125370 Int))
	(diseqInt Z_2711 (S_623 x_125370))))
(assert (forall ((x_125371 Int))
	(diseqInt (S_623 x_125371) Z_2711)))
(assert (forall ((x_125372 Int) (x_125373 Int))
	(=> (diseqInt x_125372 x_125373) (diseqInt (S_623 x_125372) (S_623 x_125373)))))
(declare-fun add_468 (Int Int Int) Bool)
(declare-fun minus_455 (Int Int Int) Bool)
(declare-fun le_434 (Int Int) Bool)
(declare-fun ge_434 (Int Int) Bool)
(declare-fun lt_454 (Int Int) Bool)
(declare-fun gt_437 (Int Int) Bool)
(declare-fun mult_435 (Int Int Int) Bool)
(declare-fun div_434 (Int Int Int) Bool)
(declare-fun mod_436 (Int Int Int) Bool)
(assert (forall ((y_3171 Int))
	(add_468 y_3171 Z_2711 y_3171)))
(assert (forall ((x_125304 Int) (y_3171 Int) (r_643 Int))
	(=> (add_468 r_643 x_125304 y_3171) (add_468 (S_623 r_643) (S_623 x_125304) y_3171))))
(assert (forall ((y_3171 Int))
	(minus_455 Z_2711 Z_2711 y_3171)))
(assert (forall ((x_125304 Int) (y_3171 Int) (r_643 Int))
	(=> (minus_455 r_643 x_125304 y_3171) (minus_455 (S_623 r_643) (S_623 x_125304) y_3171))))
(assert (forall ((y_3171 Int))
	(le_434 Z_2711 y_3171)))
(assert (forall ((x_125304 Int) (y_3171 Int))
	(=> (le_434 x_125304 y_3171) (le_434 (S_623 x_125304) (S_623 y_3171)))))
(assert (forall ((y_3171 Int))
	(ge_434 y_3171 Z_2711)))
(assert (forall ((x_125304 Int) (y_3171 Int))
	(=> (ge_434 x_125304 y_3171) (ge_434 (S_623 x_125304) (S_623 y_3171)))))
(assert (forall ((y_3171 Int))
	(lt_454 Z_2711 (S_623 y_3171))))
(assert (forall ((x_125304 Int) (y_3171 Int))
	(=> (lt_454 x_125304 y_3171) (lt_454 (S_623 x_125304) (S_623 y_3171)))))
(assert (forall ((y_3171 Int))
	(gt_437 (S_623 y_3171) Z_2711)))
(assert (forall ((x_125304 Int) (y_3171 Int))
	(=> (gt_437 x_125304 y_3171) (gt_437 (S_623 x_125304) (S_623 y_3171)))))
(assert (forall ((y_3171 Int))
	(mult_435 Z_2711 Z_2711 y_3171)))
(assert (forall ((x_125304 Int) (y_3171 Int) (r_643 Int) (z_2712 Int))
	(=> (and (mult_435 r_643 x_125304 y_3171) (add_468 z_2712 r_643 y_3171)) (mult_435 z_2712 (S_623 x_125304) y_3171))))
(assert (forall ((x_125304 Int) (y_3171 Int))
	(=> (lt_454 x_125304 y_3171) (div_434 Z_2711 x_125304 y_3171))))
(assert (forall ((x_125304 Int) (y_3171 Int) (r_643 Int) (z_2712 Int))
	(=> (and (ge_434 x_125304 y_3171) (minus_455 z_2712 x_125304 y_3171) (div_434 r_643 z_2712 y_3171)) (div_434 (S_623 r_643) x_125304 y_3171))))
(assert (forall ((x_125304 Int) (y_3171 Int))
	(=> (lt_454 x_125304 y_3171) (mod_436 x_125304 x_125304 y_3171))))
(assert (forall ((x_125304 Int) (y_3171 Int) (r_643 Int) (z_2712 Int))
	(=> (and (ge_434 x_125304 y_3171) (minus_455 z_2712 x_125304 y_3171) (mod_436 r_643 z_2712 y_3171)) (mod_436 r_643 x_125304 y_3171))))
(declare-datatypes ((Bool_434 0)) (((false_434) (true_434))))
(declare-fun diseqBool_217 (Bool_434 Bool_434) Bool)
(declare-fun isfalse_217 (Bool_434) Bool)
(declare-fun istrue_217 (Bool_434) Bool)
(assert (isfalse_217 false_434))
(assert (istrue_217 true_434))
(assert (diseqBool_217 false_434 true_434))
(assert (diseqBool_217 true_434 false_434))
(declare-fun and_440 (Bool_434 Bool_434 Bool_434) Bool)
(declare-fun or_453 (Bool_434 Bool_434 Bool_434) Bool)
(declare-fun hence_434 (Bool_434 Bool_434 Bool_434) Bool)
(declare-fun not_439 (Bool_434 Bool_434) Bool)
(assert (and_440 false_434 false_434 false_434))
(assert (and_440 false_434 true_434 false_434))
(assert (and_440 false_434 false_434 true_434))
(assert (and_440 true_434 true_434 true_434))
(assert (or_453 false_434 false_434 false_434))
(assert (or_453 true_434 true_434 false_434))
(assert (or_453 true_434 false_434 true_434))
(assert (or_453 true_434 true_434 true_434))
(assert (hence_434 true_434 false_434 false_434))
(assert (hence_434 false_434 true_434 false_434))
(assert (hence_434 true_434 false_434 true_434))
(assert (hence_434 true_434 true_434 true_434))
(assert (not_439 true_434 false_434))
(assert (not_439 false_434 true_434))
(declare-datatypes ((pair_198 0)) (((pair_199 (projpair_396 Int) (projpair_397 Int)))))
(declare-fun diseqpair_99 (pair_198 pair_198) Bool)
(declare-fun projpair_400 (Int pair_198) Bool)
(declare-fun projpair_401 (Int pair_198) Bool)
(declare-fun ispair_99 (pair_198) Bool)
(assert (forall ((x_125376 Int) (x_125377 Int))
	(projpair_400 x_125376 (pair_199 x_125376 x_125377))))
(assert (forall ((x_125376 Int) (x_125377 Int))
	(projpair_401 x_125377 (pair_199 x_125376 x_125377))))
(assert (forall ((x_125379 Int) (x_125380 Int))
	(ispair_99 (pair_199 x_125379 x_125380))))
(assert (forall ((x_125381 Int) (x_125382 Int) (x_125383 Int) (x_125384 Int))
	(=> (diseqInt x_125381 x_125383) (diseqpair_99 (pair_199 x_125381 x_125382) (pair_199 x_125383 x_125384)))))
(assert (forall ((x_125381 Int) (x_125382 Int) (x_125383 Int) (x_125384 Int))
	(=> (diseqInt x_125382 x_125384) (diseqpair_99 (pair_199 x_125381 x_125382) (pair_199 x_125383 x_125384)))))
(declare-datatypes ((list_384 0)) (((nil_441) (cons_378 (head_756 Bool_434) (tail_762 list_384)))))
(declare-fun diseqlist_378 (list_384 list_384) Bool)
(declare-fun head_762 (Bool_434 list_384) Bool)
(declare-fun tail_768 (list_384 list_384) Bool)
(declare-fun isnil_441 (list_384) Bool)
(declare-fun iscons_378 (list_384) Bool)
(assert (forall ((x_125386 Bool_434) (x_125387 list_384))
	(head_762 x_125386 (cons_378 x_125386 x_125387))))
(assert (forall ((x_125386 Bool_434) (x_125387 list_384))
	(tail_768 x_125387 (cons_378 x_125386 x_125387))))
(assert (isnil_441 nil_441))
(assert (forall ((x_125389 Bool_434) (x_125390 list_384))
	(iscons_378 (cons_378 x_125389 x_125390))))
(assert (forall ((x_125391 Bool_434) (x_125392 list_384))
	(diseqlist_378 nil_441 (cons_378 x_125391 x_125392))))
(assert (forall ((x_125393 Bool_434) (x_125394 list_384))
	(diseqlist_378 (cons_378 x_125393 x_125394) nil_441)))
(assert (forall ((x_125395 Bool_434) (x_125396 list_384) (x_125397 Bool_434) (x_125398 list_384))
	(=> (diseqBool_217 x_125395 x_125397) (diseqlist_378 (cons_378 x_125395 x_125396) (cons_378 x_125397 x_125398)))))
(assert (forall ((x_125395 Bool_434) (x_125396 list_384) (x_125397 Bool_434) (x_125398 list_384))
	(=> (diseqlist_378 x_125396 x_125398) (diseqlist_378 (cons_378 x_125395 x_125396) (cons_378 x_125397 x_125398)))))
(declare-datatypes ((list_385 0)) (((nil_442) (cons_379 (head_757 Int) (tail_763 list_385)))))
(declare-fun diseqlist_379 (list_385 list_385) Bool)
(declare-fun head_763 (Int list_385) Bool)
(declare-fun tail_769 (list_385 list_385) Bool)
(declare-fun isnil_442 (list_385) Bool)
(declare-fun iscons_379 (list_385) Bool)
(assert (forall ((x_125400 Int) (x_125401 list_385))
	(head_763 x_125400 (cons_379 x_125400 x_125401))))
(assert (forall ((x_125400 Int) (x_125401 list_385))
	(tail_769 x_125401 (cons_379 x_125400 x_125401))))
(assert (isnil_442 nil_442))
(assert (forall ((x_125403 Int) (x_125404 list_385))
	(iscons_379 (cons_379 x_125403 x_125404))))
(assert (forall ((x_125405 Int) (x_125406 list_385))
	(diseqlist_379 nil_442 (cons_379 x_125405 x_125406))))
(assert (forall ((x_125407 Int) (x_125408 list_385))
	(diseqlist_379 (cons_379 x_125407 x_125408) nil_442)))
(assert (forall ((x_125409 Int) (x_125410 list_385) (x_125411 Int) (x_125412 list_385))
	(=> (diseqInt x_125409 x_125411) (diseqlist_379 (cons_379 x_125409 x_125410) (cons_379 x_125411 x_125412)))))
(assert (forall ((x_125409 Int) (x_125410 list_385) (x_125411 Int) (x_125412 list_385))
	(=> (diseqlist_379 x_125410 x_125412) (diseqlist_379 (cons_379 x_125409 x_125410) (cons_379 x_125411 x_125412)))))
(declare-datatypes ((list_386 0)) (((nil_443) (cons_380 (head_758 pair_198) (tail_764 list_386)))))
(declare-fun diseqlist_380 (list_386 list_386) Bool)
(declare-fun head_764 (pair_198 list_386) Bool)
(declare-fun tail_770 (list_386 list_386) Bool)
(declare-fun isnil_443 (list_386) Bool)
(declare-fun iscons_380 (list_386) Bool)
(assert (forall ((x_125414 pair_198) (x_125415 list_386))
	(head_764 x_125414 (cons_380 x_125414 x_125415))))
(assert (forall ((x_125414 pair_198) (x_125415 list_386))
	(tail_770 x_125415 (cons_380 x_125414 x_125415))))
(assert (isnil_443 nil_443))
(assert (forall ((x_125417 pair_198) (x_125418 list_386))
	(iscons_380 (cons_380 x_125417 x_125418))))
(assert (forall ((x_125419 pair_198) (x_125420 list_386))
	(diseqlist_380 nil_443 (cons_380 x_125419 x_125420))))
(assert (forall ((x_125421 pair_198) (x_125422 list_386))
	(diseqlist_380 (cons_380 x_125421 x_125422) nil_443)))
(assert (forall ((x_125423 pair_198) (x_125424 list_386) (x_125425 pair_198) (x_125426 list_386))
	(=> (diseqpair_99 x_125423 x_125425) (diseqlist_380 (cons_380 x_125423 x_125424) (cons_380 x_125425 x_125426)))))
(assert (forall ((x_125423 pair_198) (x_125424 list_386) (x_125425 pair_198) (x_125426 list_386))
	(=> (diseqlist_380 x_125424 x_125426) (diseqlist_380 (cons_380 x_125423 x_125424) (cons_380 x_125425 x_125426)))))
(declare-datatypes ((B_131 0)) (((I_17) (O_12))))
(declare-fun diseqB_4 (B_131 B_131) Bool)
(declare-fun isI_4 (B_131) Bool)
(declare-fun isO_4 (B_131) Bool)
(assert (isI_4 I_17))
(assert (isO_4 O_12))
(assert (diseqB_4 I_17 O_12))
(assert (diseqB_4 O_12 I_17))
(declare-datatypes ((list_387 0)) (((nil_444) (cons_381 (head_759 B_131) (tail_765 list_387)))))
(declare-fun diseqlist_381 (list_387 list_387) Bool)
(declare-fun head_765 (B_131 list_387) Bool)
(declare-fun tail_771 (list_387 list_387) Bool)
(declare-fun isnil_444 (list_387) Bool)
(declare-fun iscons_381 (list_387) Bool)
(assert (forall ((x_125430 B_131) (x_125431 list_387))
	(head_765 x_125430 (cons_381 x_125430 x_125431))))
(assert (forall ((x_125430 B_131) (x_125431 list_387))
	(tail_771 x_125431 (cons_381 x_125430 x_125431))))
(assert (isnil_444 nil_444))
(assert (forall ((x_125433 B_131) (x_125434 list_387))
	(iscons_381 (cons_381 x_125433 x_125434))))
(assert (forall ((x_125435 B_131) (x_125436 list_387))
	(diseqlist_381 nil_444 (cons_381 x_125435 x_125436))))
(assert (forall ((x_125437 B_131) (x_125438 list_387))
	(diseqlist_381 (cons_381 x_125437 x_125438) nil_444)))
(assert (forall ((x_125439 B_131) (x_125440 list_387) (x_125441 B_131) (x_125442 list_387))
	(=> (diseqB_4 x_125439 x_125441) (diseqlist_381 (cons_381 x_125439 x_125440) (cons_381 x_125441 x_125442)))))
(assert (forall ((x_125439 B_131) (x_125440 list_387) (x_125441 B_131) (x_125442 list_387))
	(=> (diseqlist_381 x_125440 x_125442) (diseqlist_381 (cons_381 x_125439 x_125440) (cons_381 x_125441 x_125442)))))
(declare-datatypes ((list_388 0)) (((nil_445) (cons_382 (head_760 list_387) (tail_766 list_388)))))
(declare-fun diseqlist_382 (list_388 list_388) Bool)
(declare-fun head_766 (list_387 list_388) Bool)
(declare-fun tail_772 (list_388 list_388) Bool)
(declare-fun isnil_445 (list_388) Bool)
(declare-fun iscons_382 (list_388) Bool)
(assert (forall ((x_125444 list_387) (x_125445 list_388))
	(head_766 x_125444 (cons_382 x_125444 x_125445))))
(assert (forall ((x_125444 list_387) (x_125445 list_388))
	(tail_772 x_125445 (cons_382 x_125444 x_125445))))
(assert (isnil_445 nil_445))
(assert (forall ((x_125447 list_387) (x_125448 list_388))
	(iscons_382 (cons_382 x_125447 x_125448))))
(assert (forall ((x_125449 list_387) (x_125450 list_388))
	(diseqlist_382 nil_445 (cons_382 x_125449 x_125450))))
(assert (forall ((x_125451 list_387) (x_125452 list_388))
	(diseqlist_382 (cons_382 x_125451 x_125452) nil_445)))
(assert (forall ((x_125453 list_387) (x_125454 list_388) (x_125455 list_387) (x_125456 list_388))
	(=> (diseqlist_381 x_125453 x_125455) (diseqlist_382 (cons_382 x_125453 x_125454) (cons_382 x_125455 x_125456)))))
(assert (forall ((x_125453 list_387) (x_125454 list_388) (x_125455 list_387) (x_125456 list_388))
	(=> (diseqlist_382 x_125454 x_125456) (diseqlist_382 (cons_382 x_125453 x_125454) (cons_382 x_125455 x_125456)))))
(declare-datatypes ((pair_200 0)) (((pair_201 (projpair_398 list_387) (projpair_399 list_387)))))
(declare-fun diseqpair_100 (pair_200 pair_200) Bool)
(declare-fun projpair_402 (list_387 pair_200) Bool)
(declare-fun projpair_403 (list_387 pair_200) Bool)
(declare-fun ispair_100 (pair_200) Bool)
(assert (forall ((x_125457 list_387) (x_125458 list_387))
	(projpair_402 x_125457 (pair_201 x_125457 x_125458))))
(assert (forall ((x_125457 list_387) (x_125458 list_387))
	(projpair_403 x_125458 (pair_201 x_125457 x_125458))))
(assert (forall ((x_125460 list_387) (x_125461 list_387))
	(ispair_100 (pair_201 x_125460 x_125461))))
(assert (forall ((x_125462 list_387) (x_125463 list_387) (x_125464 list_387) (x_125465 list_387))
	(=> (diseqlist_381 x_125462 x_125464) (diseqpair_100 (pair_201 x_125462 x_125463) (pair_201 x_125464 x_125465)))))
(assert (forall ((x_125462 list_387) (x_125463 list_387) (x_125464 list_387) (x_125465 list_387))
	(=> (diseqlist_381 x_125463 x_125465) (diseqpair_100 (pair_201 x_125462 x_125463) (pair_201 x_125464 x_125465)))))
(declare-datatypes ((list_389 0)) (((nil_446) (cons_383 (head_761 pair_200) (tail_767 list_389)))))
(declare-fun diseqlist_383 (list_389 list_389) Bool)
(declare-fun head_767 (pair_200 list_389) Bool)
(declare-fun tail_773 (list_389 list_389) Bool)
(declare-fun isnil_446 (list_389) Bool)
(declare-fun iscons_383 (list_389) Bool)
(assert (forall ((x_125467 pair_200) (x_125468 list_389))
	(head_767 x_125467 (cons_383 x_125467 x_125468))))
(assert (forall ((x_125467 pair_200) (x_125468 list_389))
	(tail_773 x_125468 (cons_383 x_125467 x_125468))))
(assert (isnil_446 nil_446))
(assert (forall ((x_125470 pair_200) (x_125471 list_389))
	(iscons_383 (cons_383 x_125470 x_125471))))
(assert (forall ((x_125472 pair_200) (x_125473 list_389))
	(diseqlist_383 nil_446 (cons_383 x_125472 x_125473))))
(assert (forall ((x_125474 pair_200) (x_125475 list_389))
	(diseqlist_383 (cons_383 x_125474 x_125475) nil_446)))
(assert (forall ((x_125476 pair_200) (x_125477 list_389) (x_125478 pair_200) (x_125479 list_389))
	(=> (diseqpair_100 x_125476 x_125478) (diseqlist_383 (cons_383 x_125476 x_125477) (cons_383 x_125478 x_125479)))))
(assert (forall ((x_125476 pair_200) (x_125477 list_389) (x_125478 pair_200) (x_125479 list_389))
	(=> (diseqlist_383 x_125477 x_125479) (diseqlist_383 (cons_383 x_125476 x_125477) (cons_383 x_125478 x_125479)))))
(declare-fun primEnumFromTo_11 (list_385 Int Int) Bool)
(assert (forall ((x_125104 Int) (y_3148 Int))
	(=> (gt_437 x_125104 y_3148) (primEnumFromTo_11 nil_442 x_125104 y_3148))))
(assert (forall ((x_125305 Int) (x_125146 list_385) (x_125104 Int) (y_3148 Int))
	(=> (and (le_434 x_125104 y_3148) (primEnumFromTo_11 x_125146 x_125305 y_3148) (add_468 x_125305 (S_623 Z_2711) x_125104)) (primEnumFromTo_11 (cons_379 x_125104 x_125146) x_125104 y_3148))))
(declare-fun or_452 (Bool_434 list_384) Bool)
(assert (forall ((x_125147 Bool_434) (x_125148 Bool_434) (y_3149 Bool_434) (xs_877 list_384))
	(=> (and (or_452 x_125148 xs_877) (or_453 x_125147 y_3149 x_125148)) (or_452 x_125147 (cons_378 y_3149 xs_877)))))
(assert (or_452 false_434 nil_441))
(declare-fun maximummaximum_5 (Int Int list_386) Bool)
(assert (forall ((x_125150 Int) (y_3152 Int) (y_3151 Int) (yzs_5 list_386) (x_125106 Int))
	(=> (and (le_434 y_3151 y_3152) (le_434 x_125106 y_3152) (maximummaximum_5 x_125150 y_3152 yzs_5)) (maximummaximum_5 x_125150 x_125106 (cons_380 (pair_199 y_3151 y_3152) yzs_5)))))
(assert (forall ((x_125152 Int) (y_3152 Int) (y_3151 Int) (yzs_5 list_386) (x_125106 Int))
	(=> (and (le_434 y_3151 y_3152) (gt_437 x_125106 y_3152) (maximummaximum_5 x_125152 x_125106 yzs_5)) (maximummaximum_5 x_125152 x_125106 (cons_380 (pair_199 y_3151 y_3152) yzs_5)))))
(assert (forall ((x_125154 Int) (y_3151 Int) (z_2696 Int) (yzs_5 list_386) (x_125106 Int))
	(=> (and (gt_437 y_3151 z_2696) (le_434 x_125106 y_3151) (maximummaximum_5 x_125154 y_3151 yzs_5)) (maximummaximum_5 x_125154 x_125106 (cons_380 (pair_199 y_3151 z_2696) yzs_5)))))
(assert (forall ((x_125156 Int) (y_3151 Int) (z_2696 Int) (yzs_5 list_386) (x_125106 Int))
	(=> (and (gt_437 y_3151 z_2696) (gt_437 x_125106 y_3151) (maximummaximum_5 x_125156 x_125106 yzs_5)) (maximummaximum_5 x_125156 x_125106 (cons_380 (pair_199 y_3151 z_2696) yzs_5)))))
(assert (forall ((x_125106 Int))
	(maximummaximum_5 x_125106 x_125106 nil_443)))
(declare-fun length_69 (Int list_388) Bool)
(assert (forall ((x_125159 Int) (x_125160 Int) (y_3153 list_387) (l_60 list_388))
	(=> (and (length_69 x_125160 l_60) (add_468 x_125159 (S_623 Z_2711) x_125160)) (length_69 x_125159 (cons_382 y_3153 l_60)))))
(assert (length_69 Z_2711 nil_445))
(declare-fun last_16 (list_387 list_387 list_388) Bool)
(assert (forall ((x_125162 list_387) (z_2697 list_387) (ys_240 list_388) (x_125108 list_387))
	(=> (last_16 x_125162 z_2697 ys_240) (last_16 x_125162 x_125108 (cons_382 z_2697 ys_240)))))
(assert (forall ((x_125108 list_387))
	(last_16 x_125108 x_125108 nil_445)))
(declare-fun dodeca_28 (list_386 Int list_385) Bool)
(assert (forall ((x_125307 Int) (x_125308 Int) (x_125309 Int) (x_125310 Int) (x_125311 Int) (x_125312 Int) (x_125313 Int) (x_125166 list_386) (z_2698 Int) (x_125110 list_385) (x_125109 Int))
	(=> (and (dodeca_28 x_125166 x_125109 x_125110) (add_468 x_125307 x_125109 x_125109) (add_468 x_125308 x_125307 x_125109) (add_468 x_125309 x_125308 z_2698) (add_468 x_125310 x_125109 x_125109) (add_468 x_125311 x_125310 x_125109) (add_468 x_125312 (S_623 Z_2711) z_2698) (add_468 x_125313 x_125311 x_125312)) (dodeca_28 (cons_380 (pair_199 x_125309 x_125313) x_125166) x_125109 (cons_379 z_2698 x_125110)))))
(assert (forall ((x_125109 Int))
	(dodeca_28 nil_443 x_125109 nil_442)))
(declare-fun dodeca_29 (list_386 Int list_385) Bool)
(assert (forall ((x_125314 Int) (x_125315 Int) (x_125316 Int) (x_125317 Int) (x_125318 Int) (x_125169 list_386) (z_2699 Int) (x_125112 list_385) (x_125111 Int))
	(=> (and (dodeca_29 x_125169 x_125111 x_125112) (add_468 x_125314 x_125111 x_125111) (add_468 x_125315 x_125314 z_2699) (add_468 x_125316 x_125111 x_125111) (add_468 x_125317 x_125316 x_125111) (add_468 x_125318 x_125317 z_2699)) (dodeca_29 (cons_380 (pair_199 x_125315 x_125318) x_125169) x_125111 (cons_379 z_2699 x_125112)))))
(assert (forall ((x_125111 Int))
	(dodeca_29 nil_443 x_125111 nil_442)))
(declare-fun dodeca_30 (list_386 Int list_385) Bool)
(assert (forall ((x_125319 Int) (x_125320 Int) (x_125321 Int) (x_125322 Int) (x_125172 list_386) (z_2700 Int) (x_125114 list_385) (x_125113 Int))
	(=> (and (dodeca_30 x_125172 x_125113 x_125114) (add_468 x_125319 (S_623 Z_2711) z_2700) (add_468 x_125320 x_125113 x_125319) (add_468 x_125321 x_125113 x_125113) (add_468 x_125322 x_125321 z_2700)) (dodeca_30 (cons_380 (pair_199 x_125320 x_125322) x_125172) x_125113 (cons_379 z_2700 x_125114)))))
(assert (forall ((x_125113 Int))
	(dodeca_30 nil_443 x_125113 nil_442)))
(declare-fun dodeca_31 (list_386 Int list_385) Bool)
(assert (forall ((x_125323 Int) (x_125324 Int) (x_125325 Int) (x_125175 list_386) (z_2701 Int) (x_125116 list_385) (x_125115 Int))
	(=> (and (dodeca_31 x_125175 x_125115 x_125116) (add_468 x_125323 x_125115 z_2701) (add_468 x_125324 x_125115 x_125115) (add_468 x_125325 x_125324 z_2701)) (dodeca_31 (cons_380 (pair_199 x_125323 x_125325) x_125175) x_125115 (cons_379 z_2701 x_125116)))))
(assert (forall ((x_125115 Int))
	(dodeca_31 nil_443 x_125115 nil_442)))
(declare-fun dodeca_32 (list_386 Int list_385) Bool)
(assert (forall ((x_125326 Int) (x_125178 list_386) (z_2702 Int) (x_125118 list_385) (x_125117 Int))
	(=> (and (dodeca_32 x_125178 x_125117 x_125118) (add_468 x_125326 x_125117 z_2702)) (dodeca_32 (cons_380 (pair_199 z_2702 x_125326) x_125178) x_125117 (cons_379 z_2702 x_125118)))))
(assert (forall ((x_125117 Int))
	(dodeca_32 nil_443 x_125117 nil_442)))
(declare-fun dodeca_33 (list_386 list_385) Bool)
(assert (forall ((x_125327 Int) (x_125181 list_386) (y_3160 Int) (z_2703 list_385))
	(=> (and (dodeca_33 x_125181 z_2703) (add_468 x_125327 (S_623 Z_2711) y_3160)) (dodeca_33 (cons_380 (pair_199 y_3160 x_125327) x_125181) (cons_379 y_3160 z_2703)))))
(assert (dodeca_33 nil_443 nil_442))
(declare-fun bin_19 (list_387 Int) Bool)
(assert (bin_19 nil_444 Z_2711))
(assert (forall ((x_125329 Int) (x_125185 list_387) (x_125120 Int))
	(=> (and (diseqInt x_125120 Z_2711) (bin_19 x_125185 x_125329) (div_434 x_125329 x_125120 (S_623 (S_623 Z_2711))) (mod_436 Z_2711 x_125120 (S_623 (S_623 Z_2711)))) (bin_19 (cons_381 O_12 x_125185) x_125120))))
(assert (bin_19 nil_444 Z_2711))
(assert (forall ((x_125331 Int) (x_125330 Int) (x_125188 list_387) (x_125120 Int))
	(=> (and (diseqInt x_125120 Z_2711) (diseqInt x_125330 Z_2711) (bin_19 x_125188 x_125331) (div_434 x_125331 x_125120 (S_623 (S_623 Z_2711))) (mod_436 x_125330 x_125120 (S_623 (S_623 Z_2711)))) (bin_19 (cons_381 I_17 x_125188) x_125120))))
(declare-fun bgraph_3 (list_389 list_386) Bool)
(assert (forall ((x_125190 list_387) (x_125191 list_387) (x_125192 list_389) (u_27 Int) (v_27 Int) (z_2704 list_386))
	(=> (and (bin_19 x_125190 u_27) (bin_19 x_125191 v_27) (bgraph_3 x_125192 z_2704)) (bgraph_3 (cons_383 (pair_201 x_125190 x_125191) x_125192) (cons_380 (pair_199 u_27 v_27) z_2704)))))
(assert (bgraph_3 nil_446 nil_443))
(declare-fun beq_3 (Bool_434 list_387 list_387) Bool)
(assert (forall ((x_125194 Bool_434) (zs_74 list_387) (xs_878 list_387))
	(=> (beq_3 x_125194 xs_878 zs_74) (beq_3 x_125194 (cons_381 O_12 xs_878) (cons_381 O_12 zs_74)))))
(assert (forall ((zs_74 list_387) (xs_878 list_387))
	(beq_3 false_434 (cons_381 O_12 xs_878) (cons_381 I_17 zs_74))))
(assert (forall ((xs_878 list_387))
	(beq_3 false_434 (cons_381 O_12 xs_878) nil_444)))
(assert (forall ((ys_241 list_387) (xs_878 list_387))
	(beq_3 false_434 (cons_381 I_17 xs_878) (cons_381 O_12 ys_241))))
(assert (forall ((x_125199 Bool_434) (ys_241 list_387) (xs_878 list_387))
	(=> (beq_3 x_125199 xs_878 ys_241) (beq_3 x_125199 (cons_381 I_17 xs_878) (cons_381 I_17 ys_241)))))
(assert (forall ((xs_878 list_387))
	(beq_3 false_434 (cons_381 I_17 xs_878) nil_444)))
(assert (forall ((z_2705 B_131) (x_125126 list_387))
	(beq_3 false_434 nil_444 (cons_381 z_2705 x_125126))))
(assert (beq_3 true_434 nil_444 nil_444))
(declare-fun bpath_6 (list_384 list_387 list_387 list_389) Bool)
(assert (forall ((x_125294 Bool_434) (x_125295 Bool_434) (x_125296 Bool_434) (x_125205 Bool_434) (x_125206 Bool_434) (x_125207 Bool_434) (x_125208 Bool_434) (x_125209 list_384) (u_28 list_387) (v_28 list_387) (x_125129 list_389) (x_125127 list_387) (y_3163 list_387))
	(=> (and (beq_3 x_125205 u_28 x_125127) (beq_3 x_125206 v_28 y_3163) (beq_3 x_125207 u_28 y_3163) (beq_3 x_125208 v_28 x_125127) (bpath_6 x_125209 x_125127 y_3163 x_125129) (and_440 x_125294 x_125205 x_125206) (and_440 x_125295 x_125207 x_125208) (or_453 x_125296 x_125294 x_125295)) (bpath_6 (cons_378 x_125296 x_125209) x_125127 y_3163 (cons_383 (pair_201 u_28 v_28) x_125129)))))
(assert (forall ((x_125127 list_387) (y_3163 list_387))
	(bpath_6 nil_441 x_125127 y_3163 nil_446)))
(declare-fun bpath_7 (Bool_434 list_388 list_389) Bool)
(assert (forall ((x_125211 Bool_434) (x_125212 list_384) (x_125213 Bool_434) (x_125214 Bool_434) (y_3165 list_387) (xs_879 list_388) (z_2707 list_387) (y_3164 list_389))
	(=> (and (bpath_6 x_125212 z_2707 y_3165 y_3164) (or_452 x_125213 x_125212) (bpath_7 x_125214 (cons_382 y_3165 xs_879) y_3164) (and_440 x_125211 x_125213 x_125214)) (bpath_7 x_125211 (cons_382 z_2707 (cons_382 y_3165 xs_879)) y_3164))))
(assert (forall ((z_2707 list_387) (y_3164 list_389))
	(bpath_7 true_434 (cons_382 z_2707 nil_445) y_3164)))
(assert (forall ((y_3164 list_389))
	(bpath_7 true_434 nil_445 y_3164)))
(declare-fun belem_6 (list_384 list_387 list_388) Bool)
(assert (forall ((x_125218 Bool_434) (x_125219 list_384) (z_2708 list_387) (x_125133 list_388) (x_125132 list_387))
	(=> (and (beq_3 x_125218 x_125132 z_2708) (belem_6 x_125219 x_125132 x_125133)) (belem_6 (cons_378 x_125218 x_125219) x_125132 (cons_382 z_2708 x_125133)))))
(assert (forall ((x_125132 list_387))
	(belem_6 nil_441 x_125132 nil_445)))
(declare-fun belem_7 (Bool_434 list_387 list_388) Bool)
(assert (forall ((x_125221 Bool_434) (x_125222 list_384) (x_125134 list_387) (y_3167 list_388))
	(=> (and (belem_6 x_125222 x_125134 y_3167) (or_452 x_125221 x_125222)) (belem_7 x_125221 x_125134 y_3167))))
(declare-fun bunique_3 (Bool_434 list_388) Bool)
(assert (forall ((x_125298 Bool_434) (x_125224 Bool_434) (x_125225 Bool_434) (x_125226 Bool_434) (y_3168 list_387) (xs_880 list_388))
	(=> (and (belem_7 x_125225 y_3168 xs_880) (bunique_3 x_125226 xs_880) (not_439 x_125298 x_125225) (and_440 x_125224 x_125298 x_125226)) (bunique_3 x_125224 (cons_382 y_3168 xs_880)))))
(assert (bunique_3 true_434 nil_445))
(declare-fun btour_3 (Bool_434 list_388 list_386) Bool)
(assert (forall ((x_125332 Int) (x_125300 Bool_434) (x_125230 Bool_434) (x_125231 list_387) (x_125232 Bool_434) (x_125233 list_389) (x_125234 Bool_434) (x_125235 Bool_434) (x_125228 Int) (x_125229 Int) (u_29 Int) (v_29 Int) (vs_11 list_386) (x_125137 list_387) (x_125138 list_388))
	(=> (and (le_434 u_29 v_29) (last_16 x_125231 x_125137 x_125138) (beq_3 x_125232 x_125137 x_125231) (bgraph_3 x_125233 (cons_380 (pair_199 u_29 v_29) vs_11)) (bpath_7 x_125234 (cons_382 x_125137 x_125138) x_125233) (bunique_3 x_125235 x_125138) (length_69 x_125228 (cons_382 x_125137 x_125138)) (maximummaximum_5 x_125229 v_29 vs_11) (and_440 x_125300 x_125232 x_125234) (and_440 x_125230 x_125300 x_125235) (add_468 x_125332 (S_623 Z_2711) x_125229) (add_468 x_125228 (S_623 Z_2711) x_125332)) (btour_3 x_125230 (cons_382 x_125137 x_125138) (cons_380 (pair_199 u_29 v_29) vs_11)))))
(assert (forall ((x_125334 Int) (x_125335 Int) (x_125236 Int) (x_125237 Int) (u_29 Int) (v_29 Int) (vs_11 list_386) (x_125137 list_387) (x_125138 list_388))
	(=> (and (diseqInt x_125236 x_125335) (le_434 u_29 v_29) (length_69 x_125236 (cons_382 x_125137 x_125138)) (maximummaximum_5 x_125237 v_29 vs_11) (add_468 x_125334 (S_623 Z_2711) x_125237) (add_468 x_125335 (S_623 Z_2711) x_125334)) (btour_3 false_434 (cons_382 x_125137 x_125138) (cons_380 (pair_199 u_29 v_29) vs_11)))))
(assert (forall ((x_125336 Int) (x_125302 Bool_434) (x_125241 Bool_434) (x_125242 list_387) (x_125243 Bool_434) (x_125244 list_389) (x_125245 Bool_434) (x_125246 Bool_434) (x_125239 Int) (x_125240 Int) (u_29 Int) (v_29 Int) (vs_11 list_386) (x_125137 list_387) (x_125138 list_388))
	(=> (and (gt_437 u_29 v_29) (last_16 x_125242 x_125137 x_125138) (beq_3 x_125243 x_125137 x_125242) (bgraph_3 x_125244 (cons_380 (pair_199 u_29 v_29) vs_11)) (bpath_7 x_125245 (cons_382 x_125137 x_125138) x_125244) (bunique_3 x_125246 x_125138) (length_69 x_125239 (cons_382 x_125137 x_125138)) (maximummaximum_5 x_125240 u_29 vs_11) (and_440 x_125302 x_125243 x_125245) (and_440 x_125241 x_125302 x_125246) (add_468 x_125336 (S_623 Z_2711) x_125240) (add_468 x_125239 (S_623 Z_2711) x_125336)) (btour_3 x_125241 (cons_382 x_125137 x_125138) (cons_380 (pair_199 u_29 v_29) vs_11)))))
(assert (forall ((x_125338 Int) (x_125339 Int) (x_125247 Int) (x_125248 Int) (u_29 Int) (v_29 Int) (vs_11 list_386) (x_125137 list_387) (x_125138 list_388))
	(=> (and (diseqInt x_125247 x_125339) (gt_437 u_29 v_29) (length_69 x_125247 (cons_382 x_125137 x_125138)) (maximummaximum_5 x_125248 u_29 vs_11) (add_468 x_125338 (S_623 Z_2711) x_125248) (add_468 x_125339 (S_623 Z_2711) x_125338)) (btour_3 false_434 (cons_382 x_125137 x_125138) (cons_380 (pair_199 u_29 v_29) vs_11)))))
(assert (forall ((x_125137 list_387) (x_125138 list_388))
	(btour_3 false_434 (cons_382 x_125137 x_125138) nil_443)))
(assert (forall ((z_2709 pair_198) (x_125140 list_386))
	(btour_3 false_434 nil_445 (cons_380 z_2709 x_125140))))
(assert (btour_3 true_434 nil_445 nil_443))
(declare-fun x_125141 (list_386 list_386 list_386) Bool)
(assert (forall ((x_125254 list_386) (z_2710 pair_198) (xs_881 list_386) (y_3170 list_386))
	(=> (x_125141 x_125254 xs_881 y_3170) (x_125141 (cons_380 z_2710 x_125254) (cons_380 z_2710 xs_881) y_3170))))
(assert (forall ((x_125255 list_386))
	(x_125141 x_125255 nil_443 x_125255)))
(declare-fun dodeca_34 (list_386 Int) Bool)
(assert (dodeca_34 nil_443 Z_2711))
(assert (forall ((x_125352 Int) (x_125349 Int) (x_125350 Int) (x_125351 Int) (x_125343 Int) (x_125344 Int) (x_125345 Int) (x_125346 Int) (x_125347 Int) (x_125348 Int) (x_125342 Int) (x_125341 Int) (x_125340 Int) (x_125257 list_386) (x_125258 list_385) (x_125259 list_386) (x_125260 list_385) (x_125261 list_386) (x_125262 list_385) (x_125263 list_386) (x_125264 list_385) (x_125265 list_386) (x_125266 list_385) (x_125267 list_386) (x_125268 list_385) (x_125269 list_386) (x_125270 list_386) (x_125271 list_386) (x_125272 list_386) (x_125273 list_386) (x_125143 Int))
	(=> (and (diseqInt x_125143 Z_2711) (primEnumFromTo_11 x_125258 Z_2711 x_125340) (dodeca_33 x_125259 x_125258) (primEnumFromTo_11 x_125260 Z_2711 x_125143) (dodeca_32 x_125261 x_125143 x_125260) (primEnumFromTo_11 x_125262 Z_2711 x_125143) (dodeca_31 x_125263 x_125143 x_125262) (primEnumFromTo_11 x_125264 Z_2711 x_125341) (dodeca_30 x_125265 x_125143 x_125264) (primEnumFromTo_11 x_125266 Z_2711 x_125143) (dodeca_29 x_125267 x_125143 x_125266) (primEnumFromTo_11 x_125268 Z_2711 x_125342) (dodeca_28 x_125269 x_125143 x_125268) (x_125141 x_125270 x_125267 (cons_380 (pair_199 x_125346 x_125348) x_125269)) (x_125141 x_125271 (cons_380 (pair_199 x_125143 x_125351) x_125265) x_125270) (x_125141 x_125272 x_125263 x_125271) (x_125141 x_125273 x_125261 x_125272) (x_125141 x_125257 (cons_380 (pair_199 x_125352 Z_2711) x_125259) x_125273) (minus_455 x_125352 x_125143 (S_623 Z_2711)) (add_468 x_125349 x_125143 x_125143) (minus_455 x_125350 x_125143 (S_623 Z_2711)) (add_468 x_125351 x_125349 x_125350) (add_468 x_125343 x_125143 x_125143) (add_468 x_125344 x_125343 x_125143) (minus_455 x_125345 x_125143 (S_623 Z_2711)) (add_468 x_125346 x_125344 x_125345) (add_468 x_125347 x_125143 x_125143) (add_468 x_125348 x_125347 x_125143) (minus_455 x_125342 x_125143 (S_623 Z_2711)) (minus_455 x_125341 x_125143 (S_623 Z_2711)) (minus_455 x_125340 x_125143 (S_623 Z_2711))) (dodeca_34 x_125257 x_125143))))
(assert (forall ((x_125365 Int) (x_125362 Int) (x_125363 Int) (x_125364 Int) (x_125356 Int) (x_125357 Int) (x_125358 Int) (x_125359 Int) (x_125360 Int) (x_125361 Int) (x_125355 Int) (x_125354 Int) (x_125353 Int) (x_125275 list_385) (x_125276 list_386) (x_125277 list_385) (x_125278 list_386) (x_125279 list_385) (x_125280 list_386) (x_125281 list_385) (x_125282 list_386) (x_125283 list_385) (x_125284 list_386) (x_125285 list_385) (x_125286 list_386) (x_125287 list_386) (x_125288 list_386) (x_125289 list_386) (x_125290 list_386) (x_125291 list_386) (p_592 list_388))
	(=> (and true (primEnumFromTo_11 x_125275 Z_2711 x_125353) (dodeca_33 x_125276 x_125275) (primEnumFromTo_11 x_125277 Z_2711 (S_623 (S_623 (S_623 Z_2711)))) (dodeca_32 x_125278 (S_623 (S_623 (S_623 Z_2711))) x_125277) (primEnumFromTo_11 x_125279 Z_2711 (S_623 (S_623 (S_623 Z_2711)))) (dodeca_31 x_125280 (S_623 (S_623 (S_623 Z_2711))) x_125279) (primEnumFromTo_11 x_125281 Z_2711 x_125354) (dodeca_30 x_125282 (S_623 (S_623 (S_623 Z_2711))) x_125281) (primEnumFromTo_11 x_125283 Z_2711 (S_623 (S_623 (S_623 Z_2711)))) (dodeca_29 x_125284 (S_623 (S_623 (S_623 Z_2711))) x_125283) (primEnumFromTo_11 x_125285 Z_2711 x_125355) (dodeca_28 x_125286 (S_623 (S_623 (S_623 Z_2711))) x_125285) (x_125141 x_125287 x_125284 (cons_380 (pair_199 x_125359 x_125361) x_125286)) (x_125141 x_125288 (cons_380 (pair_199 (S_623 (S_623 (S_623 Z_2711))) x_125364) x_125282) x_125287) (x_125141 x_125289 x_125280 x_125288) (x_125141 x_125290 x_125278 x_125289) (x_125141 x_125291 (cons_380 (pair_199 x_125365 Z_2711) x_125276) x_125290) (btour_3 true_434 p_592 x_125291) (minus_455 x_125365 (S_623 (S_623 (S_623 Z_2711))) (S_623 Z_2711)) (add_468 x_125362 (S_623 (S_623 (S_623 Z_2711))) (S_623 (S_623 (S_623 Z_2711)))) (minus_455 x_125363 (S_623 (S_623 (S_623 Z_2711))) (S_623 Z_2711)) (add_468 x_125364 x_125362 x_125363) (add_468 x_125356 (S_623 (S_623 (S_623 Z_2711))) (S_623 (S_623 (S_623 Z_2711)))) (add_468 x_125357 x_125356 (S_623 (S_623 (S_623 Z_2711)))) (minus_455 x_125358 (S_623 (S_623 (S_623 Z_2711))) (S_623 Z_2711)) (add_468 x_125359 x_125357 x_125358) (add_468 x_125360 (S_623 (S_623 (S_623 Z_2711))) (S_623 (S_623 (S_623 Z_2711)))) (add_468 x_125361 x_125360 (S_623 (S_623 (S_623 Z_2711)))) (minus_455 x_125355 (S_623 (S_623 (S_623 Z_2711))) (S_623 Z_2711)) (minus_455 x_125354 (S_623 (S_623 (S_623 Z_2711))) (S_623 Z_2711)) (minus_455 x_125353 (S_623 (S_623 (S_623 Z_2711))) (S_623 Z_2711))) false)))
(check-sat)
