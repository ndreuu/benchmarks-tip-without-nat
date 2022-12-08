
(set-logic HORN)
(declare-fun Z_888 () Int)
(declare-fun S_244 (Int) Int)
(declare-fun diseqInt (Int Int) Bool)
(declare-fun unS_313 (Int Int) Bool)
(declare-fun isZ_229 (Int) Bool)
(declare-fun isS_229 (Int) Bool)
(assert (forall ((x_22790 Int))
	(unS_313 x_22790 (S_244 x_22790))))
(assert (isZ_229 Z_888))
(assert (forall ((x_22792 Int))
	(isS_229 (S_244 x_22792))))
(assert (forall ((x_22793 Int))
	(diseqInt Z_888 (S_244 x_22793))))
(assert (forall ((x_22794 Int))
	(diseqInt (S_244 x_22794) Z_888)))
(assert (forall ((x_22795 Int) (x_22796 Int))
	(=> (diseqInt x_22795 x_22796) (diseqInt (S_244 x_22795) (S_244 x_22796)))))
(declare-fun add_166 (Int Int Int) Bool)
(declare-fun minus_160 (Int Int Int) Bool)
(declare-fun le_156 (Int Int) Bool)
(declare-fun ge_156 (Int Int) Bool)
(declare-fun lt_162 (Int Int) Bool)
(declare-fun gt_157 (Int Int) Bool)
(declare-fun mult_156 (Int Int Int) Bool)
(declare-fun div_156 (Int Int Int) Bool)
(declare-fun mod_156 (Int Int Int) Bool)
(assert (forall ((y_902 Int))
	(add_166 y_902 Z_888 y_902)))
(assert (forall ((x_22783 Int) (y_902 Int) (r_186 Int))
	(=> (add_166 r_186 x_22783 y_902) (add_166 (S_244 r_186) (S_244 x_22783) y_902))))
(assert (forall ((y_902 Int))
	(minus_160 Z_888 Z_888 y_902)))
(assert (forall ((x_22783 Int) (y_902 Int) (r_186 Int))
	(=> (minus_160 r_186 x_22783 y_902) (minus_160 (S_244 r_186) (S_244 x_22783) y_902))))
(assert (forall ((y_902 Int))
	(le_156 Z_888 y_902)))
(assert (forall ((x_22783 Int) (y_902 Int))
	(=> (le_156 x_22783 y_902) (le_156 (S_244 x_22783) (S_244 y_902)))))
(assert (forall ((y_902 Int))
	(ge_156 y_902 Z_888)))
(assert (forall ((x_22783 Int) (y_902 Int))
	(=> (ge_156 x_22783 y_902) (ge_156 (S_244 x_22783) (S_244 y_902)))))
(assert (forall ((y_902 Int))
	(lt_162 Z_888 (S_244 y_902))))
(assert (forall ((x_22783 Int) (y_902 Int))
	(=> (lt_162 x_22783 y_902) (lt_162 (S_244 x_22783) (S_244 y_902)))))
(assert (forall ((y_902 Int))
	(gt_157 (S_244 y_902) Z_888)))
(assert (forall ((x_22783 Int) (y_902 Int))
	(=> (gt_157 x_22783 y_902) (gt_157 (S_244 x_22783) (S_244 y_902)))))
(assert (forall ((y_902 Int))
	(mult_156 Z_888 Z_888 y_902)))
(assert (forall ((x_22783 Int) (y_902 Int) (r_186 Int) (z_889 Int))
	(=> (and (mult_156 r_186 x_22783 y_902) (add_166 z_889 r_186 y_902)) (mult_156 z_889 (S_244 x_22783) y_902))))
(assert (forall ((x_22783 Int) (y_902 Int))
	(=> (lt_162 x_22783 y_902) (div_156 Z_888 x_22783 y_902))))
(assert (forall ((x_22783 Int) (y_902 Int) (r_186 Int) (z_889 Int))
	(=> (and (ge_156 x_22783 y_902) (minus_160 z_889 x_22783 y_902) (div_156 r_186 z_889 y_902)) (div_156 (S_244 r_186) x_22783 y_902))))
(assert (forall ((x_22783 Int) (y_902 Int))
	(=> (lt_162 x_22783 y_902) (mod_156 x_22783 x_22783 y_902))))
(assert (forall ((x_22783 Int) (y_902 Int) (r_186 Int) (z_889 Int))
	(=> (and (ge_156 x_22783 y_902) (minus_160 z_889 x_22783 y_902) (mod_156 r_186 z_889 y_902)) (mod_156 r_186 x_22783 y_902))))
(declare-datatypes ((list_112 0)) (((nil_124) (cons_112 (head_224 Int) (tail_224 list_112)))))
(declare-fun diseqlist_112 (list_112 list_112) Bool)
(declare-fun head_225 (Int list_112) Bool)
(declare-fun tail_225 (list_112 list_112) Bool)
(declare-fun isnil_124 (list_112) Bool)
(declare-fun iscons_112 (list_112) Bool)
(assert (forall ((x_22798 Int) (x_22799 list_112))
	(head_225 x_22798 (cons_112 x_22798 x_22799))))
(assert (forall ((x_22798 Int) (x_22799 list_112))
	(tail_225 x_22799 (cons_112 x_22798 x_22799))))
(assert (isnil_124 nil_124))
(assert (forall ((x_22801 Int) (x_22802 list_112))
	(iscons_112 (cons_112 x_22801 x_22802))))
(assert (forall ((x_22803 Int) (x_22804 list_112))
	(diseqlist_112 nil_124 (cons_112 x_22803 x_22804))))
(assert (forall ((x_22805 Int) (x_22806 list_112))
	(diseqlist_112 (cons_112 x_22805 x_22806) nil_124)))
(assert (forall ((x_22807 Int) (x_22808 list_112) (x_22809 Int) (x_22810 list_112))
	(=> (diseqInt x_22807 x_22809) (diseqlist_112 (cons_112 x_22807 x_22808) (cons_112 x_22809 x_22810)))))
(assert (forall ((x_22807 Int) (x_22808 list_112) (x_22809 Int) (x_22810 list_112))
	(=> (diseqlist_112 x_22808 x_22810) (diseqlist_112 (cons_112 x_22807 x_22808) (cons_112 x_22809 x_22810)))))
(declare-datatypes ((pair_38 0)) (((pair_39 (projpair_76 list_112) (projpair_77 list_112)))))
(declare-fun diseqpair_19 (pair_38 pair_38) Bool)
(declare-fun projpair_78 (list_112 pair_38) Bool)
(declare-fun projpair_79 (list_112 pair_38) Bool)
(declare-fun ispair_19 (pair_38) Bool)
(assert (forall ((x_22811 list_112) (x_22812 list_112))
	(projpair_78 x_22811 (pair_39 x_22811 x_22812))))
(assert (forall ((x_22811 list_112) (x_22812 list_112))
	(projpair_79 x_22812 (pair_39 x_22811 x_22812))))
(assert (forall ((x_22814 list_112) (x_22815 list_112))
	(ispair_19 (pair_39 x_22814 x_22815))))
(assert (forall ((x_22816 list_112) (x_22817 list_112) (x_22818 list_112) (x_22819 list_112))
	(=> (diseqlist_112 x_22816 x_22818) (diseqpair_19 (pair_39 x_22816 x_22817) (pair_39 x_22818 x_22819)))))
(assert (forall ((x_22816 list_112) (x_22817 list_112) (x_22818 list_112) (x_22819 list_112))
	(=> (diseqlist_112 x_22817 x_22819) (diseqpair_19 (pair_39 x_22816 x_22817) (pair_39 x_22818 x_22819)))))
(declare-fun third_2 (Int Int) Bool)
(assert (third_2 Z_888 (S_244 (S_244 Z_888))))
(assert (=> (diseqInt (S_244 Z_888) (S_244 (S_244 Z_888))) (third_2 Z_888 (S_244 Z_888))))
(assert (third_2 Z_888 (S_244 (S_244 Z_888))))
(assert (=> (and (diseqInt Z_888 (S_244 (S_244 Z_888))) (diseqInt Z_888 (S_244 Z_888))) (third_2 Z_888 Z_888)))
(assert (third_2 Z_888 (S_244 (S_244 Z_888))))
(assert (=> (diseqInt (S_244 Z_888) (S_244 (S_244 Z_888))) (third_2 Z_888 (S_244 Z_888))))
(assert (third_2 Z_888 (S_244 (S_244 Z_888))))
(assert (forall ((x_22785 Int) (x_22724 Int) (x_22725 Int) (x_22700 Int))
	(=> (and (diseqInt x_22700 (S_244 (S_244 Z_888))) (diseqInt x_22700 (S_244 Z_888)) (diseqInt x_22700 Z_888) (third_2 x_22725 x_22785) (minus_160 x_22785 x_22700 (S_244 (S_244 (S_244 Z_888)))) (add_166 x_22724 (S_244 Z_888) x_22725)) (third_2 x_22724 x_22700))))
(declare-fun take_23 (list_112 Int list_112) Bool)
(assert (forall ((x_22701 Int) (y_891 list_112))
	(=> (le_156 x_22701 Z_888) (take_23 nil_124 x_22701 y_891))))
(assert (forall ((x_22786 Int) (x_22728 list_112) (z_883 Int) (xs_274 list_112) (x_22701 Int))
	(=> (and (gt_157 x_22701 Z_888) (take_23 x_22728 x_22786 xs_274) (minus_160 x_22786 x_22701 (S_244 Z_888))) (take_23 (cons_112 z_883 x_22728) x_22701 (cons_112 z_883 xs_274)))))
(assert (forall ((x_22701 Int) (y_891 list_112))
	(=> (le_156 x_22701 Z_888) (take_23 nil_124 x_22701 y_891))))
(assert (forall ((x_22701 Int))
	(=> (gt_157 x_22701 Z_888) (take_23 nil_124 x_22701 nil_124))))
(declare-fun sort_12 (list_112 Int Int) Bool)
(assert (forall ((x_22702 Int) (y_892 Int))
	(=> (le_156 x_22702 y_892) (sort_12 (cons_112 x_22702 (cons_112 y_892 nil_124)) x_22702 y_892))))
(assert (forall ((x_22702 Int) (y_892 Int))
	(=> (gt_157 x_22702 y_892) (sort_12 (cons_112 y_892 (cons_112 x_22702 nil_124)) x_22702 y_892))))
(declare-fun length_10 (Int list_112) Bool)
(assert (forall ((x_22733 Int) (x_22734 Int) (y_893 Int) (l_12 list_112))
	(=> (and (length_10 x_22734 l_12) (add_166 x_22733 (S_244 Z_888) x_22734)) (length_10 x_22733 (cons_112 y_893 l_12)))))
(assert (length_10 Z_888 nil_124))
(declare-fun insert_10 (list_112 Int list_112) Bool)
(assert (forall ((z_884 Int) (xs_275 list_112) (x_22704 Int))
	(=> (le_156 x_22704 z_884) (insert_10 (cons_112 x_22704 (cons_112 z_884 xs_275)) x_22704 (cons_112 z_884 xs_275)))))
(assert (forall ((x_22738 list_112) (z_884 Int) (xs_275 list_112) (x_22704 Int))
	(=> (and (gt_157 x_22704 z_884) (insert_10 x_22738 x_22704 xs_275)) (insert_10 (cons_112 z_884 x_22738) x_22704 (cons_112 z_884 xs_275)))))
(assert (forall ((x_22704 Int))
	(insert_10 (cons_112 x_22704 nil_124) x_22704 nil_124)))
(declare-fun isort_10 (list_112 list_112) Bool)
(assert (forall ((x_22740 list_112) (x_22741 list_112) (y_895 Int) (xs_276 list_112))
	(=> (and (isort_10 x_22741 xs_276) (insert_10 x_22740 y_895 x_22741)) (isort_10 x_22740 (cons_112 y_895 xs_276)))))
(assert (isort_10 nil_124 nil_124))
(declare-fun drop_25 (list_112 Int list_112) Bool)
(assert (forall ((x_22744 list_112) (x_22706 Int))
	(=> (le_156 x_22706 Z_888) (drop_25 x_22744 x_22706 x_22744))))
(assert (forall ((x_22788 Int) (x_22745 list_112) (z_885 Int) (xs_277 list_112) (x_22706 Int))
	(=> (and (gt_157 x_22706 Z_888) (drop_25 x_22745 x_22788 xs_277) (minus_160 x_22788 x_22706 (S_244 Z_888))) (drop_25 x_22745 x_22706 (cons_112 z_885 xs_277)))))
(assert (forall ((x_22747 list_112) (x_22706 Int))
	(=> (le_156 x_22706 Z_888) (drop_25 x_22747 x_22706 x_22747))))
(assert (forall ((x_22706 Int))
	(=> (gt_157 x_22706 Z_888) (drop_25 nil_124 x_22706 nil_124))))
(declare-fun splitAt_6 (pair_38 Int list_112) Bool)
(assert (forall ((x_22750 list_112) (x_22751 list_112) (x_22707 Int) (y_897 list_112))
	(=> (and (take_23 x_22750 x_22707 y_897) (drop_25 x_22751 x_22707 y_897)) (splitAt_6 (pair_39 x_22750 x_22751) x_22707 y_897))))
(declare-fun x_22708 (list_112 list_112 list_112) Bool)
(assert (forall ((x_22753 list_112) (z_886 Int) (xs_278 list_112) (y_898 list_112))
	(=> (x_22708 x_22753 xs_278 y_898) (x_22708 (cons_112 z_886 x_22753) (cons_112 z_886 xs_278) y_898))))
(assert (forall ((x_22754 list_112))
	(x_22708 x_22754 nil_124 x_22754)))
(declare-fun reverse_5 (list_112 list_112) Bool)
(assert (forall ((x_22755 list_112) (x_22756 list_112) (y_899 Int) (xs_279 list_112))
	(=> (and (reverse_5 x_22756 xs_279) (x_22708 x_22755 x_22756 (cons_112 y_899 nil_124))) (reverse_5 x_22755 (cons_112 y_899 xs_279)))))
(assert (reverse_5 nil_124 nil_124))
(declare-fun nstoogesort_6 (list_112 list_112) Bool)
(declare-fun nstoogesort_7 (list_112 list_112) Bool)
(declare-fun nstoogesort_8 (list_112 list_112) Bool)
(assert (forall ((x_22763 list_112) (x_22764 list_112) (x_22765 list_112) (x_22759 Int) (x_22760 Int) (x_22761 list_112) (ys_83 list_112) (zs_20 list_112) (x_22711 list_112))
	(=> (and (nstoogesort_7 x_22764 zs_20) (reverse_5 x_22765 ys_83) (x_22708 x_22763 x_22764 x_22765) (length_10 x_22759 x_22711) (third_2 x_22760 x_22759) (reverse_5 x_22761 x_22711) (splitAt_6 (pair_39 ys_83 zs_20) x_22760 x_22761)) (nstoogesort_6 x_22763 x_22711))))
(assert (forall ((x_22767 list_112) (x_22768 list_112) (x_22769 list_112) (x_22714 Int) (x_22715 list_112) (y_901 Int) (y_900 Int))
	(=> (and (nstoogesort_6 x_22768 (cons_112 y_900 (cons_112 y_901 (cons_112 x_22714 x_22715)))) (nstoogesort_8 x_22769 x_22768) (nstoogesort_6 x_22767 x_22769)) (nstoogesort_7 x_22767 (cons_112 y_900 (cons_112 y_901 (cons_112 x_22714 x_22715)))))))
(assert (forall ((x_22771 list_112) (y_901 Int) (y_900 Int))
	(=> (sort_12 x_22771 y_900 y_901) (nstoogesort_7 x_22771 (cons_112 y_900 (cons_112 y_901 nil_124))))))
(assert (forall ((y_900 Int))
	(nstoogesort_7 (cons_112 y_900 nil_124) (cons_112 y_900 nil_124))))
(assert (nstoogesort_7 nil_124 nil_124))
(assert (forall ((x_22778 list_112) (x_22779 list_112) (x_22775 Int) (x_22776 Int) (ys_84 list_112) (zs_21 list_112) (x_22716 list_112))
	(=> (and (nstoogesort_7 x_22779 zs_21) (x_22708 x_22778 ys_84 x_22779) (length_10 x_22775 x_22716) (third_2 x_22776 x_22775) (splitAt_6 (pair_39 ys_84 zs_21) x_22776 x_22716)) (nstoogesort_8 x_22778 x_22716))))
(assert (forall ((x_22781 list_112) (x_22782 list_112) (xs_280 list_112))
	(=> (and true (diseqlist_112 x_22781 x_22782) (nstoogesort_7 x_22781 xs_280) (isort_10 x_22782 xs_280)) false)))
(check-sat)