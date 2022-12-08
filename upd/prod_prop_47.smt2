
(set-logic HORN)
(declare-fun Z_2137 () Int)
(declare-fun S_498 (Int) Int)
(declare-datatypes ((Bool_359 0)) (((false_359) (true_359))))
(declare-fun diseqBool_163 (Bool_359 Bool_359) Bool)
(declare-fun isfalse_163 (Bool_359) Bool)
(declare-fun istrue_163 (Bool_359) Bool)
(assert (isfalse_163 false_359))
(assert (istrue_163 true_359))
(assert (diseqBool_163 false_359 true_359))
(assert (diseqBool_163 true_359 false_359))
(declare-fun and_359 (Bool_359 Bool_359 Bool_359) Bool)
(declare-fun or_366 (Bool_359 Bool_359 Bool_359) Bool)
(declare-fun hence_359 (Bool_359 Bool_359 Bool_359) Bool)
(declare-fun not_364 (Bool_359 Bool_359) Bool)
(assert (and_359 false_359 false_359 false_359))
(assert (and_359 false_359 true_359 false_359))
(assert (and_359 false_359 false_359 true_359))
(assert (and_359 true_359 true_359 true_359))
(assert (or_366 false_359 false_359 false_359))
(assert (or_366 true_359 true_359 false_359))
(assert (or_366 true_359 false_359 true_359))
(assert (or_366 true_359 true_359 true_359))
(assert (hence_359 true_359 false_359 false_359))
(assert (hence_359 false_359 true_359 false_359))
(assert (hence_359 true_359 false_359 true_359))
(assert (hence_359 true_359 true_359 true_359))
(assert (not_364 true_359 false_359))
(assert (not_364 false_359 true_359))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun projS_213 (Int Int) Bool)
(declare-fun isZ_465 (Int) Bool)
(declare-fun isS_465 (Int) Bool)
(assert (forall ((x_56225 Int))
	(projS_213 x_56225 (S_498 x_56225))))
(assert (isZ_465 Z_2137))
(assert (forall ((x_56227 Int))
	(isS_465 (S_498 x_56227))))
(assert (forall ((x_56228 Int))
	(diseqInt Z_2137 (S_498 x_56228))))
(assert (forall ((x_56229 Int))
	(diseqInt (S_498 x_56229) Z_2137)))
(assert (forall ((x_56230 Int) (x_56231 Int))
	(=> (diseqInt x_56230 x_56231) (diseqInt (S_498 x_56230) (S_498 x_56231)))))
(declare-datatypes ((list_259 0)) (((nil_289) (cons_259 (head_518 Int) (tail_518 list_259)))))
(declare-fun diseqlist_259 (list_259 list_259) Bool)
(declare-fun head_519 (Int list_259) Bool)
(declare-fun tail_519 (list_259 list_259) Bool)
(declare-fun isnil_289 (list_259) Bool)
(declare-fun iscons_259 (list_259) Bool)
(assert (forall ((x_56233 Int) (x_56234 list_259))
	(head_519 x_56233 (cons_259 x_56233 x_56234))))
(assert (forall ((x_56233 Int) (x_56234 list_259))
	(tail_519 x_56234 (cons_259 x_56233 x_56234))))
(assert (isnil_289 nil_289))
(assert (forall ((x_56236 Int) (x_56237 list_259))
	(iscons_259 (cons_259 x_56236 x_56237))))
(assert (forall ((x_56238 Int) (x_56239 list_259))
	(diseqlist_259 nil_289 (cons_259 x_56238 x_56239))))
(assert (forall ((x_56240 Int) (x_56241 list_259))
	(diseqlist_259 (cons_259 x_56240 x_56241) nil_289)))
(assert (forall ((x_56242 Int) (x_56243 list_259) (x_56244 Int) (x_56245 list_259))
	(=> (diseqInt x_56242 x_56244) (diseqlist_259 (cons_259 x_56242 x_56243) (cons_259 x_56244 x_56245)))))
(assert (forall ((x_56242 Int) (x_56243 list_259) (x_56244 Int) (x_56245 list_259))
	(=> (diseqlist_259 x_56243 x_56245) (diseqlist_259 (cons_259 x_56242 x_56243) (cons_259 x_56244 x_56245)))))
(declare-fun barbar_11 (Bool_359 Bool_359 Bool_359) Bool)
(assert (forall ((y_2374 Bool_359))
	(barbar_11 true_359 true_359 y_2374)))
(assert (forall ((x_56193 Bool_359))
	(barbar_11 x_56193 false_359 x_56193)))
(declare-fun x_56181 (Bool_359 Int Int) Bool)
(assert (forall ((x_56194 Bool_359) (y_2376 Int) (x_56183 Int))
	(=> (x_56181 x_56194 x_56183 y_2376) (x_56181 x_56194 (S_498 x_56183) (S_498 y_2376)))))
(assert (forall ((x_56183 Int))
	(x_56181 false_359 (S_498 x_56183) Z_2137)))
(assert (forall ((z_2138 Int))
	(x_56181 false_359 Z_2137 (S_498 z_2138))))
(assert (x_56181 true_359 Z_2137 Z_2137))
(declare-fun elem_23 (Bool_359 Int list_259) Bool)
(assert (forall ((x_56199 Bool_359) (x_56200 Bool_359) (x_56201 Bool_359) (z_2139 Int) (xs_689 list_259) (x_56184 Int))
	(=> (and (x_56181 x_56200 x_56184 z_2139) (elem_23 x_56201 x_56184 xs_689) (barbar_11 x_56199 x_56200 x_56201)) (elem_23 x_56199 x_56184 (cons_259 z_2139 xs_689)))))
(assert (forall ((x_56184 Int))
	(elem_23 false_359 x_56184 nil_289)))
(declare-fun x_56185 (Bool_359 Int Int) Bool)
(assert (forall ((x_56204 Bool_359) (x_56187 Int) (z_2140 Int))
	(=> (x_56185 x_56204 z_2140 x_56187) (x_56185 x_56204 (S_498 z_2140) (S_498 x_56187)))))
(assert (forall ((z_2140 Int))
	(x_56185 false_359 (S_498 z_2140) Z_2137)))
(assert (forall ((y_2378 Int))
	(x_56185 true_359 Z_2137 y_2378)))
(declare-fun insert_34 (list_259 Int list_259) Bool)
(assert (forall ((z_2141 Int) (xs_690 list_259) (x_56188 Int))
	(=> (x_56185 true_359 x_56188 z_2141) (insert_34 (cons_259 x_56188 (cons_259 z_2141 xs_690)) x_56188 (cons_259 z_2141 xs_690)))))
(assert (forall ((x_56212 list_259) (z_2141 Int) (xs_690 list_259) (x_56188 Int))
	(=> (and (insert_34 x_56212 x_56188 xs_690) (x_56185 false_359 x_56188 z_2141)) (insert_34 (cons_259 z_2141 x_56212) x_56188 (cons_259 z_2141 xs_690)))))
(assert (forall ((x_56188 Int))
	(insert_34 (cons_259 x_56188 nil_289) x_56188 nil_289)))
(declare-fun x_56189 (Bool_359 Int Int) Bool)
(assert (forall ((x_56214 Bool_359) (x_56215 Bool_359) (x_56190 Int) (y_2380 Int))
	(=> (and (x_56181 x_56215 x_56190 y_2380) (not_364 x_56214 x_56215)) (x_56189 x_56214 x_56190 y_2380))))
(assert (forall ((x_56216 list_259) (x_56217 Bool_359) (x_56218 Bool_359) (x_56191 Int) (y_2381 Int) (z_2142 list_259))
	(=> (and true (diseqBool_163 x_56217 x_56218) (x_56189 true_359 x_56191 y_2381) (insert_34 x_56216 y_2381 z_2142) (elem_23 x_56217 x_56191 x_56216) (elem_23 x_56218 x_56191 z_2142)) false)))
(check-sat)
