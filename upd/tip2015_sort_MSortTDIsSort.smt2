
(set-logic HORN)
(declare-fun Z_695 () Int)
(declare-fun S_205 (Int) Int)
(declare-fun diseqInt (Int Int) Bool)
(declare-fun unS_247 (Int Int) Bool)
(declare-fun isZ_196 (Int) Bool)
(declare-fun isS_196 (Int) Bool)
(assert (forall ((x_18018 Int))
	(unS_247 x_18018 (S_205 x_18018))))
(assert (isZ_196 Z_695))
(assert (forall ((x_18020 Int))
	(isS_196 (S_205 x_18020))))
(assert (forall ((x_18021 Int))
	(diseqInt Z_695 (S_205 x_18021))))
(assert (forall ((x_18022 Int))
	(diseqInt (S_205 x_18022) Z_695)))
(assert (forall ((x_18023 Int) (x_18024 Int))
	(=> (diseqInt x_18023 x_18024) (diseqInt (S_205 x_18023) (S_205 x_18024)))))
(declare-fun add_128 (Int Int Int) Bool)
(declare-fun minus_126 (Int Int Int) Bool)
(declare-fun le_123 (Int Int) Bool)
(declare-fun ge_123 (Int Int) Bool)
(declare-fun lt_127 (Int Int) Bool)
(declare-fun gt_124 (Int Int) Bool)
(declare-fun mult_123 (Int Int Int) Bool)
(declare-fun div_123 (Int Int Int) Bool)
(declare-fun mod_123 (Int Int Int) Bool)
(assert (forall ((y_674 Int))
	(add_128 y_674 Z_695 y_674)))
(assert (forall ((x_18012 Int) (y_674 Int) (r_144 Int))
	(=> (add_128 r_144 x_18012 y_674) (add_128 (S_205 r_144) (S_205 x_18012) y_674))))
(assert (forall ((y_674 Int))
	(minus_126 Z_695 Z_695 y_674)))
(assert (forall ((x_18012 Int) (y_674 Int) (r_144 Int))
	(=> (minus_126 r_144 x_18012 y_674) (minus_126 (S_205 r_144) (S_205 x_18012) y_674))))
(assert (forall ((y_674 Int))
	(le_123 Z_695 y_674)))
(assert (forall ((x_18012 Int) (y_674 Int))
	(=> (le_123 x_18012 y_674) (le_123 (S_205 x_18012) (S_205 y_674)))))
(assert (forall ((y_674 Int))
	(ge_123 y_674 Z_695)))
(assert (forall ((x_18012 Int) (y_674 Int))
	(=> (ge_123 x_18012 y_674) (ge_123 (S_205 x_18012) (S_205 y_674)))))
(assert (forall ((y_674 Int))
	(lt_127 Z_695 (S_205 y_674))))
(assert (forall ((x_18012 Int) (y_674 Int))
	(=> (lt_127 x_18012 y_674) (lt_127 (S_205 x_18012) (S_205 y_674)))))
(assert (forall ((y_674 Int))
	(gt_124 (S_205 y_674) Z_695)))
(assert (forall ((x_18012 Int) (y_674 Int))
	(=> (gt_124 x_18012 y_674) (gt_124 (S_205 x_18012) (S_205 y_674)))))
(assert (forall ((y_674 Int))
	(mult_123 Z_695 Z_695 y_674)))
(assert (forall ((x_18012 Int) (y_674 Int) (r_144 Int) (z_696 Int))
	(=> (and (mult_123 r_144 x_18012 y_674) (add_128 z_696 r_144 y_674)) (mult_123 z_696 (S_205 x_18012) y_674))))
(assert (forall ((x_18012 Int) (y_674 Int))
	(=> (lt_127 x_18012 y_674) (div_123 Z_695 x_18012 y_674))))
(assert (forall ((x_18012 Int) (y_674 Int) (r_144 Int) (z_696 Int))
	(=> (and (ge_123 x_18012 y_674) (minus_126 z_696 x_18012 y_674) (div_123 r_144 z_696 y_674)) (div_123 (S_205 r_144) x_18012 y_674))))
(assert (forall ((x_18012 Int) (y_674 Int))
	(=> (lt_127 x_18012 y_674) (mod_123 x_18012 x_18012 y_674))))
(assert (forall ((x_18012 Int) (y_674 Int) (r_144 Int) (z_696 Int))
	(=> (and (ge_123 x_18012 y_674) (minus_126 z_696 x_18012 y_674) (mod_123 r_144 z_696 y_674)) (mod_123 r_144 x_18012 y_674))))
(declare-datatypes ((list_90 0)) (((nil_97) (cons_90 (head_180 Int) (tail_180 list_90)))))
(declare-fun diseqlist_90 (list_90 list_90) Bool)
(declare-fun head_181 (Int list_90) Bool)
(declare-fun tail_181 (list_90 list_90) Bool)
(declare-fun isnil_97 (list_90) Bool)
(declare-fun iscons_90 (list_90) Bool)
(assert (forall ((x_18026 Int) (x_18027 list_90))
	(head_181 x_18026 (cons_90 x_18026 x_18027))))
(assert (forall ((x_18026 Int) (x_18027 list_90))
	(tail_181 x_18027 (cons_90 x_18026 x_18027))))
(assert (isnil_97 nil_97))
(assert (forall ((x_18029 Int) (x_18030 list_90))
	(iscons_90 (cons_90 x_18029 x_18030))))
(assert (forall ((x_18031 Int) (x_18032 list_90))
	(diseqlist_90 nil_97 (cons_90 x_18031 x_18032))))
(assert (forall ((x_18033 Int) (x_18034 list_90))
	(diseqlist_90 (cons_90 x_18033 x_18034) nil_97)))
(assert (forall ((x_18035 Int) (x_18036 list_90) (x_18037 Int) (x_18038 list_90))
	(=> (diseqInt x_18035 x_18037) (diseqlist_90 (cons_90 x_18035 x_18036) (cons_90 x_18037 x_18038)))))
(assert (forall ((x_18035 Int) (x_18036 list_90) (x_18037 Int) (x_18038 list_90))
	(=> (diseqlist_90 x_18036 x_18038) (diseqlist_90 (cons_90 x_18035 x_18036) (cons_90 x_18037 x_18038)))))
(declare-fun take_19 (list_90 Int list_90) Bool)
(assert (forall ((x_17962 Int) (y_667 list_90))
	(=> (le_123 x_17962 Z_695) (take_19 nil_97 x_17962 y_667))))
(assert (forall ((x_18013 Int) (x_17976 list_90) (z_690 Int) (xs_204 list_90) (x_17962 Int))
	(=> (and (gt_124 x_17962 Z_695) (take_19 x_17976 x_18013 xs_204) (minus_126 x_18013 x_17962 (S_205 Z_695))) (take_19 (cons_90 z_690 x_17976) x_17962 (cons_90 z_690 xs_204)))))
(assert (forall ((x_17962 Int) (y_667 list_90))
	(=> (le_123 x_17962 Z_695) (take_19 nil_97 x_17962 y_667))))
(assert (forall ((x_17962 Int))
	(=> (gt_124 x_17962 Z_695) (take_19 nil_97 x_17962 nil_97))))
(declare-fun lmerge_2 (list_90 list_90 list_90) Bool)
(assert (forall ((x_17980 list_90) (x_17965 Int) (x_17966 list_90) (z_691 Int) (x_17964 list_90))
	(=> (and (le_123 z_691 x_17965) (lmerge_2 x_17980 x_17964 (cons_90 x_17965 x_17966))) (lmerge_2 (cons_90 z_691 x_17980) (cons_90 z_691 x_17964) (cons_90 x_17965 x_17966)))))
(assert (forall ((x_17982 list_90) (x_17965 Int) (x_17966 list_90) (z_691 Int) (x_17964 list_90))
	(=> (and (gt_124 z_691 x_17965) (lmerge_2 x_17982 (cons_90 z_691 x_17964) x_17966)) (lmerge_2 (cons_90 x_17965 x_17982) (cons_90 z_691 x_17964) (cons_90 x_17965 x_17966)))))
(assert (forall ((z_691 Int) (x_17964 list_90))
	(lmerge_2 (cons_90 z_691 x_17964) (cons_90 z_691 x_17964) nil_97)))
(assert (forall ((x_17984 list_90))
	(lmerge_2 x_17984 nil_97 x_17984)))
(declare-fun length_6 (Int list_90) Bool)
(assert (forall ((x_17985 Int) (x_17986 Int) (y_669 Int) (l_8 list_90))
	(=> (and (length_6 x_17986 l_8) (add_128 x_17985 (S_205 Z_695) x_17986)) (length_6 x_17985 (cons_90 y_669 l_8)))))
(assert (length_6 Z_695 nil_97))
(declare-fun insert_4 (list_90 Int list_90) Bool)
(assert (forall ((z_692 Int) (xs_205 list_90) (x_17968 Int))
	(=> (le_123 x_17968 z_692) (insert_4 (cons_90 x_17968 (cons_90 z_692 xs_205)) x_17968 (cons_90 z_692 xs_205)))))
(assert (forall ((x_17990 list_90) (z_692 Int) (xs_205 list_90) (x_17968 Int))
	(=> (and (gt_124 x_17968 z_692) (insert_4 x_17990 x_17968 xs_205)) (insert_4 (cons_90 z_692 x_17990) x_17968 (cons_90 z_692 xs_205)))))
(assert (forall ((x_17968 Int))
	(insert_4 (cons_90 x_17968 nil_97) x_17968 nil_97)))
(declare-fun isort_4 (list_90 list_90) Bool)
(assert (forall ((x_17992 list_90) (x_17993 list_90) (y_671 Int) (xs_206 list_90))
	(=> (and (isort_4 x_17993 xs_206) (insert_4 x_17992 y_671 x_17993)) (isort_4 x_17992 (cons_90 y_671 xs_206)))))
(assert (isort_4 nil_97 nil_97))
(declare-fun drop_21 (list_90 Int list_90) Bool)
(assert (forall ((x_17996 list_90) (x_17970 Int))
	(=> (le_123 x_17970 Z_695) (drop_21 x_17996 x_17970 x_17996))))
(assert (forall ((x_18015 Int) (x_17997 list_90) (z_693 Int) (xs_207 list_90) (x_17970 Int))
	(=> (and (gt_124 x_17970 Z_695) (drop_21 x_17997 x_18015 xs_207) (minus_126 x_18015 x_17970 (S_205 Z_695))) (drop_21 x_17997 x_17970 (cons_90 z_693 xs_207)))))
(assert (forall ((x_17999 list_90) (x_17970 Int))
	(=> (le_123 x_17970 Z_695) (drop_21 x_17999 x_17970 x_17999))))
(assert (forall ((x_17970 Int))
	(=> (gt_124 x_17970 Z_695) (drop_21 nil_97 x_17970 nil_97))))
(declare-fun msorttd_1 (list_90 list_90) Bool)
(assert (forall ((x_18002 list_90) (x_18003 list_90) (x_18004 list_90) (x_18005 list_90) (x_18006 list_90) (x_18001 Int) (k_5 Int) (x_17972 Int) (x_17973 list_90) (y_673 Int))
	(=> (and (take_19 x_18003 k_5 (cons_90 y_673 (cons_90 x_17972 x_17973))) (msorttd_1 x_18004 x_18003) (drop_21 x_18005 k_5 (cons_90 y_673 (cons_90 x_17972 x_17973))) (msorttd_1 x_18006 x_18005) (lmerge_2 x_18002 x_18004 x_18006) (length_6 x_18001 (cons_90 y_673 (cons_90 x_17972 x_17973))) (div_123 k_5 x_18001 (S_205 (S_205 Z_695)))) (msorttd_1 x_18002 (cons_90 y_673 (cons_90 x_17972 x_17973))))))
(assert (forall ((y_673 Int))
	(msorttd_1 (cons_90 y_673 nil_97) (cons_90 y_673 nil_97))))
(assert (msorttd_1 nil_97 nil_97))
(assert (forall ((x_18010 list_90) (x_18011 list_90) (xs_208 list_90))
	(=> (and true (diseqlist_90 x_18010 x_18011) (msorttd_1 x_18010 xs_208) (isort_4 x_18011 xs_208)) false)))
(check-sat)
