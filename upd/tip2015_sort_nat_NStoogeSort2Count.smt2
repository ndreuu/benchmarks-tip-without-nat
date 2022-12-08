
(set-logic HORN)
(declare-fun zero_108 () Int)
(declare-fun succ_105 (Int) Int)
(declare-datatypes ((Bool_261 0)) (((false_261) (true_261))))
(declare-fun diseqBool_120 (Bool_261 Bool_261) Bool)
(declare-fun isfalse_120 (Bool_261) Bool)
(declare-fun istrue_120 (Bool_261) Bool)
(assert (isfalse_120 false_261))
(assert (istrue_120 true_261))
(assert (diseqBool_120 false_261 true_261))
(assert (diseqBool_120 true_261 false_261))
(declare-fun and_261 (Bool_261 Bool_261 Bool_261) Bool)
(declare-fun or_266 (Bool_261 Bool_261 Bool_261) Bool)
(declare-fun hence_261 (Bool_261 Bool_261 Bool_261) Bool)
(declare-fun not_264 (Bool_261 Bool_261) Bool)
(assert (and_261 false_261 false_261 false_261))
(assert (and_261 false_261 true_261 false_261))
(assert (and_261 false_261 false_261 true_261))
(assert (and_261 true_261 true_261 true_261))
(assert (or_266 false_261 false_261 false_261))
(assert (or_266 true_261 true_261 false_261))
(assert (or_266 true_261 false_261 true_261))
(assert (or_266 true_261 true_261 true_261))
(assert (hence_261 true_261 false_261 false_261))
(assert (hence_261 false_261 true_261 false_261))
(assert (hence_261 true_261 false_261 true_261))
(assert (hence_261 true_261 true_261 true_261))
(assert (not_264 true_261 false_261))
(assert (not_264 false_261 true_261))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_306 (Int Int) Bool)
(declare-fun iszero_105 (Int) Bool)
(declare-fun issucc_105 (Int) Bool)
(assert (forall ((x_49378 Int))
	(p_306 x_49378 (succ_105 x_49378))))
(assert (iszero_105 zero_108))
(assert (forall ((x_49380 Int))
	(issucc_105 (succ_105 x_49380))))
(assert (forall ((x_49381 Int))
	(diseqInt zero_108 (succ_105 x_49381))))
(assert (forall ((x_49382 Int))
	(diseqInt (succ_105 x_49382) zero_108)))
(assert (forall ((x_49383 Int) (x_49384 Int))
	(=> (diseqInt x_49383 x_49384) (diseqInt (succ_105 x_49383) (succ_105 x_49384)))))
(declare-datatypes ((list_186 0)) (((nil_212) (cons_186 (head_372 Int) (tail_372 list_186)))))
(declare-fun diseqlist_186 (list_186 list_186) Bool)
(declare-fun head_373 (Int list_186) Bool)
(declare-fun tail_373 (list_186 list_186) Bool)
(declare-fun isnil_212 (list_186) Bool)
(declare-fun iscons_186 (list_186) Bool)
(assert (forall ((x_49386 Int) (x_49387 list_186))
	(head_373 x_49386 (cons_186 x_49386 x_49387))))
(assert (forall ((x_49386 Int) (x_49387 list_186))
	(tail_373 x_49387 (cons_186 x_49386 x_49387))))
(assert (isnil_212 nil_212))
(assert (forall ((x_49389 Int) (x_49390 list_186))
	(iscons_186 (cons_186 x_49389 x_49390))))
(assert (forall ((x_49391 Int) (x_49392 list_186))
	(diseqlist_186 nil_212 (cons_186 x_49391 x_49392))))
(assert (forall ((x_49393 Int) (x_49394 list_186))
	(diseqlist_186 (cons_186 x_49393 x_49394) nil_212)))
(assert (forall ((x_49395 Int) (x_49396 list_186) (x_49397 Int) (x_49398 list_186))
	(=> (diseqInt x_49395 x_49397) (diseqlist_186 (cons_186 x_49395 x_49396) (cons_186 x_49397 x_49398)))))
(assert (forall ((x_49395 Int) (x_49396 list_186) (x_49397 Int) (x_49398 list_186))
	(=> (diseqlist_186 x_49396 x_49398) (diseqlist_186 (cons_186 x_49395 x_49396) (cons_186 x_49397 x_49398)))))
(declare-datatypes ((pair_78 0)) (((pair_79 (projpair_156 list_186) (projpair_157 list_186)))))
(declare-fun diseqpair_39 (pair_78 pair_78) Bool)
(declare-fun projpair_158 (list_186 pair_78) Bool)
(declare-fun projpair_159 (list_186 pair_78) Bool)
(declare-fun ispair_39 (pair_78) Bool)
(assert (forall ((x_49399 list_186) (x_49400 list_186))
	(projpair_158 x_49399 (pair_79 x_49399 x_49400))))
(assert (forall ((x_49399 list_186) (x_49400 list_186))
	(projpair_159 x_49400 (pair_79 x_49399 x_49400))))
(assert (forall ((x_49402 list_186) (x_49403 list_186))
	(ispair_39 (pair_79 x_49402 x_49403))))
(assert (forall ((x_49404 list_186) (x_49405 list_186) (x_49406 list_186) (x_49407 list_186))
	(=> (diseqlist_186 x_49404 x_49406) (diseqpair_39 (pair_79 x_49404 x_49405) (pair_79 x_49406 x_49407)))))
(assert (forall ((x_49404 list_186) (x_49405 list_186) (x_49406 list_186) (x_49407 list_186))
	(=> (diseqlist_186 x_49405 x_49407) (diseqpair_39 (pair_79 x_49404 x_49405) (pair_79 x_49406 x_49407)))))
(declare-fun take_42 (list_186 Int list_186) Bool)
(assert (forall ((x_49283 list_186) (z_1540 Int) (xs_511 list_186) (z_1539 Int))
	(=> (take_42 x_49283 z_1539 xs_511) (take_42 (cons_186 z_1540 x_49283) (succ_105 z_1539) (cons_186 z_1540 xs_511)))))
(assert (forall ((z_1539 Int))
	(take_42 nil_212 (succ_105 z_1539) nil_212)))
(assert (forall ((y_1716 list_186))
	(take_42 nil_212 zero_108 y_1716)))
(declare-fun plus_108 (Int Int Int) Bool)
(assert (forall ((x_49287 Int) (z_1541 Int) (y_1717 Int))
	(=> (plus_108 x_49287 z_1541 y_1717) (plus_108 (succ_105 x_49287) (succ_105 z_1541) y_1717))))
(assert (forall ((x_49288 Int))
	(plus_108 x_49288 zero_108 x_49288)))
(declare-fun minus_276 (Int Int Int) Bool)
(assert (forall ((x_49289 Int) (y_1719 Int) (z_1542 Int))
	(=> (minus_276 x_49289 z_1542 y_1719) (minus_276 x_49289 (succ_105 z_1542) (succ_105 y_1719)))))
(assert (forall ((z_1542 Int))
	(minus_276 zero_108 (succ_105 z_1542) zero_108)))
(assert (forall ((y_1718 Int))
	(minus_276 zero_108 zero_108 y_1718)))
(declare-fun third_9 (Int Int) Bool)
(assert (third_9 zero_108 (succ_105 (succ_105 zero_108))))
(assert (=> (diseqInt (succ_105 zero_108) (succ_105 (succ_105 zero_108))) (third_9 zero_108 (succ_105 zero_108))))
(assert (third_9 zero_108 (succ_105 (succ_105 zero_108))))
(assert (forall ((x_49296 Int) (x_49297 Int) (x_49298 Int) (y_1720 Int))
	(=> (and (diseqInt (succ_105 y_1720) (succ_105 (succ_105 zero_108))) (diseqInt (succ_105 y_1720) (succ_105 zero_108)) (minus_276 x_49297 (succ_105 y_1720) (succ_105 (succ_105 (succ_105 zero_108)))) (third_9 x_49298 x_49297) (plus_108 x_49296 (succ_105 zero_108) x_49298)) (third_9 x_49296 (succ_105 y_1720)))))
(assert (third_9 zero_108 (succ_105 (succ_105 zero_108))))
(assert (=> (diseqInt (succ_105 zero_108) (succ_105 (succ_105 zero_108))) (third_9 zero_108 (succ_105 zero_108))))
(assert (third_9 zero_108 (succ_105 (succ_105 zero_108))))
(assert (=> (and (diseqInt zero_108 (succ_105 (succ_105 zero_108))) (diseqInt zero_108 (succ_105 zero_108))) (third_9 zero_108 zero_108)))
(declare-fun twoThirds_4 (Int Int) Bool)
(assert (twoThirds_4 (succ_105 zero_108) (succ_105 (succ_105 zero_108))))
(assert (=> (diseqInt (succ_105 zero_108) (succ_105 (succ_105 zero_108))) (twoThirds_4 (succ_105 zero_108) (succ_105 zero_108))))
(assert (twoThirds_4 (succ_105 zero_108) (succ_105 (succ_105 zero_108))))
(assert (forall ((x_49307 Int) (x_49308 Int) (x_49309 Int) (y_1721 Int))
	(=> (and (diseqInt (succ_105 y_1721) (succ_105 (succ_105 zero_108))) (diseqInt (succ_105 y_1721) (succ_105 zero_108)) (minus_276 x_49308 (succ_105 y_1721) (succ_105 (succ_105 (succ_105 zero_108)))) (twoThirds_4 x_49309 x_49308) (plus_108 x_49307 (succ_105 (succ_105 zero_108)) x_49309)) (twoThirds_4 x_49307 (succ_105 y_1721)))))
(assert (twoThirds_4 (succ_105 zero_108) (succ_105 (succ_105 zero_108))))
(assert (=> (diseqInt (succ_105 zero_108) (succ_105 (succ_105 zero_108))) (twoThirds_4 (succ_105 zero_108) (succ_105 zero_108))))
(assert (twoThirds_4 (succ_105 zero_108) (succ_105 (succ_105 zero_108))))
(assert (=> (and (diseqInt zero_108 (succ_105 (succ_105 zero_108))) (diseqInt zero_108 (succ_105 zero_108))) (twoThirds_4 zero_108 zero_108)))
(declare-fun leq_38 (Bool_261 Int Int) Bool)
(assert (forall ((x_49315 Bool_261) (x_49263 Int) (z_1543 Int))
	(=> (leq_38 x_49315 z_1543 x_49263) (leq_38 x_49315 (succ_105 z_1543) (succ_105 x_49263)))))
(assert (forall ((z_1543 Int))
	(leq_38 false_261 (succ_105 z_1543) zero_108)))
(assert (forall ((y_1722 Int))
	(leq_38 true_261 zero_108 y_1722)))
(declare-fun sort_29 (list_186 Int Int) Bool)
(assert (forall ((x_49264 Int) (y_1723 Int))
	(=> (leq_38 true_261 x_49264 y_1723) (sort_29 (cons_186 x_49264 (cons_186 y_1723 nil_212)) x_49264 y_1723))))
(assert (forall ((x_49264 Int) (y_1723 Int))
	(=> (leq_38 false_261 x_49264 y_1723) (sort_29 (cons_186 y_1723 (cons_186 x_49264 nil_212)) x_49264 y_1723))))
(declare-fun length_32 (Int list_186) Bool)
(assert (forall ((x_49323 Int) (x_49324 Int) (y_1724 Int) (l_34 list_186))
	(=> (and (length_32 x_49324 l_34) (plus_108 x_49323 (succ_105 zero_108) x_49324)) (length_32 x_49323 (cons_186 y_1724 l_34)))))
(assert (length_32 zero_108 nil_212))
(declare-fun drop_44 (list_186 Int list_186) Bool)
(assert (forall ((x_49327 list_186) (z_1545 Int) (xs_512 list_186) (z_1544 Int))
	(=> (drop_44 x_49327 z_1544 xs_512) (drop_44 x_49327 (succ_105 z_1544) (cons_186 z_1545 xs_512)))))
(assert (forall ((z_1544 Int))
	(drop_44 nil_212 (succ_105 z_1544) nil_212)))
(assert (forall ((x_49330 list_186))
	(drop_44 x_49330 zero_108 x_49330)))
(declare-fun splitAt_20 (pair_78 Int list_186) Bool)
(assert (forall ((x_49332 list_186) (x_49333 list_186) (x_49267 Int) (y_1726 list_186))
	(=> (and (take_42 x_49332 x_49267 y_1726) (drop_44 x_49333 x_49267 y_1726)) (splitAt_20 (pair_79 x_49332 x_49333) x_49267 y_1726))))
(declare-fun count_27 (Int Int list_186) Bool)
(assert (forall ((x_49334 Int) (x_49335 Int) (ys_161 list_186) (x_49268 Int))
	(=> (and (count_27 x_49335 x_49268 ys_161) (plus_108 x_49334 (succ_105 zero_108) x_49335)) (count_27 x_49334 x_49268 (cons_186 x_49268 ys_161)))))
(assert (forall ((x_49337 Int) (z_1546 Int) (ys_161 list_186) (x_49268 Int))
	(=> (and (diseqInt x_49268 z_1546) (count_27 x_49337 x_49268 ys_161)) (count_27 x_49337 x_49268 (cons_186 z_1546 ys_161)))))
(assert (forall ((x_49268 Int))
	(count_27 zero_108 x_49268 nil_212)))
(declare-fun x_49269 (list_186 list_186 list_186) Bool)
(assert (forall ((x_49341 list_186) (z_1547 Int) (xs_513 list_186) (y_1728 list_186))
	(=> (x_49269 x_49341 xs_513 y_1728) (x_49269 (cons_186 z_1547 x_49341) (cons_186 z_1547 xs_513) y_1728))))
(assert (forall ((x_49342 list_186))
	(x_49269 x_49342 nil_212 x_49342)))
(declare-fun nstoogesort_27 (list_186 list_186) Bool)
(declare-fun nstoogesort_28 (list_186 list_186) Bool)
(declare-fun nstoogesort_29 (list_186 list_186) Bool)
(assert (forall ((x_49346 list_186) (x_49347 list_186) (x_49343 Int) (x_49344 Int) (ys_162 list_186) (zs_57 list_186) (x_49271 list_186))
	(=> (and (nstoogesort_28 x_49347 ys_162) (x_49269 x_49346 x_49347 zs_57) (length_32 x_49343 x_49271) (twoThirds_4 x_49344 x_49343) (splitAt_20 (pair_79 ys_162 zs_57) x_49344 x_49271)) (nstoogesort_27 x_49346 x_49271))))
(assert (forall ((x_49349 list_186) (x_49350 list_186) (x_49351 list_186) (x_49274 Int) (x_49275 list_186) (y_1730 Int) (y_1729 Int))
	(=> (and (nstoogesort_27 x_49350 (cons_186 y_1729 (cons_186 y_1730 (cons_186 x_49274 x_49275)))) (nstoogesort_29 x_49351 x_49350) (nstoogesort_27 x_49349 x_49351)) (nstoogesort_28 x_49349 (cons_186 y_1729 (cons_186 y_1730 (cons_186 x_49274 x_49275)))))))
(assert (forall ((x_49353 list_186) (y_1730 Int) (y_1729 Int))
	(=> (sort_29 x_49353 y_1729 y_1730) (nstoogesort_28 x_49353 (cons_186 y_1729 (cons_186 y_1730 nil_212))))))
(assert (forall ((y_1729 Int))
	(nstoogesort_28 (cons_186 y_1729 nil_212) (cons_186 y_1729 nil_212))))
(assert (nstoogesort_28 nil_212 nil_212))
(assert (forall ((x_49360 list_186) (x_49361 list_186) (x_49357 Int) (x_49358 Int) (ys_163 list_186) (zs_58 list_186) (x_49276 list_186))
	(=> (and (nstoogesort_28 x_49361 zs_58) (x_49269 x_49360 ys_163 x_49361) (length_32 x_49357 x_49276) (third_9 x_49358 x_49357) (splitAt_20 (pair_79 ys_163 zs_58) x_49358 x_49276)) (nstoogesort_29 x_49360 x_49276))))
(assert (forall ((x_49363 Int) (x_49364 Int) (x_49365 Int) (x_49366 Int) (x_49277 Int) (y_1731 Int) (z_1549 Int))
	(=> (and true (diseqInt x_49364 x_49366) (plus_108 x_49363 y_1731 z_1549) (plus_108 x_49364 x_49277 x_49363) (plus_108 x_49365 x_49277 y_1731) (plus_108 x_49366 x_49365 z_1549)) false)))
(assert (forall ((x_49367 Int) (x_49368 Int) (x_49278 Int) (y_1732 Int))
	(=> (and true (diseqInt x_49367 x_49368) (plus_108 x_49367 x_49278 y_1732) (plus_108 x_49368 y_1732 x_49278)) false)))
(assert (forall ((x_49369 Int) (x_49279 Int))
	(=> (and true (diseqInt x_49369 x_49279) (plus_108 x_49369 x_49279 zero_108)) false)))
(assert (forall ((x_49370 Int) (x_49280 Int))
	(=> (and true (diseqInt x_49370 x_49280) (plus_108 x_49370 zero_108 x_49280)) false)))
(assert (forall ((x_49371 list_186) (x_49372 Int) (x_49373 Int) (x_49281 Int) (xs_514 list_186))
	(=> (and true (diseqInt x_49372 x_49373) (nstoogesort_28 x_49371 xs_514) (count_27 x_49372 x_49281 x_49371) (count_27 x_49373 x_49281 xs_514)) false)))
(check-sat)
