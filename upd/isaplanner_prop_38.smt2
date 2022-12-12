
(set-logic HORN)
(define-fun Z_385 () Int 0)
(define-fun S_137 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_71 0)) (((false_71) (true_71))))
(declare-fun diseqBool_29 (Bool_71 Bool_71) Bool)
(declare-fun isfalse_29 (Bool_71) Bool)
(declare-fun istrue_29 (Bool_71) Bool)
(assert (isfalse_29 false_71))
(assert (istrue_29 true_71))
(assert (diseqBool_29 false_71 true_71))
(assert (diseqBool_29 true_71 false_71))
(declare-fun and_71 (Bool_71 Bool_71 Bool_71) Bool)
(declare-fun or_71 (Bool_71 Bool_71 Bool_71) Bool)
(declare-fun hence_71 (Bool_71 Bool_71 Bool_71) Bool)
(declare-fun not_71 (Bool_71 Bool_71) Bool)
(assert (and_71 false_71 false_71 false_71))
(assert (and_71 false_71 true_71 false_71))
(assert (and_71 false_71 false_71 true_71))
(assert (and_71 true_71 true_71 true_71))
(assert (or_71 false_71 false_71 false_71))
(assert (or_71 true_71 true_71 false_71))
(assert (or_71 true_71 false_71 true_71))
(assert (or_71 true_71 true_71 true_71))
(assert (hence_71 true_71 false_71 false_71))
(assert (hence_71 false_71 true_71 false_71))
(assert (hence_71 true_71 false_71 true_71))
(assert (hence_71 true_71 true_71 true_71))
(assert (not_71 true_71 false_71))
(assert (not_71 false_71 true_71))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun projS_133 (Int Int) Bool)
(declare-fun isZ_137 (Int) Bool)
(declare-fun isS_137 (Int) Bool)
(assert (forall ((x_3758 Int))
	(projS_133 x_3758 (S_137 x_3758))))
(assert (isZ_137 Z_385))
(assert (forall ((x_3760 Int))
	(isS_137 (S_137 x_3760))))
(assert (forall ((x_3761 Int))
	(diseqInt Z_385 (S_137 x_3761))))
(assert (forall ((x_3762 Int))
	(diseqInt (S_137 x_3762) Z_385)))
(assert (forall ((x_3763 Int) (x_3764 Int))
	(=> (diseqInt x_3763 x_3764) (diseqInt (S_137 x_3763) (S_137 x_3764)))))
(declare-datatypes ((list_61 0)) (((nil_61) (cons_61 (head_122 Int) (tail_122 list_61)))))
(declare-fun diseqlist_61 (list_61 list_61) Bool)
(declare-fun head_123 (Int list_61) Bool)
(declare-fun tail_123 (list_61 list_61) Bool)
(declare-fun isnil_61 (list_61) Bool)
(declare-fun iscons_61 (list_61) Bool)
(assert (forall ((x_3766 Int) (x_3767 list_61))
	(head_123 x_3766 (cons_61 x_3766 x_3767))))
(assert (forall ((x_3766 Int) (x_3767 list_61))
	(tail_123 x_3767 (cons_61 x_3766 x_3767))))
(assert (isnil_61 nil_61))
(assert (forall ((x_3769 Int) (x_3770 list_61))
	(iscons_61 (cons_61 x_3769 x_3770))))
(assert (forall ((x_3771 Int) (x_3772 list_61))
	(diseqlist_61 nil_61 (cons_61 x_3771 x_3772))))
(assert (forall ((x_3773 Int) (x_3774 list_61))
	(diseqlist_61 (cons_61 x_3773 x_3774) nil_61)))
(assert (forall ((x_3775 Int) (x_3776 list_61) (x_3777 Int) (x_3778 list_61))
	(=> (diseqInt x_3775 x_3777) (diseqlist_61 (cons_61 x_3775 x_3776) (cons_61 x_3777 x_3778)))))
(assert (forall ((x_3775 Int) (x_3776 list_61) (x_3777 Int) (x_3778 list_61))
	(=> (diseqlist_61 x_3776 x_3778) (diseqlist_61 (cons_61 x_3775 x_3776) (cons_61 x_3777 x_3778)))))
(declare-fun x_3730 (Bool_71 Int Int) Bool)
(assert (forall ((x_3736 Bool_71) (y_305 Int) (x_3732 Int))
	(=> (x_3730 x_3736 x_3732 y_305) (x_3730 x_3736 (S_137 x_3732) (S_137 y_305)))))
(assert (forall ((x_3732 Int))
	(x_3730 false_71 (S_137 x_3732) Z_385)))
(assert (forall ((z_386 Int))
	(x_3730 false_71 Z_385 (S_137 z_386))))
(assert (x_3730 true_71 Z_385 Z_385))
(declare-fun count_8 (Int Int list_61) Bool)
(assert (forall ((x_3743 Int) (z_387 Int) (ys_28 list_61) (x_3733 Int))
	(=> (and (count_8 x_3743 x_3733 ys_28) (x_3730 true_71 x_3733 z_387)) (count_8 (S_137 x_3743) x_3733 (cons_61 z_387 ys_28)))))
(assert (forall ((x_3745 Int) (z_387 Int) (ys_28 list_61) (x_3733 Int))
	(=> (and (count_8 x_3745 x_3733 ys_28) (x_3730 false_71 x_3733 z_387)) (count_8 x_3745 x_3733 (cons_61 z_387 ys_28)))))
(assert (forall ((x_3733 Int))
	(count_8 Z_385 x_3733 nil_61)))
(declare-fun x_3734 (list_61 list_61 list_61) Bool)
(assert (forall ((x_3749 list_61) (z_388 Int) (xs_114 list_61) (y_307 list_61))
	(=> (x_3734 x_3749 xs_114 y_307) (x_3734 (cons_61 z_388 x_3749) (cons_61 z_388 xs_114) y_307))))
(assert (forall ((x_3750 list_61))
	(x_3734 x_3750 nil_61 x_3750)))
(assert (forall ((x_3751 list_61) (x_3752 Int) (x_3753 Int) (n_28 Int) (xs_115 list_61))
	(=> (and true (diseqInt x_3752 (S_137 x_3753)) (x_3734 x_3751 xs_115 (cons_61 n_28 nil_61)) (count_8 x_3752 n_28 x_3751) (count_8 x_3753 n_28 xs_115)) false)))
(check-sat)
