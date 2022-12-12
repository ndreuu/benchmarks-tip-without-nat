
(set-logic HORN)
(define-fun Z_216 () Int 0)
(define-fun S_76 ((x Int)) Int (+ x 1))
(define-fun Z_214 () Int 0)
(define-fun S_75 ((x Int)) Int (+ x 1))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun unS_79 (Int Int) Bool)
(declare-fun isZ_76 (Int) Bool)
(declare-fun isS_76 (Int) Bool)
(assert (forall ((x_2155 Int))
	(unS_79 x_2155 (S_76 x_2155))))
(assert (isZ_76 Z_216))
(assert (forall ((x_2157 Int))
	(isS_76 (S_76 x_2157))))
(assert (forall ((x_2158 Int))
	(diseqInt Z_216 (S_76 x_2158))))
(assert (forall ((x_2159 Int))
	(diseqInt (S_76 x_2159) Z_216)))
(assert (forall ((x_2160 Int) (x_2161 Int))
	(=> (diseqInt x_2160 x_2161) (diseqInt (S_76 x_2160) (S_76 x_2161)))))
(declare-fun add_39 (Int Int Int) Bool)
(declare-fun minus_39 (Int Int Int) Bool)
(declare-fun le_39 (Int Int) Bool)
(declare-fun ge_39 (Int Int) Bool)
(declare-fun lt_39 (Int Int) Bool)
(declare-fun gt_39 (Int Int) Bool)
(declare-fun mult_39 (Int Int Int) Bool)
(declare-fun div_39 (Int Int Int) Bool)
(declare-fun mod_39 (Int Int Int) Bool)
(assert (forall ((y_170 Int))
	(add_39 y_170 Z_216 y_170)))
(assert (forall ((x_2131 Int) (y_170 Int) (r_39 Int))
	(=> (add_39 r_39 x_2131 y_170) (add_39 (S_76 r_39) (S_76 x_2131) y_170))))
(assert (forall ((y_170 Int))
	(minus_39 Z_216 Z_216 y_170)))
(assert (forall ((x_2131 Int) (y_170 Int) (r_39 Int))
	(=> (minus_39 r_39 x_2131 y_170) (minus_39 (S_76 r_39) (S_76 x_2131) y_170))))
(assert (forall ((y_170 Int))
	(le_39 Z_216 y_170)))
(assert (forall ((x_2131 Int) (y_170 Int))
	(=> (le_39 x_2131 y_170) (le_39 (S_76 x_2131) (S_76 y_170)))))
(assert (forall ((y_170 Int))
	(ge_39 y_170 Z_216)))
(assert (forall ((x_2131 Int) (y_170 Int))
	(=> (ge_39 x_2131 y_170) (ge_39 (S_76 x_2131) (S_76 y_170)))))
(assert (forall ((y_170 Int))
	(lt_39 Z_216 (S_76 y_170))))
(assert (forall ((x_2131 Int) (y_170 Int))
	(=> (lt_39 x_2131 y_170) (lt_39 (S_76 x_2131) (S_76 y_170)))))
(assert (forall ((y_170 Int))
	(gt_39 (S_76 y_170) Z_216)))
(assert (forall ((x_2131 Int) (y_170 Int))
	(=> (gt_39 x_2131 y_170) (gt_39 (S_76 x_2131) (S_76 y_170)))))
(assert (forall ((y_170 Int))
	(mult_39 Z_216 Z_216 y_170)))
(assert (forall ((x_2131 Int) (y_170 Int) (r_39 Int) (z_217 Int))
	(=> (and (mult_39 r_39 x_2131 y_170) (add_39 z_217 r_39 y_170)) (mult_39 z_217 (S_76 x_2131) y_170))))
(assert (forall ((x_2131 Int) (y_170 Int))
	(=> (lt_39 x_2131 y_170) (div_39 Z_216 x_2131 y_170))))
(assert (forall ((x_2131 Int) (y_170 Int) (r_39 Int) (z_217 Int))
	(=> (and (ge_39 x_2131 y_170) (minus_39 z_217 x_2131 y_170) (div_39 r_39 z_217 y_170)) (div_39 (S_76 r_39) x_2131 y_170))))
(assert (forall ((x_2131 Int) (y_170 Int))
	(=> (lt_39 x_2131 y_170) (mod_39 x_2131 x_2131 y_170))))
(assert (forall ((x_2131 Int) (y_170 Int) (r_39 Int) (z_217 Int))
	(=> (and (ge_39 x_2131 y_170) (minus_39 z_217 x_2131 y_170) (mod_39 r_39 z_217 y_170)) (mod_39 r_39 x_2131 y_170))))
(declare-datatypes ((list_37 0)) (((nil_37) (cons_37 (head_74 Int) (tail_74 list_37)))))
(declare-fun diseqlist_37 (list_37 list_37) Bool)
(declare-fun head_75 (Int list_37) Bool)
(declare-fun tail_75 (list_37 list_37) Bool)
(declare-fun isnil_37 (list_37) Bool)
(declare-fun iscons_37 (list_37) Bool)
(assert (forall ((x_2133 Int) (x_2134 list_37))
	(head_75 x_2133 (cons_37 x_2133 x_2134))))
(assert (forall ((x_2133 Int) (x_2134 list_37))
	(tail_75 x_2134 (cons_37 x_2133 x_2134))))
(assert (isnil_37 nil_37))
(assert (forall ((x_2136 Int) (x_2137 list_37))
	(iscons_37 (cons_37 x_2136 x_2137))))
(assert (forall ((x_2138 Int) (x_2139 list_37))
	(diseqlist_37 nil_37 (cons_37 x_2138 x_2139))))
(assert (forall ((x_2140 Int) (x_2141 list_37))
	(diseqlist_37 (cons_37 x_2140 x_2141) nil_37)))
(assert (forall ((x_2142 Int) (x_2143 list_37) (x_2144 Int) (x_2145 list_37))
	(=> (diseqInt x_2142 x_2144) (diseqlist_37 (cons_37 x_2142 x_2143) (cons_37 x_2144 x_2145)))))
(assert (forall ((x_2142 Int) (x_2143 list_37) (x_2144 Int) (x_2145 list_37))
	(=> (diseqlist_37 x_2143 x_2145) (diseqlist_37 (cons_37 x_2142 x_2143) (cons_37 x_2144 x_2145)))))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun projS_73 (Int Int) Bool)
(declare-fun isZ_75 (Int) Bool)
(declare-fun isS_75 (Int) Bool)
(assert (forall ((x_2147 Int))
	(projS_73 x_2147 (S_75 x_2147))))
(assert (isZ_75 Z_214))
(assert (forall ((x_2149 Int))
	(isS_75 (S_75 x_2149))))
(assert (forall ((x_2150 Int))
	(diseqInt Z_214 (S_75 x_2150))))
(assert (forall ((x_2151 Int))
	(diseqInt (S_75 x_2151) Z_214)))
(assert (forall ((x_2152 Int) (x_2153 Int))
	(=> (diseqInt x_2152 x_2153) (diseqInt (S_75 x_2152) (S_75 x_2153)))))
(declare-fun drop_7 (list_37 Int list_37) Bool)
(assert (forall ((x_2125 list_37) (x_2122 Int) (x_2123 list_37) (z_215 Int))
	(=> (drop_7 x_2125 z_215 x_2123) (drop_7 x_2125 (S_75 z_215) (cons_37 x_2122 x_2123)))))
(assert (forall ((z_215 Int))
	(drop_7 nil_37 (S_75 z_215) nil_37)))
(assert (forall ((x_2128 list_37))
	(drop_7 x_2128 Z_214 x_2128)))
(assert (forall ((x_2129 list_37) (x_2130 list_37) (n_16 Int) (x_2124 Int) (xs_62 list_37))
	(=> (and true (diseqlist_37 x_2129 x_2130) (drop_7 x_2129 (S_75 n_16) (cons_37 x_2124 xs_62)) (drop_7 x_2130 n_16 xs_62)) false)))
(check-sat)
