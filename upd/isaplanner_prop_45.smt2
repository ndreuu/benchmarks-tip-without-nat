
(set-logic HORN)
(define-fun Z_282 () Int 0)
(define-fun S_99 ((x Int)) Int (+ x 1))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun unS_103 (Int Int) Bool)
(declare-fun isZ_99 (Int) Bool)
(declare-fun isS_99 (Int) Bool)
(assert (forall ((x_2772 Int))
	(unS_103 x_2772 (S_99 x_2772))))
(assert (isZ_99 Z_282))
(assert (forall ((x_2774 Int))
	(isS_99 (S_99 x_2774))))
(assert (forall ((x_2775 Int))
	(diseqInt Z_282 (S_99 x_2775))))
(assert (forall ((x_2776 Int))
	(diseqInt (S_99 x_2776) Z_282)))
(assert (forall ((x_2777 Int) (x_2778 Int))
	(=> (diseqInt x_2777 x_2778) (diseqInt (S_99 x_2777) (S_99 x_2778)))))
(declare-fun add_51 (Int Int Int) Bool)
(declare-fun minus_51 (Int Int Int) Bool)
(declare-fun le_51 (Int Int) Bool)
(declare-fun ge_51 (Int Int) Bool)
(declare-fun lt_51 (Int Int) Bool)
(declare-fun gt_51 (Int Int) Bool)
(declare-fun mult_51 (Int Int Int) Bool)
(declare-fun div_51 (Int Int Int) Bool)
(declare-fun mod_51 (Int Int Int) Bool)
(assert (forall ((y_224 Int))
	(add_51 y_224 Z_282 y_224)))
(assert (forall ((x_2733 Int) (y_224 Int) (r_51 Int))
	(=> (add_51 r_51 x_2733 y_224) (add_51 (S_99 r_51) (S_99 x_2733) y_224))))
(assert (forall ((y_224 Int))
	(minus_51 Z_282 Z_282 y_224)))
(assert (forall ((x_2733 Int) (y_224 Int) (r_51 Int))
	(=> (minus_51 r_51 x_2733 y_224) (minus_51 (S_99 r_51) (S_99 x_2733) y_224))))
(assert (forall ((y_224 Int))
	(le_51 Z_282 y_224)))
(assert (forall ((x_2733 Int) (y_224 Int))
	(=> (le_51 x_2733 y_224) (le_51 (S_99 x_2733) (S_99 y_224)))))
(assert (forall ((y_224 Int))
	(ge_51 y_224 Z_282)))
(assert (forall ((x_2733 Int) (y_224 Int))
	(=> (ge_51 x_2733 y_224) (ge_51 (S_99 x_2733) (S_99 y_224)))))
(assert (forall ((y_224 Int))
	(lt_51 Z_282 (S_99 y_224))))
(assert (forall ((x_2733 Int) (y_224 Int))
	(=> (lt_51 x_2733 y_224) (lt_51 (S_99 x_2733) (S_99 y_224)))))
(assert (forall ((y_224 Int))
	(gt_51 (S_99 y_224) Z_282)))
(assert (forall ((x_2733 Int) (y_224 Int))
	(=> (gt_51 x_2733 y_224) (gt_51 (S_99 x_2733) (S_99 y_224)))))
(assert (forall ((y_224 Int))
	(mult_51 Z_282 Z_282 y_224)))
(assert (forall ((x_2733 Int) (y_224 Int) (r_51 Int) (z_283 Int))
	(=> (and (mult_51 r_51 x_2733 y_224) (add_51 z_283 r_51 y_224)) (mult_51 z_283 (S_99 x_2733) y_224))))
(assert (forall ((x_2733 Int) (y_224 Int))
	(=> (lt_51 x_2733 y_224) (div_51 Z_282 x_2733 y_224))))
(assert (forall ((x_2733 Int) (y_224 Int) (r_51 Int) (z_283 Int))
	(=> (and (ge_51 x_2733 y_224) (minus_51 z_283 x_2733 y_224) (div_51 r_51 z_283 y_224)) (div_51 (S_99 r_51) x_2733 y_224))))
(assert (forall ((x_2733 Int) (y_224 Int))
	(=> (lt_51 x_2733 y_224) (mod_51 x_2733 x_2733 y_224))))
(assert (forall ((x_2733 Int) (y_224 Int) (r_51 Int) (z_283 Int))
	(=> (and (ge_51 x_2733 y_224) (minus_51 z_283 x_2733 y_224) (mod_51 r_51 z_283 y_224)) (mod_51 r_51 x_2733 y_224))))
(declare-datatypes ((pair_16 0)) (((pair_17 (projpair_32 Int) (projpair_33 Int)))))
(declare-fun diseqpair_8 (pair_16 pair_16) Bool)
(declare-fun projpair_34 (Int pair_16) Bool)
(declare-fun projpair_35 (Int pair_16) Bool)
(declare-fun ispair_8 (pair_16) Bool)
(assert (forall ((x_2734 Int) (x_2735 Int))
	(projpair_34 x_2734 (pair_17 x_2734 x_2735))))
(assert (forall ((x_2734 Int) (x_2735 Int))
	(projpair_35 x_2735 (pair_17 x_2734 x_2735))))
(assert (forall ((x_2737 Int) (x_2738 Int))
	(ispair_8 (pair_17 x_2737 x_2738))))
(assert (forall ((x_2739 Int) (x_2740 Int) (x_2741 Int) (x_2742 Int))
	(=> (diseqInt x_2739 x_2741) (diseqpair_8 (pair_17 x_2739 x_2740) (pair_17 x_2741 x_2742)))))
(assert (forall ((x_2739 Int) (x_2740 Int) (x_2741 Int) (x_2742 Int))
	(=> (diseqInt x_2740 x_2742) (diseqpair_8 (pair_17 x_2739 x_2740) (pair_17 x_2741 x_2742)))))
(declare-datatypes ((list_45 0)) (((nil_45) (cons_45 (head_90 Int) (tail_90 list_45)))))
(declare-fun diseqlist_45 (list_45 list_45) Bool)
(declare-fun head_92 (Int list_45) Bool)
(declare-fun tail_92 (list_45 list_45) Bool)
(declare-fun isnil_45 (list_45) Bool)
(declare-fun iscons_45 (list_45) Bool)
(assert (forall ((x_2744 Int) (x_2745 list_45))
	(head_92 x_2744 (cons_45 x_2744 x_2745))))
(assert (forall ((x_2744 Int) (x_2745 list_45))
	(tail_92 x_2745 (cons_45 x_2744 x_2745))))
(assert (isnil_45 nil_45))
(assert (forall ((x_2747 Int) (x_2748 list_45))
	(iscons_45 (cons_45 x_2747 x_2748))))
(assert (forall ((x_2749 Int) (x_2750 list_45))
	(diseqlist_45 nil_45 (cons_45 x_2749 x_2750))))
(assert (forall ((x_2751 Int) (x_2752 list_45))
	(diseqlist_45 (cons_45 x_2751 x_2752) nil_45)))
(assert (forall ((x_2753 Int) (x_2754 list_45) (x_2755 Int) (x_2756 list_45))
	(=> (diseqInt x_2753 x_2755) (diseqlist_45 (cons_45 x_2753 x_2754) (cons_45 x_2755 x_2756)))))
(assert (forall ((x_2753 Int) (x_2754 list_45) (x_2755 Int) (x_2756 list_45))
	(=> (diseqlist_45 x_2754 x_2756) (diseqlist_45 (cons_45 x_2753 x_2754) (cons_45 x_2755 x_2756)))))
(declare-datatypes ((list_46 0)) (((nil_46) (cons_46 (head_91 pair_16) (tail_91 list_46)))))
(declare-fun diseqlist_46 (list_46 list_46) Bool)
(declare-fun head_93 (pair_16 list_46) Bool)
(declare-fun tail_93 (list_46 list_46) Bool)
(declare-fun isnil_46 (list_46) Bool)
(declare-fun iscons_46 (list_46) Bool)
(assert (forall ((x_2758 pair_16) (x_2759 list_46))
	(head_93 x_2758 (cons_46 x_2758 x_2759))))
(assert (forall ((x_2758 pair_16) (x_2759 list_46))
	(tail_93 x_2759 (cons_46 x_2758 x_2759))))
(assert (isnil_46 nil_46))
(assert (forall ((x_2761 pair_16) (x_2762 list_46))
	(iscons_46 (cons_46 x_2761 x_2762))))
(assert (forall ((x_2763 pair_16) (x_2764 list_46))
	(diseqlist_46 nil_46 (cons_46 x_2763 x_2764))))
(assert (forall ((x_2765 pair_16) (x_2766 list_46))
	(diseqlist_46 (cons_46 x_2765 x_2766) nil_46)))
(assert (forall ((x_2767 pair_16) (x_2768 list_46) (x_2769 pair_16) (x_2770 list_46))
	(=> (diseqpair_8 x_2767 x_2769) (diseqlist_46 (cons_46 x_2767 x_2768) (cons_46 x_2769 x_2770)))))
(assert (forall ((x_2767 pair_16) (x_2768 list_46) (x_2769 pair_16) (x_2770 list_46))
	(=> (diseqlist_46 x_2768 x_2770) (diseqlist_46 (cons_46 x_2767 x_2768) (cons_46 x_2769 x_2770)))))
(declare-fun zip_8 (list_46 list_45 list_45) Bool)
(assert (forall ((x_2728 list_46) (x_2724 Int) (x_2725 list_45) (z_281 Int) (x_2723 list_45))
	(=> (zip_8 x_2728 x_2723 x_2725) (zip_8 (cons_46 (pair_17 z_281 x_2724) x_2728) (cons_45 z_281 x_2723) (cons_45 x_2724 x_2725)))))
(assert (forall ((z_281 Int) (x_2723 list_45))
	(zip_8 nil_46 (cons_45 z_281 x_2723) nil_45)))
(assert (forall ((y_222 list_45))
	(zip_8 nil_46 nil_45 y_222)))
(assert (forall ((x_2731 list_46) (x_2732 list_46) (x_2726 Int) (y_223 Int) (xs_81 list_45) (ys_22 list_45))
	(=> (and true (diseqlist_46 x_2731 (cons_46 (pair_17 x_2726 y_223) x_2732)) (zip_8 x_2731 (cons_45 x_2726 xs_81) (cons_45 y_223 ys_22)) (zip_8 x_2732 xs_81 ys_22)) false)))
(check-sat)
