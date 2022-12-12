
(set-logic HORN)
(define-fun Z_904 () Int 0)
(define-fun S_248 ((x Int)) Int (+ x 1))
(define-fun zero_49 () Int 0)
(define-fun succ_48 ((x Int)) Int (+ x 1))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun unS_319 (Int Int) Bool)
(declare-fun isZ_232 (Int) Bool)
(declare-fun isS_232 (Int) Bool)
(assert (forall ((x_22979 Int))
	(unS_319 x_22979 (S_248 x_22979))))
(assert (isZ_232 Z_904))
(assert (forall ((x_22981 Int))
	(isS_232 (S_248 x_22981))))
(assert (forall ((x_22982 Int))
	(diseqInt Z_904 (S_248 x_22982))))
(assert (forall ((x_22983 Int))
	(diseqInt (S_248 x_22983) Z_904)))
(assert (forall ((x_22984 Int) (x_22985 Int))
	(=> (diseqInt x_22984 x_22985) (diseqInt (S_248 x_22984) (S_248 x_22985)))))
(declare-fun add_169 (Int Int Int) Bool)
(declare-fun minus_163 (Int Int Int) Bool)
(declare-fun le_159 (Int Int) Bool)
(declare-fun ge_159 (Int Int) Bool)
(declare-fun lt_165 (Int Int) Bool)
(declare-fun gt_160 (Int Int) Bool)
(declare-fun mult_159 (Int Int Int) Bool)
(declare-fun div_159 (Int Int Int) Bool)
(declare-fun mod_159 (Int Int Int) Bool)
(assert (forall ((y_915 Int))
	(add_169 y_915 Z_904 y_915)))
(assert (forall ((x_22955 Int) (y_915 Int) (r_189 Int))
	(=> (add_169 r_189 x_22955 y_915) (add_169 (S_248 r_189) (S_248 x_22955) y_915))))
(assert (forall ((y_915 Int))
	(minus_163 Z_904 Z_904 y_915)))
(assert (forall ((x_22955 Int) (y_915 Int) (r_189 Int))
	(=> (minus_163 r_189 x_22955 y_915) (minus_163 (S_248 r_189) (S_248 x_22955) y_915))))
(assert (forall ((y_915 Int))
	(le_159 Z_904 y_915)))
(assert (forall ((x_22955 Int) (y_915 Int))
	(=> (le_159 x_22955 y_915) (le_159 (S_248 x_22955) (S_248 y_915)))))
(assert (forall ((y_915 Int))
	(ge_159 y_915 Z_904)))
(assert (forall ((x_22955 Int) (y_915 Int))
	(=> (ge_159 x_22955 y_915) (ge_159 (S_248 x_22955) (S_248 y_915)))))
(assert (forall ((y_915 Int))
	(lt_165 Z_904 (S_248 y_915))))
(assert (forall ((x_22955 Int) (y_915 Int))
	(=> (lt_165 x_22955 y_915) (lt_165 (S_248 x_22955) (S_248 y_915)))))
(assert (forall ((y_915 Int))
	(gt_160 (S_248 y_915) Z_904)))
(assert (forall ((x_22955 Int) (y_915 Int))
	(=> (gt_160 x_22955 y_915) (gt_160 (S_248 x_22955) (S_248 y_915)))))
(assert (forall ((y_915 Int))
	(mult_159 Z_904 Z_904 y_915)))
(assert (forall ((x_22955 Int) (y_915 Int) (r_189 Int) (z_905 Int))
	(=> (and (mult_159 r_189 x_22955 y_915) (add_169 z_905 r_189 y_915)) (mult_159 z_905 (S_248 x_22955) y_915))))
(assert (forall ((x_22955 Int) (y_915 Int))
	(=> (lt_165 x_22955 y_915) (div_159 Z_904 x_22955 y_915))))
(assert (forall ((x_22955 Int) (y_915 Int) (r_189 Int) (z_905 Int))
	(=> (and (ge_159 x_22955 y_915) (minus_163 z_905 x_22955 y_915) (div_159 r_189 z_905 y_915)) (div_159 (S_248 r_189) x_22955 y_915))))
(assert (forall ((x_22955 Int) (y_915 Int))
	(=> (lt_165 x_22955 y_915) (mod_159 x_22955 x_22955 y_915))))
(assert (forall ((x_22955 Int) (y_915 Int) (r_189 Int) (z_905 Int))
	(=> (and (ge_159 x_22955 y_915) (minus_163 z_905 x_22955 y_915) (mod_159 r_189 z_905 y_915)) (mod_159 r_189 x_22955 y_915))))
(declare-datatypes ((list_114 0)) (((nil_126) (cons_114 (head_228 Int) (tail_228 list_114)))))
(declare-fun diseqlist_114 (list_114 list_114) Bool)
(declare-fun head_229 (Int list_114) Bool)
(declare-fun tail_229 (list_114 list_114) Bool)
(declare-fun isnil_126 (list_114) Bool)
(declare-fun iscons_114 (list_114) Bool)
(assert (forall ((x_22957 Int) (x_22958 list_114))
	(head_229 x_22957 (cons_114 x_22957 x_22958))))
(assert (forall ((x_22957 Int) (x_22958 list_114))
	(tail_229 x_22958 (cons_114 x_22957 x_22958))))
(assert (isnil_126 nil_126))
(assert (forall ((x_22960 Int) (x_22961 list_114))
	(iscons_114 (cons_114 x_22960 x_22961))))
(assert (forall ((x_22962 Int) (x_22963 list_114))
	(diseqlist_114 nil_126 (cons_114 x_22962 x_22963))))
(assert (forall ((x_22964 Int) (x_22965 list_114))
	(diseqlist_114 (cons_114 x_22964 x_22965) nil_126)))
(assert (forall ((x_22966 Int) (x_22967 list_114) (x_22968 Int) (x_22969 list_114))
	(=> (diseqInt x_22966 x_22968) (diseqlist_114 (cons_114 x_22966 x_22967) (cons_114 x_22968 x_22969)))))
(assert (forall ((x_22966 Int) (x_22967 list_114) (x_22968 Int) (x_22969 list_114))
	(=> (diseqlist_114 x_22967 x_22969) (diseqlist_114 (cons_114 x_22966 x_22967) (cons_114 x_22968 x_22969)))))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_137 (Int Int) Bool)
(declare-fun iszero_48 (Int) Bool)
(declare-fun issucc_48 (Int) Bool)
(assert (forall ((x_22971 Int))
	(p_137 x_22971 (succ_48 x_22971))))
(assert (iszero_48 zero_49))
(assert (forall ((x_22973 Int))
	(issucc_48 (succ_48 x_22973))))
(assert (forall ((x_22974 Int))
	(diseqInt zero_49 (succ_48 x_22974))))
(assert (forall ((x_22975 Int))
	(diseqInt (succ_48 x_22975) zero_49)))
(assert (forall ((x_22976 Int) (x_22977 Int))
	(=> (diseqInt x_22976 x_22977) (diseqInt (succ_48 x_22976) (succ_48 x_22977)))))
(declare-fun x_22939 (list_114 list_114 list_114) Bool)
(assert (forall ((x_22943 list_114) (z_901 Int) (xs_285 list_114) (y_913 list_114))
	(=> (x_22939 x_22943 xs_285 y_913) (x_22939 (cons_114 z_901 x_22943) (cons_114 z_901 xs_285) y_913))))
(assert (forall ((x_22944 list_114))
	(x_22939 x_22944 nil_126 x_22944)))
(declare-fun rotate_1 (list_114 Int list_114) Bool)
(assert (forall ((x_22945 list_114) (x_22946 list_114) (z_903 Int) (xs_286 list_114) (z_902 Int))
	(=> (and (x_22939 x_22946 xs_286 (cons_114 z_903 nil_126)) (rotate_1 x_22945 z_902 x_22946)) (rotate_1 x_22945 (succ_48 z_902) (cons_114 z_903 xs_286)))))
(assert (forall ((z_902 Int))
	(rotate_1 nil_126 (succ_48 z_902) nil_126)))
(assert (forall ((x_22949 list_114))
	(rotate_1 x_22949 zero_49 x_22949)))
(assert (forall ((x_22950 list_114) (x_22951 list_114) (x_22952 list_114) (x_22953 list_114) (x_22954 list_114) (n_54 Int) (xs_287 list_114))
	(=> (and true (diseqlist_114 x_22951 x_22954) (x_22939 x_22950 xs_287 xs_287) (rotate_1 x_22951 n_54 x_22950) (rotate_1 x_22952 n_54 xs_287) (rotate_1 x_22953 n_54 xs_287) (x_22939 x_22954 x_22952 x_22953)) false)))
(check-sat)
