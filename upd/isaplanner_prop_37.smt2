
(set-logic HORN)
(declare-fun Z_218 () Int)
(declare-fun S_77 (Int) Int)
(declare-datatypes ((Bool_40 0)) (((false_40) (true_40))))
(declare-fun diseqBool_14 (Bool_40 Bool_40) Bool)
(declare-fun isfalse_14 (Bool_40) Bool)
(declare-fun istrue_14 (Bool_40) Bool)
(assert (isfalse_14 false_40))
(assert (istrue_14 true_40))
(assert (diseqBool_14 false_40 true_40))
(assert (diseqBool_14 true_40 false_40))
(declare-fun and_40 (Bool_40 Bool_40 Bool_40) Bool)
(declare-fun or_40 (Bool_40 Bool_40 Bool_40) Bool)
(declare-fun hence_40 (Bool_40 Bool_40 Bool_40) Bool)
(declare-fun not_40 (Bool_40 Bool_40) Bool)
(assert (and_40 false_40 false_40 false_40))
(assert (and_40 false_40 true_40 false_40))
(assert (and_40 false_40 false_40 true_40))
(assert (and_40 true_40 true_40 true_40))
(assert (or_40 false_40 false_40 false_40))
(assert (or_40 true_40 true_40 false_40))
(assert (or_40 true_40 false_40 true_40))
(assert (or_40 true_40 true_40 true_40))
(assert (hence_40 true_40 false_40 false_40))
(assert (hence_40 false_40 true_40 false_40))
(assert (hence_40 true_40 false_40 true_40))
(assert (hence_40 true_40 true_40 true_40))
(assert (not_40 true_40 false_40))
(assert (not_40 false_40 true_40))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun projS_75 (Int Int) Bool)
(declare-fun isZ_77 (Int) Bool)
(declare-fun isS_77 (Int) Bool)
(assert (forall ((x_2192 Int))
	(projS_75 x_2192 (S_77 x_2192))))
(assert (isZ_77 Z_218))
(assert (forall ((x_2194 Int))
	(isS_77 (S_77 x_2194))))
(assert (forall ((x_2195 Int))
	(diseqInt Z_218 (S_77 x_2195))))
(assert (forall ((x_2196 Int))
	(diseqInt (S_77 x_2196) Z_218)))
(assert (forall ((x_2197 Int) (x_2198 Int))
	(=> (diseqInt x_2197 x_2198) (diseqInt (S_77 x_2197) (S_77 x_2198)))))
(declare-datatypes ((list_38 0)) (((nil_38) (cons_38 (head_76 Int) (tail_76 list_38)))))
(declare-fun diseqlist_38 (list_38 list_38) Bool)
(declare-fun head_77 (Int list_38) Bool)
(declare-fun tail_77 (list_38 list_38) Bool)
(declare-fun isnil_38 (list_38) Bool)
(declare-fun iscons_38 (list_38) Bool)
(assert (forall ((x_2200 Int) (x_2201 list_38))
	(head_77 x_2200 (cons_38 x_2200 x_2201))))
(assert (forall ((x_2200 Int) (x_2201 list_38))
	(tail_77 x_2201 (cons_38 x_2200 x_2201))))
(assert (isnil_38 nil_38))
(assert (forall ((x_2203 Int) (x_2204 list_38))
	(iscons_38 (cons_38 x_2203 x_2204))))
(assert (forall ((x_2205 Int) (x_2206 list_38))
	(diseqlist_38 nil_38 (cons_38 x_2205 x_2206))))
(assert (forall ((x_2207 Int) (x_2208 list_38))
	(diseqlist_38 (cons_38 x_2207 x_2208) nil_38)))
(assert (forall ((x_2209 Int) (x_2210 list_38) (x_2211 Int) (x_2212 list_38))
	(=> (diseqInt x_2209 x_2211) (diseqlist_38 (cons_38 x_2209 x_2210) (cons_38 x_2211 x_2212)))))
(assert (forall ((x_2209 Int) (x_2210 list_38) (x_2211 Int) (x_2212 list_38))
	(=> (diseqlist_38 x_2210 x_2212) (diseqlist_38 (cons_38 x_2209 x_2210) (cons_38 x_2211 x_2212)))))
(declare-fun x_2162 (Bool_40 Int Int) Bool)
(assert (forall ((x_2168 Bool_40) (y_172 Int) (x_2164 Int))
	(=> (x_2162 x_2168 x_2164 y_172) (x_2162 x_2168 (S_77 x_2164) (S_77 y_172)))))
(assert (forall ((x_2164 Int))
	(x_2162 false_40 (S_77 x_2164) Z_218)))
(assert (forall ((z_219 Int))
	(x_2162 false_40 Z_218 (S_77 z_219))))
(assert (x_2162 true_40 Z_218 Z_218))
(declare-fun delete_1 (list_38 Int list_38) Bool)
(assert (forall ((x_2174 list_38) (z_220 Int) (xs_63 list_38) (x_2165 Int))
	(=> (and (delete_1 x_2174 x_2165 xs_63) (x_2162 true_40 x_2165 z_220)) (delete_1 x_2174 x_2165 (cons_38 z_220 xs_63)))))
(assert (forall ((x_2178 list_38) (z_220 Int) (xs_63 list_38) (x_2165 Int))
	(=> (and (delete_1 x_2178 x_2165 xs_63) (x_2162 false_40 x_2165 z_220)) (delete_1 (cons_38 z_220 x_2178) x_2165 (cons_38 z_220 xs_63)))))
(assert (forall ((x_2165 Int))
	(delete_1 nil_38 x_2165 nil_38)))
(declare-fun elem_3 (Bool_40 Int list_38) Bool)
(assert (forall ((z_221 Int) (xs_64 list_38) (x_2166 Int))
	(=> (x_2162 true_40 x_2166 z_221) (elem_3 true_40 x_2166 (cons_38 z_221 xs_64)))))
(assert (forall ((x_2183 Bool_40) (z_221 Int) (xs_64 list_38) (x_2166 Int))
	(=> (and (elem_3 x_2183 x_2166 xs_64) (x_2162 false_40 x_2166 z_221)) (elem_3 x_2183 x_2166 (cons_38 z_221 xs_64)))))
(assert (forall ((x_2166 Int))
	(elem_3 false_40 x_2166 nil_38)))
(assert (forall ((x_2186 list_38) (x_2167 Int) (xs_65 list_38))
	(=> (and true (delete_1 x_2186 x_2167 xs_65) (elem_3 true_40 x_2167 x_2186)) false)))
(check-sat)
