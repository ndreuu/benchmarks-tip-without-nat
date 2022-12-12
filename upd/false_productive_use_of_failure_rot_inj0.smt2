
(set-logic HORN)
(define-fun S_638 ((x Int)) Int (+ x 1))
(define-fun Z_2767 () Int 0)
(declare-fun diseqInt (Int Int) Bool)
(declare-fun projS_259 (Int Int) Bool)
(declare-fun isS_574 (Int) Bool)
(declare-fun isZ_574 (Int) Bool)
(assert (forall ((x_126840 Int))
	(projS_259 x_126840 (S_638 x_126840))))
(assert (forall ((x_126843 Int))
	(isS_574 (S_638 x_126843))))
(assert (isZ_574 Z_2767))
(assert (forall ((x_126844 Int))
	(diseqInt (S_638 x_126844) Z_2767)))
(assert (forall ((x_126845 Int))
	(diseqInt Z_2767 (S_638 x_126845))))
(assert (forall ((x_126846 Int) (x_126847 Int))
	(=> (diseqInt x_126846 x_126847) (diseqInt (S_638 x_126846) (S_638 x_126847)))))
(declare-datatypes ((list_406 0)) (((nil_467) (cons_400 (head_800 Int) (tail_806 list_406)))))
(declare-fun diseqlist_400 (list_406 list_406) Bool)
(declare-fun head_801 (Int list_406) Bool)
(declare-fun tail_807 (list_406 list_406) Bool)
(declare-fun isnil_467 (list_406) Bool)
(declare-fun iscons_400 (list_406) Bool)
(assert (forall ((x_126849 Int) (x_126850 list_406))
	(head_801 x_126849 (cons_400 x_126849 x_126850))))
(assert (forall ((x_126849 Int) (x_126850 list_406))
	(tail_807 x_126850 (cons_400 x_126849 x_126850))))
(assert (isnil_467 nil_467))
(assert (forall ((x_126852 Int) (x_126853 list_406))
	(iscons_400 (cons_400 x_126852 x_126853))))
(assert (forall ((x_126854 Int) (x_126855 list_406))
	(diseqlist_400 nil_467 (cons_400 x_126854 x_126855))))
(assert (forall ((x_126856 Int) (x_126857 list_406))
	(diseqlist_400 (cons_400 x_126856 x_126857) nil_467)))
(assert (forall ((x_126858 Int) (x_126859 list_406) (x_126860 Int) (x_126861 list_406))
	(=> (diseqInt x_126858 x_126860) (diseqlist_400 (cons_400 x_126858 x_126859) (cons_400 x_126860 x_126861)))))
(assert (forall ((x_126858 Int) (x_126859 list_406) (x_126860 Int) (x_126861 list_406))
	(=> (diseqlist_400 x_126859 x_126861) (diseqlist_400 (cons_400 x_126858 x_126859) (cons_400 x_126860 x_126861)))))
(declare-fun x_126824 (list_406 list_406 list_406) Bool)
(assert (forall ((x_126830 list_406) (z_2768 Int) (xs_904 list_406) (y_3232 list_406))
	(=> (x_126824 x_126830 xs_904 y_3232) (x_126824 (cons_400 z_2768 x_126830) (cons_400 z_2768 xs_904) y_3232))))
(assert (forall ((x_126831 list_406))
	(x_126824 x_126831 nil_467 x_126831)))
(declare-fun rotate_13 (list_406 Int list_406) Bool)
(assert (forall ((x_126832 list_406))
	(rotate_13 x_126832 Z_2767 x_126832)))
(assert (forall ((x_126833 list_406) (x_126834 list_406) (x_126827 Int) (x_126828 list_406) (z_2769 Int))
	(=> (and (x_126824 x_126834 x_126828 (cons_400 x_126827 nil_467)) (rotate_13 x_126833 z_2769 x_126834)) (rotate_13 x_126833 (S_638 z_2769) (cons_400 x_126827 x_126828)))))
(assert (forall ((z_2769 Int))
	(rotate_13 nil_467 (S_638 z_2769) nil_467)))
(assert (forall ((x_126837 list_406) (n_119 Int) (m_98 Int) (ys_246 list_406) (xs_905 list_406))
	(=> (and true (diseqInt n_119 m_98) (rotate_13 x_126837 n_119 xs_905) (rotate_13 x_126837 m_98 ys_246)) false)))
(check-sat)
