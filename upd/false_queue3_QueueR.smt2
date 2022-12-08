
(set-logic HORN)
(declare-fun Z_2263 () Int)
(declare-fun S_525 (Int) Int)
(declare-fun diseqInt (Int Int) Bool)
(declare-fun unS_753 (Int Int) Bool)
(declare-fun isZ_492 (Int) Bool)
(declare-fun isS_492 (Int) Bool)
(assert (forall ((x_58463 Int))
	(unS_753 x_58463 (S_525 x_58463))))
(assert (isZ_492 Z_2263))
(assert (forall ((x_58465 Int))
	(isS_492 (S_525 x_58465))))
(assert (forall ((x_58466 Int))
	(diseqInt Z_2263 (S_525 x_58466))))
(assert (forall ((x_58467 Int))
	(diseqInt (S_525 x_58467) Z_2263)))
(assert (forall ((x_58468 Int) (x_58469 Int))
	(=> (diseqInt x_58468 x_58469) (diseqInt (S_525 x_58468) (S_525 x_58469)))))
(declare-fun add_402 (Int Int Int) Bool)
(declare-fun minus_397 (Int Int Int) Bool)
(declare-fun le_376 (Int Int) Bool)
(declare-fun ge_376 (Int Int) Bool)
(declare-fun lt_396 (Int Int) Bool)
(declare-fun gt_379 (Int Int) Bool)
(declare-fun mult_377 (Int Int Int) Bool)
(declare-fun div_376 (Int Int Int) Bool)
(declare-fun mod_378 (Int Int Int) Bool)
(assert (forall ((y_2522 Int))
	(add_402 y_2522 Z_2263 y_2522)))
(assert (forall ((x_58457 Int) (y_2522 Int) (r_464 Int))
	(=> (add_402 r_464 x_58457 y_2522) (add_402 (S_525 r_464) (S_525 x_58457) y_2522))))
(assert (forall ((y_2522 Int))
	(minus_397 Z_2263 Z_2263 y_2522)))
(assert (forall ((x_58457 Int) (y_2522 Int) (r_464 Int))
	(=> (minus_397 r_464 x_58457 y_2522) (minus_397 (S_525 r_464) (S_525 x_58457) y_2522))))
(assert (forall ((y_2522 Int))
	(le_376 Z_2263 y_2522)))
(assert (forall ((x_58457 Int) (y_2522 Int))
	(=> (le_376 x_58457 y_2522) (le_376 (S_525 x_58457) (S_525 y_2522)))))
(assert (forall ((y_2522 Int))
	(ge_376 y_2522 Z_2263)))
(assert (forall ((x_58457 Int) (y_2522 Int))
	(=> (ge_376 x_58457 y_2522) (ge_376 (S_525 x_58457) (S_525 y_2522)))))
(assert (forall ((y_2522 Int))
	(lt_396 Z_2263 (S_525 y_2522))))
(assert (forall ((x_58457 Int) (y_2522 Int))
	(=> (lt_396 x_58457 y_2522) (lt_396 (S_525 x_58457) (S_525 y_2522)))))
(assert (forall ((y_2522 Int))
	(gt_379 (S_525 y_2522) Z_2263)))
(assert (forall ((x_58457 Int) (y_2522 Int))
	(=> (gt_379 x_58457 y_2522) (gt_379 (S_525 x_58457) (S_525 y_2522)))))
(assert (forall ((y_2522 Int))
	(mult_377 Z_2263 Z_2263 y_2522)))
(assert (forall ((x_58457 Int) (y_2522 Int) (r_464 Int) (z_2264 Int))
	(=> (and (mult_377 r_464 x_58457 y_2522) (add_402 z_2264 r_464 y_2522)) (mult_377 z_2264 (S_525 x_58457) y_2522))))
(assert (forall ((x_58457 Int) (y_2522 Int))
	(=> (lt_396 x_58457 y_2522) (div_376 Z_2263 x_58457 y_2522))))
(assert (forall ((x_58457 Int) (y_2522 Int) (r_464 Int) (z_2264 Int))
	(=> (and (ge_376 x_58457 y_2522) (minus_397 z_2264 x_58457 y_2522) (div_376 r_464 z_2264 y_2522)) (div_376 (S_525 r_464) x_58457 y_2522))))
(assert (forall ((x_58457 Int) (y_2522 Int))
	(=> (lt_396 x_58457 y_2522) (mod_378 x_58457 x_58457 y_2522))))
(assert (forall ((x_58457 Int) (y_2522 Int) (r_464 Int) (z_2264 Int))
	(=> (and (ge_376 x_58457 y_2522) (minus_397 z_2264 x_58457 y_2522) (mod_378 r_464 z_2264 y_2522)) (mod_378 r_464 x_58457 y_2522))))
(declare-datatypes ((pair_108 0)) (((pair_109 (projpair_216 Int) (projpair_217 Int)))))
(declare-fun diseqpair_54 (pair_108 pair_108) Bool)
(declare-fun projpair_220 (Int pair_108) Bool)
(declare-fun projpair_221 (Int pair_108) Bool)
(declare-fun ispair_54 (pair_108) Bool)
(assert (forall ((x_58470 Int) (x_58471 Int))
	(projpair_220 x_58470 (pair_109 x_58470 x_58471))))
(assert (forall ((x_58470 Int) (x_58471 Int))
	(projpair_221 x_58471 (pair_109 x_58470 x_58471))))
(assert (forall ((x_58473 Int) (x_58474 Int))
	(ispair_54 (pair_109 x_58473 x_58474))))
(assert (forall ((x_58475 Int) (x_58476 Int) (x_58477 Int) (x_58478 Int))
	(=> (diseqInt x_58475 x_58477) (diseqpair_54 (pair_109 x_58475 x_58476) (pair_109 x_58477 x_58478)))))
(assert (forall ((x_58475 Int) (x_58476 Int) (x_58477 Int) (x_58478 Int))
	(=> (diseqInt x_58476 x_58478) (diseqpair_54 (pair_109 x_58475 x_58476) (pair_109 x_58477 x_58478)))))
(declare-datatypes ((list_287 0)) (((nil_319) (cons_286 (head_572 Int) (tail_573 list_287)))))
(declare-fun diseqlist_286 (list_287 list_287) Bool)
(declare-fun head_573 (Int list_287) Bool)
(declare-fun tail_575 (list_287 list_287) Bool)
(declare-fun isnil_319 (list_287) Bool)
(declare-fun iscons_286 (list_287) Bool)
(assert (forall ((x_58480 Int) (x_58481 list_287))
	(head_573 x_58480 (cons_286 x_58480 x_58481))))
(assert (forall ((x_58480 Int) (x_58481 list_287))
	(tail_575 x_58481 (cons_286 x_58480 x_58481))))
(assert (isnil_319 nil_319))
(assert (forall ((x_58483 Int) (x_58484 list_287))
	(iscons_286 (cons_286 x_58483 x_58484))))
(assert (forall ((x_58485 Int) (x_58486 list_287))
	(diseqlist_286 nil_319 (cons_286 x_58485 x_58486))))
(assert (forall ((x_58487 Int) (x_58488 list_287))
	(diseqlist_286 (cons_286 x_58487 x_58488) nil_319)))
(assert (forall ((x_58489 Int) (x_58490 list_287) (x_58491 Int) (x_58492 list_287))
	(=> (diseqInt x_58489 x_58491) (diseqlist_286 (cons_286 x_58489 x_58490) (cons_286 x_58491 x_58492)))))
(assert (forall ((x_58489 Int) (x_58490 list_287) (x_58491 Int) (x_58492 list_287))
	(=> (diseqlist_286 x_58490 x_58492) (diseqlist_286 (cons_286 x_58489 x_58490) (cons_286 x_58491 x_58492)))))
(declare-datatypes ((pair_110 0)) (((pair_111 (projpair_218 list_287) (projpair_219 list_287)))))
(declare-fun diseqpair_55 (pair_110 pair_110) Bool)
(declare-fun projpair_222 (list_287 pair_110) Bool)
(declare-fun projpair_223 (list_287 pair_110) Bool)
(declare-fun ispair_55 (pair_110) Bool)
(assert (forall ((x_58493 list_287) (x_58494 list_287))
	(projpair_222 x_58493 (pair_111 x_58493 x_58494))))
(assert (forall ((x_58493 list_287) (x_58494 list_287))
	(projpair_223 x_58494 (pair_111 x_58493 x_58494))))
(assert (forall ((x_58496 list_287) (x_58497 list_287))
	(ispair_55 (pair_111 x_58496 x_58497))))
(assert (forall ((x_58498 list_287) (x_58499 list_287) (x_58500 list_287) (x_58501 list_287))
	(=> (diseqlist_286 x_58498 x_58500) (diseqpair_55 (pair_111 x_58498 x_58499) (pair_111 x_58500 x_58501)))))
(assert (forall ((x_58498 list_287) (x_58499 list_287) (x_58500 list_287) (x_58501 list_287))
	(=> (diseqlist_286 x_58499 x_58501) (diseqpair_55 (pair_111 x_58498 x_58499) (pair_111 x_58500 x_58501)))))
(declare-datatypes ((Q_153 0)) (((Q_154 (projQ_4 list_287) (projQ_5 list_287)))))
(declare-fun diseqQ_1 (Q_153 Q_153) Bool)
(declare-fun projQ_6 (list_287 Q_153) Bool)
(declare-fun projQ_7 (list_287 Q_153) Bool)
(declare-fun isQ_3 (Q_153) Bool)
(assert (forall ((x_58502 list_287) (x_58503 list_287))
	(projQ_6 x_58502 (Q_154 x_58502 x_58503))))
(assert (forall ((x_58502 list_287) (x_58503 list_287))
	(projQ_7 x_58503 (Q_154 x_58502 x_58503))))
(assert (forall ((x_58505 list_287) (x_58506 list_287))
	(isQ_3 (Q_154 x_58505 x_58506))))
(assert (forall ((x_58507 list_287) (x_58508 list_287) (x_58509 list_287) (x_58510 list_287))
	(=> (diseqlist_286 x_58507 x_58509) (diseqQ_1 (Q_154 x_58507 x_58508) (Q_154 x_58509 x_58510)))))
(assert (forall ((x_58507 list_287) (x_58508 list_287) (x_58509 list_287) (x_58510 list_287))
	(=> (diseqlist_286 x_58508 x_58510) (diseqQ_1 (Q_154 x_58507 x_58508) (Q_154 x_58509 x_58510)))))
(declare-datatypes ((Maybe_3 0)) (((Nothing_3) (Just_3 (projJust_6 Int)))))
(declare-fun diseqMaybe_3 (Maybe_3 Maybe_3) Bool)
(declare-fun projJust_8 (Int Maybe_3) Bool)
(declare-fun isNothing_3 (Maybe_3) Bool)
(declare-fun isJust_3 (Maybe_3) Bool)
(assert (forall ((x_58512 Int))
	(projJust_8 x_58512 (Just_3 x_58512))))
(assert (isNothing_3 Nothing_3))
(assert (forall ((x_58514 Int))
	(isJust_3 (Just_3 x_58514))))
(assert (forall ((x_58515 Int))
	(diseqMaybe_3 Nothing_3 (Just_3 x_58515))))
(assert (forall ((x_58516 Int))
	(diseqMaybe_3 (Just_3 x_58516) Nothing_3)))
(assert (forall ((x_58517 Int) (x_58518 Int))
	(=> (diseqInt x_58517 x_58518) (diseqMaybe_3 (Just_3 x_58517) (Just_3 x_58518)))))
(declare-datatypes ((Maybe_4 0)) (((Nothing_4) (Just_4 (projJust_7 Q_153)))))
(declare-fun diseqMaybe_4 (Maybe_4 Maybe_4) Bool)
(declare-fun projJust_9 (Q_153 Maybe_4) Bool)
(declare-fun isNothing_4 (Maybe_4) Bool)
(declare-fun isJust_4 (Maybe_4) Bool)
(assert (forall ((x_58520 Q_153))
	(projJust_9 x_58520 (Just_4 x_58520))))
(assert (isNothing_4 Nothing_4))
(assert (forall ((x_58522 Q_153))
	(isJust_4 (Just_4 x_58522))))
(assert (forall ((x_58523 Q_153))
	(diseqMaybe_4 Nothing_4 (Just_4 x_58523))))
(assert (forall ((x_58524 Q_153))
	(diseqMaybe_4 (Just_4 x_58524) Nothing_4)))
(assert (forall ((x_58525 Q_153) (x_58526 Q_153))
	(=> (diseqQ_1 x_58525 x_58526) (diseqMaybe_4 (Just_4 x_58525) (Just_4 x_58526)))))
(declare-datatypes ((E_11 0)) (((Empty_2) (EnqL_2 (projEnqL_4 Int) (projEnqL_5 E_11)) (EnqR_2 (projEnqR_4 E_11) (projEnqR_5 Int)) (DeqL_2 (projDeqL_2 E_11)) (DeqR_2 (projDeqR_2 E_11)) (App_1 (projApp_4 E_11) (projApp_5 E_11)))))
(declare-fun diseqE_1 (E_11 E_11) Bool)
(declare-fun projEnqL_6 (Int E_11) Bool)
(declare-fun projEnqL_7 (E_11 E_11) Bool)
(declare-fun projEnqR_6 (E_11 E_11) Bool)
(declare-fun projEnqR_7 (Int E_11) Bool)
(declare-fun projDeqL_3 (E_11 E_11) Bool)
(declare-fun projDeqR_3 (E_11 E_11) Bool)
(declare-fun projApp_6 (E_11 E_11) Bool)
(declare-fun projApp_7 (E_11 E_11) Bool)
(declare-fun isEmpty_1 (E_11) Bool)
(declare-fun isEnqL_1 (E_11) Bool)
(declare-fun isEnqR_1 (E_11) Bool)
(declare-fun isDeqL_1 (E_11) Bool)
(declare-fun isDeqR_1 (E_11) Bool)
(declare-fun isApp_1 (E_11) Bool)
(assert (forall ((x_58528 Int) (x_58529 E_11))
	(projEnqL_6 x_58528 (EnqL_2 x_58528 x_58529))))
(assert (forall ((x_58528 Int) (x_58529 E_11))
	(projEnqL_7 x_58529 (EnqL_2 x_58528 x_58529))))
(assert (forall ((x_58531 E_11) (x_58532 Int))
	(projEnqR_6 x_58531 (EnqR_2 x_58531 x_58532))))
(assert (forall ((x_58531 E_11) (x_58532 Int))
	(projEnqR_7 x_58532 (EnqR_2 x_58531 x_58532))))
(assert (forall ((x_58534 E_11))
	(projDeqL_3 x_58534 (DeqL_2 x_58534))))
(assert (forall ((x_58536 E_11))
	(projDeqR_3 x_58536 (DeqR_2 x_58536))))
(assert (forall ((x_58538 E_11) (x_58539 E_11))
	(projApp_6 x_58538 (App_1 x_58538 x_58539))))
(assert (forall ((x_58538 E_11) (x_58539 E_11))
	(projApp_7 x_58539 (App_1 x_58538 x_58539))))
(assert (isEmpty_1 Empty_2))
(assert (forall ((x_58541 Int) (x_58542 E_11))
	(isEnqL_1 (EnqL_2 x_58541 x_58542))))
(assert (forall ((x_58543 E_11) (x_58544 Int))
	(isEnqR_1 (EnqR_2 x_58543 x_58544))))
(assert (forall ((x_58545 E_11))
	(isDeqL_1 (DeqL_2 x_58545))))
(assert (forall ((x_58546 E_11))
	(isDeqR_1 (DeqR_2 x_58546))))
(assert (forall ((x_58547 E_11) (x_58548 E_11))
	(isApp_1 (App_1 x_58547 x_58548))))
(assert (forall ((x_58549 Int) (x_58550 E_11))
	(diseqE_1 Empty_2 (EnqL_2 x_58549 x_58550))))
(assert (forall ((x_58551 E_11) (x_58552 Int))
	(diseqE_1 Empty_2 (EnqR_2 x_58551 x_58552))))
(assert (forall ((x_58553 E_11))
	(diseqE_1 Empty_2 (DeqL_2 x_58553))))
(assert (forall ((x_58554 E_11))
	(diseqE_1 Empty_2 (DeqR_2 x_58554))))
(assert (forall ((x_58555 E_11) (x_58556 E_11))
	(diseqE_1 Empty_2 (App_1 x_58555 x_58556))))
(assert (forall ((x_58557 Int) (x_58558 E_11))
	(diseqE_1 (EnqL_2 x_58557 x_58558) Empty_2)))
(assert (forall ((x_58559 E_11) (x_58560 Int))
	(diseqE_1 (EnqR_2 x_58559 x_58560) Empty_2)))
(assert (forall ((x_58561 E_11))
	(diseqE_1 (DeqL_2 x_58561) Empty_2)))
(assert (forall ((x_58562 E_11))
	(diseqE_1 (DeqR_2 x_58562) Empty_2)))
(assert (forall ((x_58563 E_11) (x_58564 E_11))
	(diseqE_1 (App_1 x_58563 x_58564) Empty_2)))
(assert (forall ((x_58565 Int) (x_58566 E_11) (x_58567 E_11) (x_58568 Int))
	(diseqE_1 (EnqL_2 x_58565 x_58566) (EnqR_2 x_58567 x_58568))))
(assert (forall ((x_58569 Int) (x_58570 E_11) (x_58571 E_11))
	(diseqE_1 (EnqL_2 x_58569 x_58570) (DeqL_2 x_58571))))
(assert (forall ((x_58572 Int) (x_58573 E_11) (x_58574 E_11))
	(diseqE_1 (EnqL_2 x_58572 x_58573) (DeqR_2 x_58574))))
(assert (forall ((x_58575 Int) (x_58576 E_11) (x_58577 E_11) (x_58578 E_11))
	(diseqE_1 (EnqL_2 x_58575 x_58576) (App_1 x_58577 x_58578))))
(assert (forall ((x_58579 E_11) (x_58580 Int) (x_58581 Int) (x_58582 E_11))
	(diseqE_1 (EnqR_2 x_58579 x_58580) (EnqL_2 x_58581 x_58582))))
(assert (forall ((x_58583 E_11) (x_58584 Int) (x_58585 E_11))
	(diseqE_1 (DeqL_2 x_58583) (EnqL_2 x_58584 x_58585))))
(assert (forall ((x_58586 E_11) (x_58587 Int) (x_58588 E_11))
	(diseqE_1 (DeqR_2 x_58586) (EnqL_2 x_58587 x_58588))))
(assert (forall ((x_58589 E_11) (x_58590 E_11) (x_58591 Int) (x_58592 E_11))
	(diseqE_1 (App_1 x_58589 x_58590) (EnqL_2 x_58591 x_58592))))
(assert (forall ((x_58593 E_11) (x_58594 Int) (x_58595 E_11))
	(diseqE_1 (EnqR_2 x_58593 x_58594) (DeqL_2 x_58595))))
(assert (forall ((x_58596 E_11) (x_58597 Int) (x_58598 E_11))
	(diseqE_1 (EnqR_2 x_58596 x_58597) (DeqR_2 x_58598))))
(assert (forall ((x_58599 E_11) (x_58600 Int) (x_58601 E_11) (x_58602 E_11))
	(diseqE_1 (EnqR_2 x_58599 x_58600) (App_1 x_58601 x_58602))))
(assert (forall ((x_58603 E_11) (x_58604 E_11) (x_58605 Int))
	(diseqE_1 (DeqL_2 x_58603) (EnqR_2 x_58604 x_58605))))
(assert (forall ((x_58606 E_11) (x_58607 E_11) (x_58608 Int))
	(diseqE_1 (DeqR_2 x_58606) (EnqR_2 x_58607 x_58608))))
(assert (forall ((x_58609 E_11) (x_58610 E_11) (x_58611 E_11) (x_58612 Int))
	(diseqE_1 (App_1 x_58609 x_58610) (EnqR_2 x_58611 x_58612))))
(assert (forall ((x_58613 E_11) (x_58614 E_11))
	(diseqE_1 (DeqL_2 x_58613) (DeqR_2 x_58614))))
(assert (forall ((x_58615 E_11) (x_58616 E_11) (x_58617 E_11))
	(diseqE_1 (DeqL_2 x_58615) (App_1 x_58616 x_58617))))
(assert (forall ((x_58618 E_11) (x_58619 E_11))
	(diseqE_1 (DeqR_2 x_58618) (DeqL_2 x_58619))))
(assert (forall ((x_58620 E_11) (x_58621 E_11) (x_58622 E_11))
	(diseqE_1 (App_1 x_58620 x_58621) (DeqL_2 x_58622))))
(assert (forall ((x_58623 E_11) (x_58624 E_11) (x_58625 E_11))
	(diseqE_1 (DeqR_2 x_58623) (App_1 x_58624 x_58625))))
(assert (forall ((x_58626 E_11) (x_58627 E_11) (x_58628 E_11))
	(diseqE_1 (App_1 x_58626 x_58627) (DeqR_2 x_58628))))
(assert (forall ((x_58629 Int) (x_58630 E_11) (x_58631 Int) (x_58632 E_11))
	(=> (diseqInt x_58629 x_58631) (diseqE_1 (EnqL_2 x_58629 x_58630) (EnqL_2 x_58631 x_58632)))))
(assert (forall ((x_58629 Int) (x_58630 E_11) (x_58631 Int) (x_58632 E_11))
	(=> (diseqE_1 x_58630 x_58632) (diseqE_1 (EnqL_2 x_58629 x_58630) (EnqL_2 x_58631 x_58632)))))
(assert (forall ((x_58633 E_11) (x_58634 Int) (x_58635 E_11) (x_58636 Int))
	(=> (diseqE_1 x_58633 x_58635) (diseqE_1 (EnqR_2 x_58633 x_58634) (EnqR_2 x_58635 x_58636)))))
(assert (forall ((x_58633 E_11) (x_58634 Int) (x_58635 E_11) (x_58636 Int))
	(=> (diseqInt x_58634 x_58636) (diseqE_1 (EnqR_2 x_58633 x_58634) (EnqR_2 x_58635 x_58636)))))
(assert (forall ((x_58637 E_11) (x_58638 E_11))
	(=> (diseqE_1 x_58637 x_58638) (diseqE_1 (DeqL_2 x_58637) (DeqL_2 x_58638)))))
(assert (forall ((x_58639 E_11) (x_58640 E_11))
	(=> (diseqE_1 x_58639 x_58640) (diseqE_1 (DeqR_2 x_58639) (DeqR_2 x_58640)))))
(assert (forall ((x_58641 E_11) (x_58642 E_11) (x_58643 E_11) (x_58644 E_11))
	(=> (diseqE_1 x_58641 x_58643) (diseqE_1 (App_1 x_58641 x_58642) (App_1 x_58643 x_58644)))))
(assert (forall ((x_58641 E_11) (x_58642 E_11) (x_58643 E_11) (x_58644 E_11))
	(=> (diseqE_1 x_58642 x_58644) (diseqE_1 (App_1 x_58641 x_58642) (App_1 x_58643 x_58644)))))
(declare-fun take_52 (list_287 Int list_287) Bool)
(assert (forall ((x_58284 Int) (y_2501 list_287))
	(=> (le_376 x_58284 Z_2263) (take_52 nil_319 x_58284 y_2501))))
(assert (forall ((x_58458 Int) (x_58334 list_287) (z_2249 Int) (xs_734 list_287) (x_58284 Int))
	(=> (and (gt_379 x_58284 Z_2263) (take_52 x_58334 x_58458 xs_734) (minus_397 x_58458 x_58284 (S_525 Z_2263))) (take_52 (cons_286 z_2249 x_58334) x_58284 (cons_286 z_2249 xs_734)))))
(assert (forall ((x_58284 Int) (y_2501 list_287))
	(=> (le_376 x_58284 Z_2263) (take_52 nil_319 x_58284 y_2501))))
(assert (forall ((x_58284 Int))
	(=> (gt_379 x_58284 Z_2263) (take_52 nil_319 x_58284 nil_319))))
(declare-fun tail_574 (list_287 list_287) Bool)
(assert (forall ((x_58337 list_287) (y_2502 Int))
	(tail_574 x_58337 (cons_286 y_2502 x_58337))))
(assert (tail_574 nil_319 nil_319))
(declare-fun length_58 (Int list_287) Bool)
(assert (forall ((x_58339 Int) (x_58340 Int) (y_2503 Int) (l_47 list_287))
	(=> (and (length_58 x_58340 l_47) (add_402 x_58339 (S_525 Z_2263) x_58340)) (length_58 x_58339 (cons_286 y_2503 l_47)))))
(assert (length_58 Z_2263 nil_319))
(declare-fun last_9 (Maybe_3 list_287) Bool)
(assert (forall ((x_58342 Maybe_3) (x_58288 Int) (x_58289 list_287) (y_2504 Int))
	(=> (last_9 x_58342 (cons_286 x_58288 x_58289)) (last_9 x_58342 (cons_286 y_2504 (cons_286 x_58288 x_58289))))))
(assert (forall ((y_2504 Int))
	(last_9 (Just_3 y_2504) (cons_286 y_2504 nil_319))))
(assert (last_9 Nothing_3 nil_319))
(declare-fun init_1 (list_287 list_287) Bool)
(assert (forall ((x_58347 list_287) (x_58291 Int) (x_58292 list_287) (y_2505 Int))
	(=> (init_1 x_58347 (cons_286 x_58291 x_58292)) (init_1 (cons_286 y_2505 x_58347) (cons_286 y_2505 (cons_286 x_58291 x_58292))))))
(assert (forall ((y_2505 Int))
	(init_1 nil_319 (cons_286 y_2505 nil_319))))
(assert (init_1 nil_319 nil_319))
(declare-fun fstR_0 (Maybe_3 Q_153) Bool)
(assert (forall ((x_58297 Int) (x_58298 list_287) (x_58295 Int) (y_2507 Int) (x_58294 list_287))
	(fstR_0 (Just_3 y_2507) (Q_154 (cons_286 x_58295 (cons_286 x_58297 x_58298)) (cons_286 y_2507 x_58294)))))
(assert (forall ((x_58299 Int) (x_58295 Int) (x_58294 list_287))
	(fstR_0 (Just_3 x_58299) (Q_154 (cons_286 x_58295 nil_319) (cons_286 x_58299 x_58294)))))
(assert (forall ((y_2507 Int) (x_58294 list_287))
	(fstR_0 (Just_3 y_2507) (Q_154 nil_319 (cons_286 y_2507 x_58294)))))
(assert (forall ((x_58297 Int) (x_58298 list_287) (x_58295 Int))
	(fstR_0 Nothing_3 (Q_154 (cons_286 x_58295 (cons_286 x_58297 x_58298)) nil_319))))
(assert (forall ((x_58295 Int))
	(fstR_0 (Just_3 x_58295) (Q_154 (cons_286 x_58295 nil_319) nil_319))))
(assert (fstR_0 Nothing_3 (Q_154 nil_319 nil_319)))
(declare-fun fromMaybe_2 (Int Int Maybe_3) Bool)
(assert (forall ((x_58358 Int) (x_58301 Int))
	(fromMaybe_2 x_58358 x_58301 (Just_3 x_58358))))
(assert (forall ((x_58301 Int))
	(fromMaybe_2 x_58301 x_58301 Nothing_3)))
(declare-fun fromMaybe_3 (Q_153 Q_153 Maybe_4) Bool)
(assert (forall ((x_58360 Q_153) (x_58302 Q_153))
	(fromMaybe_3 x_58360 x_58302 (Just_4 x_58360))))
(assert (forall ((x_58302 Q_153))
	(fromMaybe_3 x_58302 x_58302 Nothing_4)))
(declare-fun empty_3 (Q_153) Bool)
(assert (empty_3 (Q_154 nil_319 nil_319)))
(declare-fun drop_57 (list_287 Int list_287) Bool)
(assert (forall ((x_58363 list_287) (x_58303 Int))
	(=> (le_376 x_58303 Z_2263) (drop_57 x_58363 x_58303 x_58363))))
(assert (forall ((x_58460 Int) (x_58364 list_287) (z_2255 Int) (xs_736 list_287) (x_58303 Int))
	(=> (and (gt_379 x_58303 Z_2263) (drop_57 x_58364 x_58460 xs_736) (minus_397 x_58460 x_58303 (S_525 Z_2263))) (drop_57 x_58364 x_58303 (cons_286 z_2255 xs_736)))))
(assert (forall ((x_58366 list_287) (x_58303 Int))
	(=> (le_376 x_58303 Z_2263) (drop_57 x_58366 x_58303 x_58366))))
(assert (forall ((x_58303 Int))
	(=> (gt_379 x_58303 Z_2263) (drop_57 nil_319 x_58303 nil_319))))
(declare-fun halve_1 (pair_110 list_287) Bool)
(assert (forall ((x_58370 list_287) (x_58371 list_287) (x_58368 Int) (k_16 Int) (x_58304 list_287))
	(=> (and (take_52 x_58370 k_16 x_58304) (drop_57 x_58371 k_16 x_58304) (length_58 x_58368 x_58304) (div_376 k_16 x_58368 (S_525 (S_525 Z_2263)))) (halve_1 (pair_111 x_58370 x_58371) x_58304))))
(declare-fun x_58305 (list_287 list_287 list_287) Bool)
(assert (forall ((x_58373 list_287) (z_2256 Int) (xs_737 list_287) (y_2511 list_287))
	(=> (x_58305 x_58373 xs_737 y_2511) (x_58305 (cons_286 z_2256 x_58373) (cons_286 z_2256 xs_737) y_2511))))
(assert (forall ((x_58374 list_287))
	(x_58305 x_58374 nil_319 x_58374)))
(declare-fun list_288 (list_287 E_11) Bool)
(assert (forall ((x_58375 list_287) (x_58376 list_287) (x_58377 list_287) (a_61 E_11) (b_47 E_11))
	(=> (and (list_288 x_58376 a_61) (list_288 x_58377 b_47) (x_58305 x_58375 x_58376 x_58377)) (list_288 x_58375 (App_1 a_61 b_47)))))
(assert (forall ((x_58379 list_287) (x_58380 list_287) (e_12 E_11))
	(=> (and (list_288 x_58380 e_12) (init_1 x_58379 x_58380)) (list_288 x_58379 (DeqR_2 e_12)))))
(assert (forall ((x_58382 list_287) (x_58383 list_287) (e_13 E_11))
	(=> (and (list_288 x_58383 e_13) (tail_574 x_58382 x_58383)) (list_288 x_58382 (DeqL_2 e_13)))))
(assert (forall ((x_58385 list_287) (x_58386 list_287) (e_14 E_11) (z_2257 Int))
	(=> (and (list_288 x_58386 e_14) (x_58305 x_58385 x_58386 (cons_286 z_2257 nil_319))) (list_288 x_58385 (EnqR_2 e_14 z_2257)))))
(assert (forall ((x_58389 list_287) (y_2512 Int) (e_15 E_11))
	(=> (list_288 x_58389 e_15) (list_288 (cons_286 y_2512 x_58389) (EnqL_2 y_2512 e_15)))))
(assert (list_288 nil_319 Empty_2))
(declare-fun reverse_14 (list_287 list_287) Bool)
(assert (forall ((x_58391 list_287) (x_58392 list_287) (y_2513 Int) (xs_738 list_287))
	(=> (and (reverse_14 x_58392 xs_738) (x_58305 x_58391 x_58392 (cons_286 y_2513 nil_319))) (reverse_14 x_58391 (cons_286 y_2513 xs_738)))))
(assert (reverse_14 nil_319 nil_319))
(declare-fun x_58309 (Q_153 Q_153 Q_153) Bool)
(assert (forall ((x_58396 list_287) (x_58397 list_287) (x_58398 list_287) (x_58399 list_287) (vs_2 list_287) (ws_1 list_287) (xs_739 list_287) (ys_209 list_287))
	(=> (and (reverse_14 x_58396 ys_209) (x_58305 x_58397 xs_739 x_58396) (reverse_14 x_58398 vs_2) (x_58305 x_58399 ws_1 x_58398)) (x_58309 (Q_154 x_58397 x_58399) (Q_154 xs_739 ys_209) (Q_154 vs_2 ws_1)))))
(declare-fun enqL_3 (Q_153 Int Q_153) Bool)
(assert (forall ((z_2258 Int) (x_58312 list_287) (xs_740 list_287) (x_58311 Int))
	(enqL_3 (Q_154 (cons_286 x_58311 xs_740) (cons_286 z_2258 x_58312)) x_58311 (Q_154 xs_740 (cons_286 z_2258 x_58312)))))
(assert (forall ((x_58403 list_287) (as_3 list_287) (bs_5 list_287) (xs_740 list_287) (x_58311 Int))
	(=> (and (reverse_14 x_58403 bs_5) (halve_1 (pair_111 as_3 bs_5) (cons_286 x_58311 xs_740))) (enqL_3 (Q_154 as_3 x_58403) x_58311 (Q_154 xs_740 nil_319)))))
(declare-fun mkQ_1 (Q_153 list_287 list_287) Bool)
(assert (forall ((x_58315 Int) (x_58316 list_287) (z_2259 Int) (x_58314 list_287))
	(mkQ_1 (Q_154 (cons_286 z_2259 x_58314) (cons_286 x_58315 x_58316)) (cons_286 z_2259 x_58314) (cons_286 x_58315 x_58316))))
(assert (forall ((x_58407 list_287) (as_4 list_287) (bs_6 list_287) (z_2259 Int) (x_58314 list_287))
	(=> (and (reverse_14 x_58407 bs_6) (halve_1 (pair_111 as_4 bs_6) (cons_286 z_2259 x_58314))) (mkQ_1 (Q_154 as_4 x_58407) (cons_286 z_2259 x_58314) nil_319))))
(assert (forall ((x_58410 list_287) (as_5 list_287) (bs_7 list_287) (y_2516 list_287))
	(=> (and (reverse_14 x_58410 bs_7) (halve_1 (pair_111 as_5 bs_7) y_2516)) (mkQ_1 (Q_154 x_58410 as_5) nil_319 y_2516))))
(declare-fun deqL_3 (Maybe_4 Q_153) Bool)
(assert (forall ((x_58412 Q_153) (x_58318 Int) (xs_741 list_287) (z_2260 list_287))
	(=> (mkQ_1 x_58412 xs_741 z_2260) (deqL_3 (Just_4 x_58412) (Q_154 (cons_286 x_58318 xs_741) z_2260)))))
(assert (forall ((x_58321 Int) (x_58322 list_287) (x_58319 Int))
	(deqL_3 Nothing_4 (Q_154 nil_319 (cons_286 x_58319 (cons_286 x_58321 x_58322))))))
(assert (forall ((x_58415 Q_153) (x_58319 Int))
	(=> (empty_3 x_58415) (deqL_3 (Just_4 x_58415) (Q_154 nil_319 (cons_286 x_58319 nil_319))))))
(assert (deqL_3 Nothing_4 (Q_154 nil_319 nil_319)))
(declare-fun deqR_3 (Maybe_4 Q_153) Bool)
(assert (forall ((x_58417 Q_153) (x_58326 Int) (x_58327 list_287) (x_58324 Int) (y_2519 Int) (ys_211 list_287))
	(=> (mkQ_1 x_58417 (cons_286 x_58324 (cons_286 x_58326 x_58327)) ys_211) (deqR_3 (Just_4 x_58417) (Q_154 (cons_286 x_58324 (cons_286 x_58326 x_58327)) (cons_286 y_2519 ys_211))))))
(assert (forall ((x_58419 Q_153) (x_58328 Int) (x_58329 list_287) (x_58324 Int))
	(=> (mkQ_1 x_58419 (cons_286 x_58324 nil_319) x_58329) (deqR_3 (Just_4 x_58419) (Q_154 (cons_286 x_58324 nil_319) (cons_286 x_58328 x_58329))))))
(assert (forall ((x_58424 Q_153) (y_2519 Int) (ys_211 list_287))
	(=> (mkQ_1 x_58424 nil_319 ys_211) (deqR_3 (Just_4 x_58424) (Q_154 nil_319 (cons_286 y_2519 ys_211))))))
(assert (forall ((x_58326 Int) (x_58327 list_287) (x_58324 Int))
	(deqR_3 Nothing_4 (Q_154 (cons_286 x_58324 (cons_286 x_58326 x_58327)) nil_319))))
(assert (forall ((x_58429 Q_153) (x_58324 Int))
	(=> (empty_3 x_58429) (deqR_3 (Just_4 x_58429) (Q_154 (cons_286 x_58324 nil_319) nil_319)))))
(assert (deqR_3 Nothing_4 (Q_154 nil_319 nil_319)))
(declare-fun enqR_3 (Q_153 Q_153 Int) Bool)
(assert (forall ((x_58431 Q_153) (xs_742 list_287) (ys_212 list_287) (y_2520 Int))
	(=> (mkQ_1 x_58431 xs_742 (cons_286 y_2520 ys_212)) (enqR_3 x_58431 (Q_154 xs_742 ys_212) y_2520))))
(declare-fun queue_1 (Q_153 E_11) Bool)
(assert (forall ((x_58433 Q_153) (x_58434 Q_153) (x_58435 Q_153) (a_62 E_11) (b_48 E_11))
	(=> (and (queue_1 x_58434 a_62) (queue_1 x_58435 b_48) (x_58309 x_58433 x_58434 x_58435)) (queue_1 x_58433 (App_1 a_62 b_48)))))
(assert (forall ((x_58438 Q_153) (x_58439 Maybe_4) (r_463 Q_153) (e_16 E_11))
	(=> (and (deqR_3 x_58439 r_463) (fromMaybe_3 x_58438 r_463 x_58439) (queue_1 r_463 e_16)) (queue_1 x_58438 (DeqR_2 e_16)))))
(assert (forall ((x_58442 Q_153) (x_58443 Maybe_4) (q_155 Q_153) (e_17 E_11))
	(=> (and (deqL_3 x_58443 q_155) (fromMaybe_3 x_58442 q_155 x_58443) (queue_1 q_155 e_17)) (queue_1 x_58442 (DeqL_2 e_17)))))
(assert (forall ((x_58445 Q_153) (x_58446 Q_153) (e_18 E_11) (z_2262 Int))
	(=> (and (queue_1 x_58446 e_18) (enqR_3 x_58445 x_58446 z_2262)) (queue_1 x_58445 (EnqR_2 e_18 z_2262)))))
(assert (forall ((x_58448 Q_153) (x_58449 Q_153) (y_2521 Int) (e_19 E_11))
	(=> (and (queue_1 x_58449 e_19) (enqL_3 x_58448 y_2521 x_58449)) (queue_1 x_58448 (EnqL_2 y_2521 e_19)))))
(assert (forall ((x_58451 Q_153))
	(=> (empty_3 x_58451) (queue_1 x_58451 Empty_2))))
(assert (forall ((x_58453 Q_153) (x_58454 Maybe_3) (x_58455 list_287) (x_58456 Maybe_3) (e_20 E_11))
	(=> (and true (diseqMaybe_3 x_58454 x_58456) (queue_1 x_58453 e_20) (fstR_0 x_58454 x_58453) (list_288 x_58455 e_20) (last_9 x_58456 x_58455)) false)))
(check-sat)
