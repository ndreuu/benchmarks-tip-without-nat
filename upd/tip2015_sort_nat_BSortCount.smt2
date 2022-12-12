
(set-logic HORN)
(define-fun zero_52 () Int 0)
(define-fun succ_51 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_166 0)) (((false_166) (true_166))))
(declare-fun diseqBool_70 (Bool_166 Bool_166) Bool)
(declare-fun isfalse_70 (Bool_166) Bool)
(declare-fun istrue_70 (Bool_166) Bool)
(assert (isfalse_70 false_166))
(assert (istrue_70 true_166))
(assert (diseqBool_70 false_166 true_166))
(assert (diseqBool_70 true_166 false_166))
(declare-fun and_166 (Bool_166 Bool_166 Bool_166) Bool)
(declare-fun or_168 (Bool_166 Bool_166 Bool_166) Bool)
(declare-fun hence_166 (Bool_166 Bool_166 Bool_166) Bool)
(declare-fun not_167 (Bool_166 Bool_166) Bool)
(assert (and_166 false_166 false_166 false_166))
(assert (and_166 false_166 true_166 false_166))
(assert (and_166 false_166 false_166 true_166))
(assert (and_166 true_166 true_166 true_166))
(assert (or_168 false_166 false_166 false_166))
(assert (or_168 true_166 true_166 false_166))
(assert (or_168 true_166 false_166 true_166))
(assert (or_168 true_166 true_166 true_166))
(assert (hence_166 true_166 false_166 false_166))
(assert (hence_166 false_166 true_166 false_166))
(assert (hence_166 true_166 false_166 true_166))
(assert (hence_166 true_166 true_166 true_166))
(assert (not_167 true_166 false_166))
(assert (not_167 false_166 true_166))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_147 (Int Int) Bool)
(declare-fun iszero_51 (Int) Bool)
(declare-fun issucc_51 (Int) Bool)
(assert (forall ((x_25648 Int))
	(p_147 x_25648 (succ_51 x_25648))))
(assert (iszero_51 zero_52))
(assert (forall ((x_25650 Int))
	(issucc_51 (succ_51 x_25650))))
(assert (forall ((x_25651 Int))
	(diseqInt zero_52 (succ_51 x_25651))))
(assert (forall ((x_25652 Int))
	(diseqInt (succ_51 x_25652) zero_52)))
(assert (forall ((x_25653 Int) (x_25654 Int))
	(=> (diseqInt x_25653 x_25654) (diseqInt (succ_51 x_25653) (succ_51 x_25654)))))
(declare-datatypes ((list_119 0)) (((nil_132) (cons_119 (head_238 Int) (tail_238 list_119)))))
(declare-fun diseqlist_119 (list_119 list_119) Bool)
(declare-fun head_239 (Int list_119) Bool)
(declare-fun tail_239 (list_119 list_119) Bool)
(declare-fun isnil_132 (list_119) Bool)
(declare-fun iscons_119 (list_119) Bool)
(assert (forall ((x_25656 Int) (x_25657 list_119))
	(head_239 x_25656 (cons_119 x_25656 x_25657))))
(assert (forall ((x_25656 Int) (x_25657 list_119))
	(tail_239 x_25657 (cons_119 x_25656 x_25657))))
(assert (isnil_132 nil_132))
(assert (forall ((x_25659 Int) (x_25660 list_119))
	(iscons_119 (cons_119 x_25659 x_25660))))
(assert (forall ((x_25661 Int) (x_25662 list_119))
	(diseqlist_119 nil_132 (cons_119 x_25661 x_25662))))
(assert (forall ((x_25663 Int) (x_25664 list_119))
	(diseqlist_119 (cons_119 x_25663 x_25664) nil_132)))
(assert (forall ((x_25665 Int) (x_25666 list_119) (x_25667 Int) (x_25668 list_119))
	(=> (diseqInt x_25665 x_25667) (diseqlist_119 (cons_119 x_25665 x_25666) (cons_119 x_25667 x_25668)))))
(assert (forall ((x_25665 Int) (x_25666 list_119) (x_25667 Int) (x_25668 list_119))
	(=> (diseqlist_119 x_25666 x_25668) (diseqlist_119 (cons_119 x_25665 x_25666) (cons_119 x_25667 x_25668)))))
(declare-fun plus_51 (Int Int Int) Bool)
(assert (forall ((x_25564 Int) (z_938 Int) (y_961 Int))
	(=> (plus_51 x_25564 z_938 y_961) (plus_51 (succ_51 x_25564) (succ_51 z_938) y_961))))
(assert (forall ((x_25565 Int))
	(plus_51 x_25565 zero_52 x_25565)))
(declare-fun leq_18 (Bool_166 Int Int) Bool)
(assert (forall ((x_25566 Bool_166) (x_25535 Int) (z_939 Int))
	(=> (leq_18 x_25566 z_939 x_25535) (leq_18 x_25566 (succ_51 z_939) (succ_51 x_25535)))))
(assert (forall ((z_939 Int))
	(leq_18 false_166 (succ_51 z_939) zero_52)))
(assert (forall ((y_962 Int))
	(leq_18 true_166 zero_52 y_962)))
(declare-fun sort_15 (list_119 Int Int) Bool)
(assert (forall ((x_25536 Int) (y_963 Int))
	(=> (leq_18 true_166 x_25536 y_963) (sort_15 (cons_119 x_25536 (cons_119 y_963 nil_132)) x_25536 y_963))))
(assert (forall ((x_25536 Int) (y_963 Int))
	(=> (leq_18 false_166 x_25536 y_963) (sort_15 (cons_119 y_963 (cons_119 x_25536 nil_132)) x_25536 y_963))))
(declare-fun evens_5 (list_119 list_119) Bool)
(declare-fun odds_5 (list_119 list_119) Bool)
(assert (forall ((x_25575 list_119) (y_964 Int) (xs_304 list_119))
	(=> (odds_5 x_25575 xs_304) (evens_5 (cons_119 y_964 x_25575) (cons_119 y_964 xs_304)))))
(assert (evens_5 nil_132 nil_132))
(assert (forall ((x_25577 list_119) (y_965 Int) (xs_305 list_119))
	(=> (evens_5 x_25577 xs_305) (odds_5 x_25577 (cons_119 y_965 xs_305)))))
(assert (odds_5 nil_132 nil_132))
(declare-fun count_19 (Int Int list_119) Bool)
(assert (forall ((x_25580 Int) (x_25581 Int) (ys_92 list_119) (x_25539 Int))
	(=> (and (count_19 x_25581 x_25539 ys_92) (plus_51 x_25580 (succ_51 zero_52) x_25581)) (count_19 x_25580 x_25539 (cons_119 x_25539 ys_92)))))
(assert (forall ((x_25583 Int) (z_940 Int) (ys_92 list_119) (x_25539 Int))
	(=> (and (diseqInt x_25539 z_940) (count_19 x_25583 x_25539 ys_92)) (count_19 x_25583 x_25539 (cons_119 z_940 ys_92)))))
(assert (forall ((x_25539 Int))
	(count_19 zero_52 x_25539 nil_132)))
(declare-fun x_25540 (list_119 list_119 list_119) Bool)
(assert (forall ((x_25587 list_119) (z_941 Int) (xs_306 list_119) (y_967 list_119))
	(=> (x_25540 x_25587 xs_306 y_967) (x_25540 (cons_119 z_941 x_25587) (cons_119 z_941 xs_306) y_967))))
(assert (forall ((x_25588 list_119))
	(x_25540 x_25588 nil_132 x_25588)))
(declare-fun pairs_4 (list_119 list_119 list_119) Bool)
(assert (forall ((x_25589 list_119) (x_25590 list_119) (x_25591 list_119) (x_25544 Int) (x_25545 list_119) (z_942 Int) (x_25543 list_119))
	(=> (and (sort_15 x_25590 z_942 x_25544) (pairs_4 x_25591 x_25543 x_25545) (x_25540 x_25589 x_25590 x_25591)) (pairs_4 x_25589 (cons_119 z_942 x_25543) (cons_119 x_25544 x_25545)))))
(assert (forall ((z_942 Int) (x_25543 list_119))
	(pairs_4 (cons_119 z_942 x_25543) (cons_119 z_942 x_25543) nil_132)))
(assert (forall ((x_25594 list_119))
	(pairs_4 x_25594 nil_132 x_25594)))
(declare-fun stitch_4 (list_119 list_119 list_119) Bool)
(assert (forall ((x_25596 list_119) (z_943 Int) (xs_307 list_119) (y_969 list_119))
	(=> (pairs_4 x_25596 xs_307 y_969) (stitch_4 (cons_119 z_943 x_25596) (cons_119 z_943 xs_307) y_969))))
(assert (forall ((x_25597 list_119))
	(stitch_4 x_25597 nil_132 x_25597)))
(declare-fun bmerge_4 (list_119 list_119 list_119) Bool)
(assert (forall ((x_25598 list_119) (x_25599 list_119) (x_25600 list_119) (x_25601 list_119) (x_25602 list_119) (x_25603 list_119) (x_25551 Int) (x_25552 list_119) (fail_8 list_119) (x_25549 Int) (x_25550 list_119) (z_944 Int))
	(=> (and (evens_5 x_25598 (cons_119 z_944 (cons_119 x_25551 x_25552))) (evens_5 x_25599 (cons_119 x_25549 x_25550)) (bmerge_4 x_25600 x_25598 x_25599) (odds_5 x_25601 (cons_119 z_944 (cons_119 x_25551 x_25552))) (odds_5 x_25602 (cons_119 x_25549 x_25550)) (bmerge_4 x_25603 x_25601 x_25602) (stitch_4 fail_8 x_25600 x_25603)) (bmerge_4 fail_8 (cons_119 z_944 (cons_119 x_25551 x_25552)) (cons_119 x_25549 x_25550)))))
(assert (forall ((x_25606 list_119) (x_25607 list_119) (x_25608 list_119) (x_25609 list_119) (x_25610 list_119) (x_25611 list_119) (x_25553 Int) (x_25554 list_119) (fail_8 list_119) (x_25549 Int) (z_944 Int))
	(=> (and (evens_5 x_25606 (cons_119 z_944 nil_132)) (evens_5 x_25607 (cons_119 x_25549 (cons_119 x_25553 x_25554))) (bmerge_4 x_25608 x_25606 x_25607) (odds_5 x_25609 (cons_119 z_944 nil_132)) (odds_5 x_25610 (cons_119 x_25549 (cons_119 x_25553 x_25554))) (bmerge_4 x_25611 x_25609 x_25610) (stitch_4 fail_8 x_25608 x_25611)) (bmerge_4 fail_8 (cons_119 z_944 nil_132) (cons_119 x_25549 (cons_119 x_25553 x_25554))))))
(assert (forall ((x_25621 list_119) (x_25614 list_119) (x_25615 list_119) (x_25616 list_119) (x_25617 list_119) (x_25618 list_119) (x_25619 list_119) (fail_8 list_119) (x_25549 Int) (z_944 Int))
	(=> (and (sort_15 x_25621 z_944 x_25549) (evens_5 x_25614 (cons_119 z_944 nil_132)) (evens_5 x_25615 (cons_119 x_25549 nil_132)) (bmerge_4 x_25616 x_25614 x_25615) (odds_5 x_25617 (cons_119 z_944 nil_132)) (odds_5 x_25618 (cons_119 x_25549 nil_132)) (bmerge_4 x_25619 x_25617 x_25618) (stitch_4 fail_8 x_25616 x_25619)) (bmerge_4 x_25621 (cons_119 z_944 nil_132) (cons_119 x_25549 nil_132)))))
(assert (forall ((z_944 Int) (x_25548 list_119))
	(bmerge_4 (cons_119 z_944 x_25548) (cons_119 z_944 x_25548) nil_132)))
(assert (forall ((y_970 list_119))
	(bmerge_4 nil_132 nil_132 y_970)))
(declare-fun bsort_4 (list_119 list_119) Bool)
(assert (forall ((x_25625 list_119) (x_25626 list_119) (x_25627 list_119) (x_25628 list_119) (x_25629 list_119) (x_25556 Int) (x_25557 list_119) (y_971 Int))
	(=> (and (evens_5 x_25626 (cons_119 y_971 (cons_119 x_25556 x_25557))) (bsort_4 x_25627 x_25626) (odds_5 x_25628 (cons_119 y_971 (cons_119 x_25556 x_25557))) (bsort_4 x_25629 x_25628) (bmerge_4 x_25625 x_25627 x_25629)) (bsort_4 x_25625 (cons_119 y_971 (cons_119 x_25556 x_25557))))))
(assert (forall ((y_971 Int))
	(bsort_4 (cons_119 y_971 nil_132) (cons_119 y_971 nil_132))))
(assert (bsort_4 nil_132 nil_132))
(assert (forall ((x_25633 Int) (x_25634 Int) (x_25635 Int) (x_25636 Int) (x_25558 Int) (y_972 Int) (z_946 Int))
	(=> (and true (diseqInt x_25634 x_25636) (plus_51 x_25633 y_972 z_946) (plus_51 x_25634 x_25558 x_25633) (plus_51 x_25635 x_25558 y_972) (plus_51 x_25636 x_25635 z_946)) false)))
(assert (forall ((x_25637 Int) (x_25638 Int) (x_25559 Int) (y_973 Int))
	(=> (and true (diseqInt x_25637 x_25638) (plus_51 x_25637 x_25559 y_973) (plus_51 x_25638 y_973 x_25559)) false)))
(assert (forall ((x_25639 Int) (x_25560 Int))
	(=> (and true (diseqInt x_25639 x_25560) (plus_51 x_25639 x_25560 zero_52)) false)))
(assert (forall ((x_25640 Int) (x_25561 Int))
	(=> (and true (diseqInt x_25640 x_25561) (plus_51 x_25640 zero_52 x_25561)) false)))
(assert (forall ((x_25641 list_119) (x_25642 Int) (x_25643 Int) (x_25562 Int) (xs_308 list_119))
	(=> (and true (diseqInt x_25642 x_25643) (bsort_4 x_25641 xs_308) (count_19 x_25642 x_25562 x_25641) (count_19 x_25643 x_25562 xs_308)) false)))
(check-sat)
