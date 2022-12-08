
(set-logic HORN)
(declare-fun Z_2765 () Int)
(declare-fun S_637 (Int) Int)
(declare-fun diseqInt (Int Int) Bool)
(declare-fun unS_889 (Int Int) Bool)
(declare-fun isZ_573 (Int) Bool)
(declare-fun isS_573 (Int) Bool)
(assert (forall ((x_126764 Int))
	(unS_889 x_126764 (S_637 x_126764))))
(assert (isZ_573 Z_2765))
(assert (forall ((x_126766 Int))
	(isS_573 (S_637 x_126766))))
(assert (forall ((x_126767 Int))
	(diseqInt Z_2765 (S_637 x_126767))))
(assert (forall ((x_126768 Int))
	(diseqInt (S_637 x_126768) Z_2765)))
(assert (forall ((x_126769 Int) (x_126770 Int))
	(=> (diseqInt x_126769 x_126770) (diseqInt (S_637 x_126769) (S_637 x_126770)))))
(declare-fun add_478 (Int Int Int) Bool)
(declare-fun minus_465 (Int Int Int) Bool)
(declare-fun le_444 (Int Int) Bool)
(declare-fun ge_444 (Int Int) Bool)
(declare-fun lt_464 (Int Int) Bool)
(declare-fun gt_447 (Int Int) Bool)
(declare-fun mult_445 (Int Int Int) Bool)
(declare-fun div_444 (Int Int Int) Bool)
(declare-fun mod_446 (Int Int Int) Bool)
(assert (forall ((y_3231 Int))
	(add_478 y_3231 Z_2765 y_3231)))
(assert (forall ((x_126705 Int) (y_3231 Int) (r_669 Int))
	(=> (add_478 r_669 x_126705 y_3231) (add_478 (S_637 r_669) (S_637 x_126705) y_3231))))
(assert (forall ((y_3231 Int))
	(minus_465 Z_2765 Z_2765 y_3231)))
(assert (forall ((x_126705 Int) (y_3231 Int) (r_669 Int))
	(=> (minus_465 r_669 x_126705 y_3231) (minus_465 (S_637 r_669) (S_637 x_126705) y_3231))))
(assert (forall ((y_3231 Int))
	(le_444 Z_2765 y_3231)))
(assert (forall ((x_126705 Int) (y_3231 Int))
	(=> (le_444 x_126705 y_3231) (le_444 (S_637 x_126705) (S_637 y_3231)))))
(assert (forall ((y_3231 Int))
	(ge_444 y_3231 Z_2765)))
(assert (forall ((x_126705 Int) (y_3231 Int))
	(=> (ge_444 x_126705 y_3231) (ge_444 (S_637 x_126705) (S_637 y_3231)))))
(assert (forall ((y_3231 Int))
	(lt_464 Z_2765 (S_637 y_3231))))
(assert (forall ((x_126705 Int) (y_3231 Int))
	(=> (lt_464 x_126705 y_3231) (lt_464 (S_637 x_126705) (S_637 y_3231)))))
(assert (forall ((y_3231 Int))
	(gt_447 (S_637 y_3231) Z_2765)))
(assert (forall ((x_126705 Int) (y_3231 Int))
	(=> (gt_447 x_126705 y_3231) (gt_447 (S_637 x_126705) (S_637 y_3231)))))
(assert (forall ((y_3231 Int))
	(mult_445 Z_2765 Z_2765 y_3231)))
(assert (forall ((x_126705 Int) (y_3231 Int) (r_669 Int) (z_2766 Int))
	(=> (and (mult_445 r_669 x_126705 y_3231) (add_478 z_2766 r_669 y_3231)) (mult_445 z_2766 (S_637 x_126705) y_3231))))
(assert (forall ((x_126705 Int) (y_3231 Int))
	(=> (lt_464 x_126705 y_3231) (div_444 Z_2765 x_126705 y_3231))))
(assert (forall ((x_126705 Int) (y_3231 Int) (r_669 Int) (z_2766 Int))
	(=> (and (ge_444 x_126705 y_3231) (minus_465 z_2766 x_126705 y_3231) (div_444 r_669 z_2766 y_3231)) (div_444 (S_637 r_669) x_126705 y_3231))))
(assert (forall ((x_126705 Int) (y_3231 Int))
	(=> (lt_464 x_126705 y_3231) (mod_446 x_126705 x_126705 y_3231))))
(assert (forall ((x_126705 Int) (y_3231 Int) (r_669 Int) (z_2766 Int))
	(=> (and (ge_444 x_126705 y_3231) (minus_465 z_2766 x_126705 y_3231) (mod_446 r_669 z_2766 y_3231)) (mod_446 r_669 x_126705 y_3231))))
(declare-datatypes ((Bool_444 0)) (((false_444) (true_444))))
(declare-fun diseqBool_222 (Bool_444 Bool_444) Bool)
(declare-fun isfalse_222 (Bool_444) Bool)
(declare-fun istrue_222 (Bool_444) Bool)
(assert (isfalse_222 false_444))
(assert (istrue_222 true_444))
(assert (diseqBool_222 false_444 true_444))
(assert (diseqBool_222 true_444 false_444))
(declare-fun and_450 (Bool_444 Bool_444 Bool_444) Bool)
(declare-fun or_466 (Bool_444 Bool_444 Bool_444) Bool)
(declare-fun hence_444 (Bool_444 Bool_444 Bool_444) Bool)
(declare-fun not_449 (Bool_444 Bool_444) Bool)
(assert (and_450 false_444 false_444 false_444))
(assert (and_450 false_444 true_444 false_444))
(assert (and_450 false_444 false_444 true_444))
(assert (and_450 true_444 true_444 true_444))
(assert (or_466 false_444 false_444 false_444))
(assert (or_466 true_444 true_444 false_444))
(assert (or_466 true_444 false_444 true_444))
(assert (or_466 true_444 true_444 true_444))
(assert (hence_444 true_444 false_444 false_444))
(assert (hence_444 false_444 true_444 false_444))
(assert (hence_444 true_444 false_444 true_444))
(assert (hence_444 true_444 true_444 true_444))
(assert (not_449 true_444 false_444))
(assert (not_449 false_444 true_444))
(declare-datatypes ((pair_206 0)) (((pair_207 (projpair_412 Int) (projpair_413 Int)))))
(declare-fun diseqpair_103 (pair_206 pair_206) Bool)
(declare-fun projpair_414 (Int pair_206) Bool)
(declare-fun projpair_415 (Int pair_206) Bool)
(declare-fun ispair_103 (pair_206) Bool)
(assert (forall ((x_126773 Int) (x_126774 Int))
	(projpair_414 x_126773 (pair_207 x_126773 x_126774))))
(assert (forall ((x_126773 Int) (x_126774 Int))
	(projpair_415 x_126774 (pair_207 x_126773 x_126774))))
(assert (forall ((x_126776 Int) (x_126777 Int))
	(ispair_103 (pair_207 x_126776 x_126777))))
(assert (forall ((x_126778 Int) (x_126779 Int) (x_126780 Int) (x_126781 Int))
	(=> (diseqInt x_126778 x_126780) (diseqpair_103 (pair_207 x_126778 x_126779) (pair_207 x_126780 x_126781)))))
(assert (forall ((x_126778 Int) (x_126779 Int) (x_126780 Int) (x_126781 Int))
	(=> (diseqInt x_126779 x_126781) (diseqpair_103 (pair_207 x_126778 x_126779) (pair_207 x_126780 x_126781)))))
(declare-datatypes ((list_403 0)) (((nil_464) (cons_397 (head_794 Bool_444) (tail_800 list_403)))))
(declare-fun diseqlist_397 (list_403 list_403) Bool)
(declare-fun head_797 (Bool_444 list_403) Bool)
(declare-fun tail_803 (list_403 list_403) Bool)
(declare-fun isnil_464 (list_403) Bool)
(declare-fun iscons_397 (list_403) Bool)
(assert (forall ((x_126783 Bool_444) (x_126784 list_403))
	(head_797 x_126783 (cons_397 x_126783 x_126784))))
(assert (forall ((x_126783 Bool_444) (x_126784 list_403))
	(tail_803 x_126784 (cons_397 x_126783 x_126784))))
(assert (isnil_464 nil_464))
(assert (forall ((x_126786 Bool_444) (x_126787 list_403))
	(iscons_397 (cons_397 x_126786 x_126787))))
(assert (forall ((x_126788 Bool_444) (x_126789 list_403))
	(diseqlist_397 nil_464 (cons_397 x_126788 x_126789))))
(assert (forall ((x_126790 Bool_444) (x_126791 list_403))
	(diseqlist_397 (cons_397 x_126790 x_126791) nil_464)))
(assert (forall ((x_126792 Bool_444) (x_126793 list_403) (x_126794 Bool_444) (x_126795 list_403))
	(=> (diseqBool_222 x_126792 x_126794) (diseqlist_397 (cons_397 x_126792 x_126793) (cons_397 x_126794 x_126795)))))
(assert (forall ((x_126792 Bool_444) (x_126793 list_403) (x_126794 Bool_444) (x_126795 list_403))
	(=> (diseqlist_397 x_126793 x_126795) (diseqlist_397 (cons_397 x_126792 x_126793) (cons_397 x_126794 x_126795)))))
(declare-datatypes ((list_404 0)) (((nil_465) (cons_398 (head_795 Int) (tail_801 list_404)))))
(declare-fun diseqlist_398 (list_404 list_404) Bool)
(declare-fun head_798 (Int list_404) Bool)
(declare-fun tail_804 (list_404 list_404) Bool)
(declare-fun isnil_465 (list_404) Bool)
(declare-fun iscons_398 (list_404) Bool)
(assert (forall ((x_126797 Int) (x_126798 list_404))
	(head_798 x_126797 (cons_398 x_126797 x_126798))))
(assert (forall ((x_126797 Int) (x_126798 list_404))
	(tail_804 x_126798 (cons_398 x_126797 x_126798))))
(assert (isnil_465 nil_465))
(assert (forall ((x_126800 Int) (x_126801 list_404))
	(iscons_398 (cons_398 x_126800 x_126801))))
(assert (forall ((x_126802 Int) (x_126803 list_404))
	(diseqlist_398 nil_465 (cons_398 x_126802 x_126803))))
(assert (forall ((x_126804 Int) (x_126805 list_404))
	(diseqlist_398 (cons_398 x_126804 x_126805) nil_465)))
(assert (forall ((x_126806 Int) (x_126807 list_404) (x_126808 Int) (x_126809 list_404))
	(=> (diseqInt x_126806 x_126808) (diseqlist_398 (cons_398 x_126806 x_126807) (cons_398 x_126808 x_126809)))))
(assert (forall ((x_126806 Int) (x_126807 list_404) (x_126808 Int) (x_126809 list_404))
	(=> (diseqlist_398 x_126807 x_126809) (diseqlist_398 (cons_398 x_126806 x_126807) (cons_398 x_126808 x_126809)))))
(declare-datatypes ((list_405 0)) (((nil_466) (cons_399 (head_796 pair_206) (tail_802 list_405)))))
(declare-fun diseqlist_399 (list_405 list_405) Bool)
(declare-fun head_799 (pair_206 list_405) Bool)
(declare-fun tail_805 (list_405 list_405) Bool)
(declare-fun isnil_466 (list_405) Bool)
(declare-fun iscons_399 (list_405) Bool)
(assert (forall ((x_126811 pair_206) (x_126812 list_405))
	(head_799 x_126811 (cons_399 x_126811 x_126812))))
(assert (forall ((x_126811 pair_206) (x_126812 list_405))
	(tail_805 x_126812 (cons_399 x_126811 x_126812))))
(assert (isnil_466 nil_466))
(assert (forall ((x_126814 pair_206) (x_126815 list_405))
	(iscons_399 (cons_399 x_126814 x_126815))))
(assert (forall ((x_126816 pair_206) (x_126817 list_405))
	(diseqlist_399 nil_466 (cons_399 x_126816 x_126817))))
(assert (forall ((x_126818 pair_206) (x_126819 list_405))
	(diseqlist_399 (cons_399 x_126818 x_126819) nil_466)))
(assert (forall ((x_126820 pair_206) (x_126821 list_405) (x_126822 pair_206) (x_126823 list_405))
	(=> (diseqpair_103 x_126820 x_126822) (diseqlist_399 (cons_399 x_126820 x_126821) (cons_399 x_126822 x_126823)))))
(assert (forall ((x_126820 pair_206) (x_126821 list_405) (x_126822 pair_206) (x_126823 list_405))
	(=> (diseqlist_399 x_126821 x_126823) (diseqlist_399 (cons_399 x_126820 x_126821) (cons_399 x_126822 x_126823)))))
(declare-fun primEnumFromTo_12 (list_404 Int Int) Bool)
(assert (forall ((x_126503 Int) (y_3211 Int))
	(=> (gt_447 x_126503 y_3211) (primEnumFromTo_12 nil_465 x_126503 y_3211))))
(assert (forall ((x_126706 Int) (x_126536 list_404) (x_126503 Int) (y_3211 Int))
	(=> (and (le_444 x_126503 y_3211) (primEnumFromTo_12 x_126536 x_126706 y_3211) (add_478 x_126706 (S_637 Z_2765) x_126503)) (primEnumFromTo_12 (cons_398 x_126503 x_126536) x_126503 y_3211))))
(declare-fun path_4 (list_403 Int Int list_405) Bool)
(assert (forall ((x_126538 list_403) (u_30 Int) (x_126506 list_405))
	(=> (path_4 x_126538 u_30 u_30 x_126506) (path_4 (cons_397 true_444 x_126538) u_30 u_30 (cons_399 (pair_207 u_30 u_30) x_126506)))))
(assert (forall ((x_126540 list_403) (u_30 Int) (x_126506 list_405))
	(=> (and (diseqInt u_30 u_30) (path_4 x_126540 u_30 u_30 x_126506)) (path_4 (cons_397 true_444 x_126540) u_30 u_30 (cons_399 (pair_207 u_30 u_30) x_126506)))))
(assert (forall ((x_126542 list_403) (u_30 Int) (x_126506 list_405))
	(=> (and (diseqInt u_30 u_30) (path_4 x_126542 u_30 u_30 x_126506)) (path_4 (cons_397 true_444 x_126542) u_30 u_30 (cons_399 (pair_207 u_30 u_30) x_126506)))))
(assert (forall ((x_126544 list_403) (u_30 Int) (v_30 Int) (x_126506 list_405))
	(=> (and (diseqInt u_30 v_30) (diseqInt v_30 u_30) (path_4 x_126544 v_30 u_30 x_126506)) (path_4 (cons_397 true_444 x_126544) v_30 u_30 (cons_399 (pair_207 u_30 v_30) x_126506)))))
(assert (forall ((x_126546 list_403) (u_30 Int) (x_126506 list_405))
	(=> (and (diseqInt u_30 u_30) (path_4 x_126546 u_30 u_30 x_126506)) (path_4 (cons_397 true_444 x_126546) u_30 u_30 (cons_399 (pair_207 u_30 u_30) x_126506)))))
(assert (forall ((x_126548 list_403) (u_30 Int) (v_30 Int) (x_126506 list_405))
	(=> (and (diseqInt u_30 v_30) (diseqInt u_30 v_30) (path_4 x_126548 v_30 v_30 x_126506)) (path_4 (cons_397 false_444 x_126548) v_30 v_30 (cons_399 (pair_207 u_30 v_30) x_126506)))))
(assert (forall ((x_126550 list_403) (u_30 Int) (x_126506 list_405) (y_3212 Int))
	(=> (and (diseqInt u_30 y_3212) (diseqInt u_30 y_3212) (path_4 x_126550 u_30 y_3212 x_126506)) (path_4 (cons_397 false_444 x_126550) u_30 y_3212 (cons_399 (pair_207 u_30 u_30) x_126506)))))
(assert (forall ((x_126552 list_403) (u_30 Int) (v_30 Int) (x_126506 list_405) (y_3212 Int))
	(=> (and (diseqInt u_30 v_30) (diseqInt v_30 y_3212) (diseqInt u_30 y_3212) (path_4 x_126552 v_30 y_3212 x_126506)) (path_4 (cons_397 false_444 x_126552) v_30 y_3212 (cons_399 (pair_207 u_30 v_30) x_126506)))))
(assert (forall ((x_126554 list_403) (u_30 Int) (x_126506 list_405))
	(=> (and (diseqInt u_30 u_30) (path_4 x_126554 u_30 u_30 x_126506)) (path_4 (cons_397 true_444 x_126554) u_30 u_30 (cons_399 (pair_207 u_30 u_30) x_126506)))))
(assert (forall ((x_126556 list_403) (u_30 Int) (x_126506 list_405) (x_126504 Int))
	(=> (and (diseqInt u_30 x_126504) (diseqInt u_30 x_126504) (path_4 x_126556 x_126504 u_30 x_126506)) (path_4 (cons_397 false_444 x_126556) x_126504 u_30 (cons_399 (pair_207 u_30 u_30) x_126506)))))
(assert (forall ((x_126558 list_403) (u_30 Int) (v_30 Int) (x_126506 list_405))
	(=> (and (diseqInt v_30 u_30) (diseqInt v_30 u_30) (path_4 x_126558 u_30 u_30 x_126506)) (path_4 (cons_397 false_444 x_126558) u_30 u_30 (cons_399 (pair_207 u_30 v_30) x_126506)))))
(assert (forall ((x_126560 list_403) (u_30 Int) (v_30 Int) (x_126506 list_405) (x_126504 Int))
	(=> (and (diseqInt u_30 x_126504) (diseqInt v_30 u_30) (diseqInt v_30 x_126504) (path_4 x_126560 x_126504 u_30 x_126506)) (path_4 (cons_397 false_444 x_126560) x_126504 u_30 (cons_399 (pair_207 u_30 v_30) x_126506)))))
(assert (forall ((x_126562 list_403) (u_30 Int) (v_30 Int) (x_126506 list_405))
	(=> (and (diseqInt u_30 v_30) (diseqInt v_30 u_30) (path_4 x_126562 u_30 v_30 x_126506)) (path_4 (cons_397 true_444 x_126562) u_30 v_30 (cons_399 (pair_207 u_30 v_30) x_126506)))))
(assert (forall ((x_126564 list_403) (u_30 Int) (v_30 Int) (x_126506 list_405) (x_126504 Int))
	(=> (and (diseqInt u_30 x_126504) (diseqInt u_30 v_30) (diseqInt v_30 x_126504) (path_4 x_126564 x_126504 v_30 x_126506)) (path_4 (cons_397 false_444 x_126564) x_126504 v_30 (cons_399 (pair_207 u_30 v_30) x_126506)))))
(assert (forall ((x_126566 list_403) (u_30 Int) (v_30 Int) (x_126506 list_405) (y_3212 Int))
	(=> (and (diseqInt v_30 y_3212) (diseqInt u_30 y_3212) (diseqInt v_30 u_30) (path_4 x_126566 u_30 y_3212 x_126506)) (path_4 (cons_397 false_444 x_126566) u_30 y_3212 (cons_399 (pair_207 u_30 v_30) x_126506)))))
(assert (forall ((x_126568 list_403) (u_30 Int) (v_30 Int) (x_126506 list_405) (x_126504 Int) (y_3212 Int))
	(=> (and (diseqInt u_30 x_126504) (diseqInt v_30 y_3212) (diseqInt u_30 y_3212) (diseqInt v_30 x_126504) (path_4 x_126568 x_126504 y_3212 x_126506)) (path_4 (cons_397 false_444 x_126568) x_126504 y_3212 (cons_399 (pair_207 u_30 v_30) x_126506)))))
(assert (forall ((x_126504 Int) (y_3212 Int))
	(path_4 nil_464 x_126504 y_3212 nil_466)))
(declare-fun or_465 (Bool_444 list_403) Bool)
(assert (forall ((x_126570 Bool_444) (x_126571 Bool_444) (y_3213 Bool_444) (xs_899 list_403))
	(=> (and (or_465 x_126571 xs_899) (or_466 x_126570 y_3213 x_126571)) (or_465 x_126570 (cons_397 y_3213 xs_899)))))
(assert (or_465 false_444 nil_464))
(declare-fun path_5 (Bool_444 list_404 list_405) Bool)
(assert (forall ((x_126573 Bool_444) (x_126574 list_403) (x_126575 Bool_444) (x_126576 Bool_444) (y_3215 Int) (xs_900 list_404) (z_2752 Int) (y_3214 list_405))
	(=> (and (path_4 x_126574 z_2752 y_3215 y_3214) (or_465 x_126575 x_126574) (path_5 x_126576 (cons_398 y_3215 xs_900) y_3214) (and_450 x_126573 x_126575 x_126576)) (path_5 x_126573 (cons_398 z_2752 (cons_398 y_3215 xs_900)) y_3214))))
(assert (forall ((z_2752 Int) (y_3214 list_405))
	(path_5 true_444 (cons_398 z_2752 nil_465) y_3214)))
(assert (forall ((y_3214 list_405))
	(path_5 true_444 nil_465 y_3214)))
(declare-fun maximummaximum_6 (Int Int list_405) Bool)
(assert (forall ((x_126579 Int) (y_3218 Int) (y_3217 Int) (yzs_6 list_405) (x_126510 Int))
	(=> (and (le_444 y_3217 y_3218) (le_444 x_126510 y_3218) (maximummaximum_6 x_126579 y_3218 yzs_6)) (maximummaximum_6 x_126579 x_126510 (cons_399 (pair_207 y_3217 y_3218) yzs_6)))))
(assert (forall ((x_126581 Int) (y_3218 Int) (y_3217 Int) (yzs_6 list_405) (x_126510 Int))
	(=> (and (le_444 y_3217 y_3218) (gt_447 x_126510 y_3218) (maximummaximum_6 x_126581 x_126510 yzs_6)) (maximummaximum_6 x_126581 x_126510 (cons_399 (pair_207 y_3217 y_3218) yzs_6)))))
(assert (forall ((x_126583 Int) (y_3217 Int) (z_2754 Int) (yzs_6 list_405) (x_126510 Int))
	(=> (and (gt_447 y_3217 z_2754) (le_444 x_126510 y_3217) (maximummaximum_6 x_126583 y_3217 yzs_6)) (maximummaximum_6 x_126583 x_126510 (cons_399 (pair_207 y_3217 z_2754) yzs_6)))))
(assert (forall ((x_126585 Int) (y_3217 Int) (z_2754 Int) (yzs_6 list_405) (x_126510 Int))
	(=> (and (gt_447 y_3217 z_2754) (gt_447 x_126510 y_3217) (maximummaximum_6 x_126585 x_126510 yzs_6)) (maximummaximum_6 x_126585 x_126510 (cons_399 (pair_207 y_3217 z_2754) yzs_6)))))
(assert (forall ((x_126510 Int))
	(maximummaximum_6 x_126510 x_126510 nil_466)))
(declare-fun length_71 (Int list_404) Bool)
(assert (forall ((x_126588 Int) (x_126589 Int) (y_3219 Int) (l_63 list_404))
	(=> (and (length_71 x_126589 l_63) (add_478 x_126588 (S_637 Z_2765) x_126589)) (length_71 x_126588 (cons_398 y_3219 l_63)))))
(assert (length_71 Z_2765 nil_465))
(declare-fun last_17 (Int Int list_404) Bool)
(assert (forall ((x_126591 Int) (z_2755 Int) (ys_245 list_404) (x_126512 Int))
	(=> (last_17 x_126591 z_2755 ys_245) (last_17 x_126591 x_126512 (cons_398 z_2755 ys_245)))))
(assert (forall ((x_126512 Int))
	(last_17 x_126512 x_126512 nil_465)))
(declare-fun elem_29 (Bool_444 Int list_404) Bool)
(assert (forall ((xs_901 list_404) (x_126513 Int))
	(elem_29 true_444 x_126513 (cons_398 x_126513 xs_901))))
(assert (forall ((x_126595 Bool_444) (z_2756 Int) (xs_901 list_404) (x_126513 Int))
	(=> (and (diseqInt z_2756 x_126513) (elem_29 x_126595 x_126513 xs_901)) (elem_29 x_126595 x_126513 (cons_398 z_2756 xs_901)))))
(assert (forall ((x_126513 Int))
	(elem_29 false_444 x_126513 nil_465)))
(declare-fun unique_2 (Bool_444 list_404) Bool)
(assert (forall ((y_3222 Int) (xs_902 list_404))
	(=> (elem_29 true_444 y_3222 xs_902) (unique_2 false_444 (cons_398 y_3222 xs_902)))))
(assert (forall ((x_126601 Bool_444) (y_3222 Int) (xs_902 list_404))
	(=> (and (unique_2 x_126601 xs_902) (elem_29 false_444 y_3222 xs_902)) (unique_2 x_126601 (cons_398 y_3222 xs_902)))))
(assert (unique_2 true_444 nil_465))
(declare-fun tour_2 (Bool_444 list_404 list_405) Bool)
(assert (forall ((x_126607 Bool_444) (x_126608 Bool_444) (x_126609 Bool_444) (x_126605 Int) (x_126606 Int) (u_31 Int) (v_31 Int) (vs_12 list_405) (x_126516 Int) (x_126517 list_404))
	(=> (and (le_444 u_31 v_31) (path_5 x_126608 (cons_398 x_126516 x_126517) (cons_399 (pair_207 u_31 v_31) vs_12)) (unique_2 x_126609 x_126517) (length_71 x_126605 (cons_398 x_126516 x_126517)) (maximummaximum_6 x_126606 v_31 vs_12) (last_17 x_126516 x_126516 x_126517) (and_450 x_126607 x_126608 x_126609) (add_478 x_126605 (S_637 (S_637 Z_2765)) x_126606)) (tour_2 x_126607 (cons_398 x_126516 x_126517) (cons_399 (pair_207 u_31 v_31) vs_12)))))
(assert (forall ((x_126611 Int) (x_126612 Int) (x_126610 Int) (u_31 Int) (v_31 Int) (vs_12 list_405) (x_126516 Int) (x_126517 list_404))
	(=> (and (diseqInt x_126516 x_126610) (le_444 u_31 v_31) (length_71 x_126611 (cons_398 x_126516 x_126517)) (maximummaximum_6 x_126612 v_31 vs_12) (last_17 x_126610 x_126516 x_126517) (add_478 x_126611 (S_637 (S_637 Z_2765)) x_126612)) (tour_2 false_444 (cons_398 x_126516 x_126517) (cons_399 (pair_207 u_31 v_31) vs_12)))))
(assert (forall ((x_126710 Int) (x_126615 Int) (x_126616 Int) (u_31 Int) (v_31 Int) (vs_12 list_405) (x_126516 Int) (x_126517 list_404))
	(=> (and (diseqInt x_126615 x_126710) (le_444 u_31 v_31) (length_71 x_126615 (cons_398 x_126516 x_126517)) (maximummaximum_6 x_126616 v_31 vs_12) (last_17 x_126516 x_126516 x_126517) (add_478 x_126710 (S_637 (S_637 Z_2765)) x_126616)) (tour_2 false_444 (cons_398 x_126516 x_126517) (cons_399 (pair_207 u_31 v_31) vs_12)))))
(assert (forall ((x_126711 Int) (x_126619 Int) (x_126620 Int) (x_126618 Int) (u_31 Int) (v_31 Int) (vs_12 list_405) (x_126516 Int) (x_126517 list_404))
	(=> (and (diseqInt x_126516 x_126618) (diseqInt x_126619 x_126711) (le_444 u_31 v_31) (length_71 x_126619 (cons_398 x_126516 x_126517)) (maximummaximum_6 x_126620 v_31 vs_12) (last_17 x_126618 x_126516 x_126517) (add_478 x_126711 (S_637 (S_637 Z_2765)) x_126620)) (tour_2 false_444 (cons_398 x_126516 x_126517) (cons_399 (pair_207 u_31 v_31) vs_12)))))
(assert (forall ((x_126625 Bool_444) (x_126626 Bool_444) (x_126627 Bool_444) (x_126623 Int) (x_126624 Int) (u_31 Int) (v_31 Int) (vs_12 list_405) (x_126516 Int) (x_126517 list_404))
	(=> (and (gt_447 u_31 v_31) (path_5 x_126626 (cons_398 x_126516 x_126517) (cons_399 (pair_207 u_31 v_31) vs_12)) (unique_2 x_126627 x_126517) (length_71 x_126623 (cons_398 x_126516 x_126517)) (maximummaximum_6 x_126624 u_31 vs_12) (last_17 x_126516 x_126516 x_126517) (and_450 x_126625 x_126626 x_126627) (add_478 x_126623 (S_637 (S_637 Z_2765)) x_126624)) (tour_2 x_126625 (cons_398 x_126516 x_126517) (cons_399 (pair_207 u_31 v_31) vs_12)))))
(assert (forall ((x_126629 Int) (x_126630 Int) (x_126628 Int) (u_31 Int) (v_31 Int) (vs_12 list_405) (x_126516 Int) (x_126517 list_404))
	(=> (and (diseqInt x_126516 x_126628) (gt_447 u_31 v_31) (length_71 x_126629 (cons_398 x_126516 x_126517)) (maximummaximum_6 x_126630 u_31 vs_12) (last_17 x_126628 x_126516 x_126517) (add_478 x_126629 (S_637 (S_637 Z_2765)) x_126630)) (tour_2 false_444 (cons_398 x_126516 x_126517) (cons_399 (pair_207 u_31 v_31) vs_12)))))
(assert (forall ((x_126714 Int) (x_126633 Int) (x_126634 Int) (u_31 Int) (v_31 Int) (vs_12 list_405) (x_126516 Int) (x_126517 list_404))
	(=> (and (diseqInt x_126633 x_126714) (gt_447 u_31 v_31) (length_71 x_126633 (cons_398 x_126516 x_126517)) (maximummaximum_6 x_126634 u_31 vs_12) (last_17 x_126516 x_126516 x_126517) (add_478 x_126714 (S_637 (S_637 Z_2765)) x_126634)) (tour_2 false_444 (cons_398 x_126516 x_126517) (cons_399 (pair_207 u_31 v_31) vs_12)))))
(assert (forall ((x_126715 Int) (x_126637 Int) (x_126638 Int) (x_126636 Int) (u_31 Int) (v_31 Int) (vs_12 list_405) (x_126516 Int) (x_126517 list_404))
	(=> (and (diseqInt x_126516 x_126636) (diseqInt x_126637 x_126715) (gt_447 u_31 v_31) (length_71 x_126637 (cons_398 x_126516 x_126517)) (maximummaximum_6 x_126638 u_31 vs_12) (last_17 x_126636 x_126516 x_126517) (add_478 x_126715 (S_637 (S_637 Z_2765)) x_126638)) (tour_2 false_444 (cons_398 x_126516 x_126517) (cons_399 (pair_207 u_31 v_31) vs_12)))))
(assert (forall ((x_126516 Int) (x_126517 list_404))
	(tour_2 false_444 (cons_398 x_126516 x_126517) nil_466)))
(assert (forall ((z_2757 pair_206) (x_126519 list_405))
	(tour_2 false_444 nil_465 (cons_399 z_2757 x_126519))))
(assert (tour_2 true_444 nil_465 nil_466))
(declare-fun dodeca_35 (list_405 Int list_404) Bool)
(assert (forall ((x_126716 Int) (x_126717 Int) (x_126718 Int) (x_126719 Int) (x_126720 Int) (x_126721 Int) (x_126722 Int) (x_126644 list_405) (z_2758 Int) (x_126521 list_404) (x_126520 Int))
	(=> (and (dodeca_35 x_126644 x_126520 x_126521) (add_478 x_126716 x_126520 x_126520) (add_478 x_126717 x_126716 x_126520) (add_478 x_126718 x_126717 z_2758) (add_478 x_126719 x_126520 x_126520) (add_478 x_126720 x_126719 x_126520) (add_478 x_126721 (S_637 Z_2765) z_2758) (add_478 x_126722 x_126720 x_126721)) (dodeca_35 (cons_399 (pair_207 x_126718 x_126722) x_126644) x_126520 (cons_398 z_2758 x_126521)))))
(assert (forall ((x_126520 Int))
	(dodeca_35 nil_466 x_126520 nil_465)))
(declare-fun dodeca_36 (list_405 Int list_404) Bool)
(assert (forall ((x_126723 Int) (x_126724 Int) (x_126725 Int) (x_126726 Int) (x_126727 Int) (x_126647 list_405) (z_2759 Int) (x_126523 list_404) (x_126522 Int))
	(=> (and (dodeca_36 x_126647 x_126522 x_126523) (add_478 x_126723 x_126522 x_126522) (add_478 x_126724 x_126723 z_2759) (add_478 x_126725 x_126522 x_126522) (add_478 x_126726 x_126725 x_126522) (add_478 x_126727 x_126726 z_2759)) (dodeca_36 (cons_399 (pair_207 x_126724 x_126727) x_126647) x_126522 (cons_398 z_2759 x_126523)))))
(assert (forall ((x_126522 Int))
	(dodeca_36 nil_466 x_126522 nil_465)))
(declare-fun dodeca_37 (list_405 Int list_404) Bool)
(assert (forall ((x_126728 Int) (x_126729 Int) (x_126730 Int) (x_126731 Int) (x_126650 list_405) (z_2760 Int) (x_126525 list_404) (x_126524 Int))
	(=> (and (dodeca_37 x_126650 x_126524 x_126525) (add_478 x_126728 (S_637 Z_2765) z_2760) (add_478 x_126729 x_126524 x_126728) (add_478 x_126730 x_126524 x_126524) (add_478 x_126731 x_126730 z_2760)) (dodeca_37 (cons_399 (pair_207 x_126729 x_126731) x_126650) x_126524 (cons_398 z_2760 x_126525)))))
(assert (forall ((x_126524 Int))
	(dodeca_37 nil_466 x_126524 nil_465)))
(declare-fun dodeca_38 (list_405 Int list_404) Bool)
(assert (forall ((x_126732 Int) (x_126733 Int) (x_126734 Int) (x_126653 list_405) (z_2761 Int) (x_126527 list_404) (x_126526 Int))
	(=> (and (dodeca_38 x_126653 x_126526 x_126527) (add_478 x_126732 x_126526 z_2761) (add_478 x_126733 x_126526 x_126526) (add_478 x_126734 x_126733 z_2761)) (dodeca_38 (cons_399 (pair_207 x_126732 x_126734) x_126653) x_126526 (cons_398 z_2761 x_126527)))))
(assert (forall ((x_126526 Int))
	(dodeca_38 nil_466 x_126526 nil_465)))
(declare-fun dodeca_39 (list_405 Int list_404) Bool)
(assert (forall ((x_126735 Int) (x_126656 list_405) (z_2762 Int) (x_126529 list_404) (x_126528 Int))
	(=> (and (dodeca_39 x_126656 x_126528 x_126529) (add_478 x_126735 x_126528 z_2762)) (dodeca_39 (cons_399 (pair_207 z_2762 x_126735) x_126656) x_126528 (cons_398 z_2762 x_126529)))))
(assert (forall ((x_126528 Int))
	(dodeca_39 nil_466 x_126528 nil_465)))
(declare-fun dodeca_40 (list_405 list_404) Bool)
(assert (forall ((x_126736 Int) (x_126659 list_405) (y_3229 Int) (z_2763 list_404))
	(=> (and (dodeca_40 x_126659 z_2763) (add_478 x_126736 (S_637 Z_2765) y_3229)) (dodeca_40 (cons_399 (pair_207 y_3229 x_126736) x_126659) (cons_398 y_3229 z_2763)))))
(assert (dodeca_40 nil_466 nil_465))
(declare-fun x_126531 (list_405 list_405 list_405) Bool)
(assert (forall ((x_126662 list_405) (z_2764 pair_206) (xs_903 list_405) (y_3230 list_405))
	(=> (x_126531 x_126662 xs_903 y_3230) (x_126531 (cons_399 z_2764 x_126662) (cons_399 z_2764 xs_903) y_3230))))
(assert (forall ((x_126663 list_405))
	(x_126531 x_126663 nil_466 x_126663)))
(declare-fun dodeca_41 (list_405 Int) Bool)
(assert (dodeca_41 nil_466 Z_2765))
(assert (forall ((x_126749 Int) (x_126746 Int) (x_126747 Int) (x_126748 Int) (x_126740 Int) (x_126741 Int) (x_126742 Int) (x_126743 Int) (x_126744 Int) (x_126745 Int) (x_126739 Int) (x_126738 Int) (x_126737 Int) (x_126665 list_405) (x_126666 list_404) (x_126667 list_405) (x_126668 list_404) (x_126669 list_405) (x_126670 list_404) (x_126671 list_405) (x_126672 list_404) (x_126673 list_405) (x_126674 list_404) (x_126675 list_405) (x_126676 list_404) (x_126677 list_405) (x_126678 list_405) (x_126679 list_405) (x_126680 list_405) (x_126681 list_405) (x_126533 Int))
	(=> (and (diseqInt x_126533 Z_2765) (primEnumFromTo_12 x_126666 Z_2765 x_126737) (dodeca_40 x_126667 x_126666) (primEnumFromTo_12 x_126668 Z_2765 x_126533) (dodeca_39 x_126669 x_126533 x_126668) (primEnumFromTo_12 x_126670 Z_2765 x_126533) (dodeca_38 x_126671 x_126533 x_126670) (primEnumFromTo_12 x_126672 Z_2765 x_126738) (dodeca_37 x_126673 x_126533 x_126672) (primEnumFromTo_12 x_126674 Z_2765 x_126533) (dodeca_36 x_126675 x_126533 x_126674) (primEnumFromTo_12 x_126676 Z_2765 x_126739) (dodeca_35 x_126677 x_126533 x_126676) (x_126531 x_126678 x_126675 (cons_399 (pair_207 x_126743 x_126745) x_126677)) (x_126531 x_126679 (cons_399 (pair_207 x_126533 x_126748) x_126673) x_126678) (x_126531 x_126680 x_126671 x_126679) (x_126531 x_126681 x_126669 x_126680) (x_126531 x_126665 (cons_399 (pair_207 x_126749 Z_2765) x_126667) x_126681) (minus_465 x_126749 x_126533 (S_637 Z_2765)) (add_478 x_126746 x_126533 x_126533) (minus_465 x_126747 x_126533 (S_637 Z_2765)) (add_478 x_126748 x_126746 x_126747) (add_478 x_126740 x_126533 x_126533) (add_478 x_126741 x_126740 x_126533) (minus_465 x_126742 x_126533 (S_637 Z_2765)) (add_478 x_126743 x_126741 x_126742) (add_478 x_126744 x_126533 x_126533) (add_478 x_126745 x_126744 x_126533) (minus_465 x_126739 x_126533 (S_637 Z_2765)) (minus_465 x_126738 x_126533 (S_637 Z_2765)) (minus_465 x_126737 x_126533 (S_637 Z_2765))) (dodeca_41 x_126665 x_126533))))
(assert (forall ((x_126762 Int) (x_126759 Int) (x_126760 Int) (x_126761 Int) (x_126753 Int) (x_126754 Int) (x_126755 Int) (x_126756 Int) (x_126757 Int) (x_126758 Int) (x_126752 Int) (x_126751 Int) (x_126750 Int) (x_126683 list_404) (x_126684 list_405) (x_126685 list_404) (x_126686 list_405) (x_126687 list_404) (x_126688 list_405) (x_126689 list_404) (x_126690 list_405) (x_126691 list_404) (x_126692 list_405) (x_126693 list_404) (x_126694 list_405) (x_126695 list_405) (x_126696 list_405) (x_126697 list_405) (x_126698 list_405) (x_126699 list_405) (p_615 list_404))
	(=> (and true (primEnumFromTo_12 x_126683 Z_2765 x_126750) (dodeca_40 x_126684 x_126683) (primEnumFromTo_12 x_126685 Z_2765 (S_637 (S_637 (S_637 Z_2765)))) (dodeca_39 x_126686 (S_637 (S_637 (S_637 Z_2765))) x_126685) (primEnumFromTo_12 x_126687 Z_2765 (S_637 (S_637 (S_637 Z_2765)))) (dodeca_38 x_126688 (S_637 (S_637 (S_637 Z_2765))) x_126687) (primEnumFromTo_12 x_126689 Z_2765 x_126751) (dodeca_37 x_126690 (S_637 (S_637 (S_637 Z_2765))) x_126689) (primEnumFromTo_12 x_126691 Z_2765 (S_637 (S_637 (S_637 Z_2765)))) (dodeca_36 x_126692 (S_637 (S_637 (S_637 Z_2765))) x_126691) (primEnumFromTo_12 x_126693 Z_2765 x_126752) (dodeca_35 x_126694 (S_637 (S_637 (S_637 Z_2765))) x_126693) (x_126531 x_126695 x_126692 (cons_399 (pair_207 x_126756 x_126758) x_126694)) (x_126531 x_126696 (cons_399 (pair_207 (S_637 (S_637 (S_637 Z_2765))) x_126761) x_126690) x_126695) (x_126531 x_126697 x_126688 x_126696) (x_126531 x_126698 x_126686 x_126697) (x_126531 x_126699 (cons_399 (pair_207 x_126762 Z_2765) x_126684) x_126698) (tour_2 true_444 p_615 x_126699) (minus_465 x_126762 (S_637 (S_637 (S_637 Z_2765))) (S_637 Z_2765)) (add_478 x_126759 (S_637 (S_637 (S_637 Z_2765))) (S_637 (S_637 (S_637 Z_2765)))) (minus_465 x_126760 (S_637 (S_637 (S_637 Z_2765))) (S_637 Z_2765)) (add_478 x_126761 x_126759 x_126760) (add_478 x_126753 (S_637 (S_637 (S_637 Z_2765))) (S_637 (S_637 (S_637 Z_2765)))) (add_478 x_126754 x_126753 (S_637 (S_637 (S_637 Z_2765)))) (minus_465 x_126755 (S_637 (S_637 (S_637 Z_2765))) (S_637 Z_2765)) (add_478 x_126756 x_126754 x_126755) (add_478 x_126757 (S_637 (S_637 (S_637 Z_2765))) (S_637 (S_637 (S_637 Z_2765)))) (add_478 x_126758 x_126757 (S_637 (S_637 (S_637 Z_2765)))) (minus_465 x_126752 (S_637 (S_637 (S_637 Z_2765))) (S_637 Z_2765)) (minus_465 x_126751 (S_637 (S_637 (S_637 Z_2765))) (S_637 Z_2765)) (minus_465 x_126750 (S_637 (S_637 (S_637 Z_2765))) (S_637 Z_2765))) false)))
(check-sat)
