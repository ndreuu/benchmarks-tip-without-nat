
(set-logic HORN)
(declare-fun Z_2029 () Int)
(declare-fun S_462 (Int) Int)
(declare-datatypes ((Bool_337 0)) (((false_337) (true_337))))
(declare-fun diseqBool_155 (Bool_337 Bool_337) Bool)
(declare-fun isfalse_155 (Bool_337) Bool)
(declare-fun istrue_155 (Bool_337) Bool)
(assert (isfalse_155 false_337))
(assert (istrue_155 true_337))
(assert (diseqBool_155 false_337 true_337))
(assert (diseqBool_155 true_337 false_337))
(declare-fun and_337 (Bool_337 Bool_337 Bool_337) Bool)
(declare-fun or_344 (Bool_337 Bool_337 Bool_337) Bool)
(declare-fun hence_337 (Bool_337 Bool_337 Bool_337) Bool)
(declare-fun not_342 (Bool_337 Bool_337) Bool)
(assert (and_337 false_337 false_337 false_337))
(assert (and_337 false_337 true_337 false_337))
(assert (and_337 false_337 false_337 true_337))
(assert (and_337 true_337 true_337 true_337))
(assert (or_344 false_337 false_337 false_337))
(assert (or_344 true_337 true_337 false_337))
(assert (or_344 true_337 false_337 true_337))
(assert (or_344 true_337 true_337 true_337))
(assert (hence_337 true_337 false_337 false_337))
(assert (hence_337 false_337 true_337 false_337))
(assert (hence_337 true_337 false_337 true_337))
(assert (hence_337 true_337 true_337 true_337))
(assert (not_342 true_337 false_337))
(assert (not_342 false_337 true_337))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun projS_185 (Int Int) Bool)
(declare-fun isZ_429 (Int) Bool)
(declare-fun isS_429 (Int) Bool)
(assert (forall ((x_55142 Int))
	(projS_185 x_55142 (S_462 x_55142))))
(assert (isZ_429 Z_2029))
(assert (forall ((x_55144 Int))
	(isS_429 (S_462 x_55144))))
(assert (forall ((x_55145 Int))
	(diseqInt Z_2029 (S_462 x_55145))))
(assert (forall ((x_55146 Int))
	(diseqInt (S_462 x_55146) Z_2029)))
(assert (forall ((x_55147 Int) (x_55148 Int))
	(=> (diseqInt x_55147 x_55148) (diseqInt (S_462 x_55147) (S_462 x_55148)))))
(declare-datatypes ((list_240 0)) (((nil_270) (cons_240 (head_480 Int) (tail_480 list_240)))))
(declare-fun diseqlist_240 (list_240 list_240) Bool)
(declare-fun head_481 (Int list_240) Bool)
(declare-fun tail_481 (list_240 list_240) Bool)
(declare-fun isnil_270 (list_240) Bool)
(declare-fun iscons_240 (list_240) Bool)
(assert (forall ((x_55150 Int) (x_55151 list_240))
	(head_481 x_55150 (cons_240 x_55150 x_55151))))
(assert (forall ((x_55150 Int) (x_55151 list_240))
	(tail_481 x_55151 (cons_240 x_55150 x_55151))))
(assert (isnil_270 nil_270))
(assert (forall ((x_55153 Int) (x_55154 list_240))
	(iscons_240 (cons_240 x_55153 x_55154))))
(assert (forall ((x_55155 Int) (x_55156 list_240))
	(diseqlist_240 nil_270 (cons_240 x_55155 x_55156))))
(assert (forall ((x_55157 Int) (x_55158 list_240))
	(diseqlist_240 (cons_240 x_55157 x_55158) nil_270)))
(assert (forall ((x_55159 Int) (x_55160 list_240) (x_55161 Int) (x_55162 list_240))
	(=> (diseqInt x_55159 x_55161) (diseqlist_240 (cons_240 x_55159 x_55160) (cons_240 x_55161 x_55162)))))
(assert (forall ((x_55159 Int) (x_55160 list_240) (x_55161 Int) (x_55162 list_240))
	(=> (diseqlist_240 x_55160 x_55162) (diseqlist_240 (cons_240 x_55159 x_55160) (cons_240 x_55161 x_55162)))))
(declare-fun barbar_5 (Bool_337 Bool_337 Bool_337) Bool)
(assert (forall ((y_2262 Bool_337))
	(barbar_5 true_337 true_337 y_2262)))
(assert (forall ((x_55117 Bool_337))
	(barbar_5 x_55117 false_337 x_55117)))
(declare-fun x_55110 (Bool_337 Int Int) Bool)
(assert (forall ((x_55118 Bool_337) (y_2264 Int) (x_55112 Int))
	(=> (x_55110 x_55118 x_55112 y_2264) (x_55110 x_55118 (S_462 x_55112) (S_462 y_2264)))))
(assert (forall ((x_55112 Int))
	(x_55110 false_337 (S_462 x_55112) Z_2029)))
(assert (forall ((z_2030 Int))
	(x_55110 false_337 Z_2029 (S_462 z_2030))))
(assert (x_55110 true_337 Z_2029 Z_2029))
(declare-fun elem_17 (Bool_337 Int list_240) Bool)
(assert (forall ((x_55123 Bool_337) (x_55124 Bool_337) (x_55125 Bool_337) (z_2031 Int) (xs_647 list_240) (x_55113 Int))
	(=> (and (x_55110 x_55124 x_55113 z_2031) (elem_17 x_55125 x_55113 xs_647) (barbar_5 x_55123 x_55124 x_55125)) (elem_17 x_55123 x_55113 (cons_240 z_2031 xs_647)))))
(assert (forall ((x_55113 Int))
	(elem_17 false_337 x_55113 nil_270)))
(declare-fun union_1 (list_240 list_240 list_240) Bool)
(assert (forall ((x_55129 list_240) (z_2032 Int) (xs_648 list_240) (y_2266 list_240))
	(=> (and (union_1 x_55129 xs_648 y_2266) (elem_17 true_337 z_2032 y_2266)) (union_1 x_55129 (cons_240 z_2032 xs_648) y_2266))))
(assert (forall ((x_55133 list_240) (z_2032 Int) (xs_648 list_240) (y_2266 list_240))
	(=> (and (union_1 x_55133 xs_648 y_2266) (elem_17 false_337 z_2032 y_2266)) (union_1 (cons_240 z_2032 x_55133) (cons_240 z_2032 xs_648) y_2266))))
(assert (forall ((x_55134 list_240))
	(union_1 x_55134 nil_270 x_55134)))
(assert (forall ((x_55135 list_240) (x_55115 Int) (y_2267 list_240) (z_2033 list_240))
	(=> (and true (elem_17 true_337 x_55115 y_2267) (union_1 x_55135 z_2033 y_2267) (elem_17 false_337 x_55115 x_55135)) false)))
(check-sat)