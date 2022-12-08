
(set-logic HORN)
(declare-fun Z_566 () Int)
(declare-fun S_184 (Int) Int)
(declare-fun diseqInt (Int Int) Bool)
(declare-fun unS_211 (Int Int) Bool)
(declare-fun isZ_178 (Int) Bool)
(declare-fun isS_178 (Int) Bool)
(assert (forall ((x_12215 Int))
	(unS_211 x_12215 (S_184 x_12215))))
(assert (isZ_178 Z_566))
(assert (forall ((x_12217 Int))
	(isS_178 (S_184 x_12217))))
(assert (forall ((x_12218 Int))
	(diseqInt Z_566 (S_184 x_12218))))
(assert (forall ((x_12219 Int))
	(diseqInt (S_184 x_12219) Z_566)))
(assert (forall ((x_12220 Int) (x_12221 Int))
	(=> (diseqInt x_12220 x_12221) (diseqInt (S_184 x_12220) (S_184 x_12221)))))
(declare-fun add_109 (Int Int Int) Bool)
(declare-fun minus_106 (Int Int Int) Bool)
(declare-fun le_105 (Int Int) Bool)
(declare-fun ge_105 (Int Int) Bool)
(declare-fun lt_107 (Int Int) Bool)
(declare-fun gt_106 (Int Int) Bool)
(declare-fun mult_105 (Int Int Int) Bool)
(declare-fun div_105 (Int Int Int) Bool)
(declare-fun mod_105 (Int Int Int) Bool)
(assert (forall ((y_510 Int))
	(add_109 y_510 Z_566 y_510)))
(assert (forall ((x_12213 Int) (y_510 Int) (r_119 Int))
	(=> (add_109 r_119 x_12213 y_510) (add_109 (S_184 r_119) (S_184 x_12213) y_510))))
(assert (forall ((y_510 Int))
	(minus_106 Z_566 Z_566 y_510)))
(assert (forall ((x_12213 Int) (y_510 Int) (r_119 Int))
	(=> (minus_106 r_119 x_12213 y_510) (minus_106 (S_184 r_119) (S_184 x_12213) y_510))))
(assert (forall ((y_510 Int))
	(le_105 Z_566 y_510)))
(assert (forall ((x_12213 Int) (y_510 Int))
	(=> (le_105 x_12213 y_510) (le_105 (S_184 x_12213) (S_184 y_510)))))
(assert (forall ((y_510 Int))
	(ge_105 y_510 Z_566)))
(assert (forall ((x_12213 Int) (y_510 Int))
	(=> (ge_105 x_12213 y_510) (ge_105 (S_184 x_12213) (S_184 y_510)))))
(assert (forall ((y_510 Int))
	(lt_107 Z_566 (S_184 y_510))))
(assert (forall ((x_12213 Int) (y_510 Int))
	(=> (lt_107 x_12213 y_510) (lt_107 (S_184 x_12213) (S_184 y_510)))))
(assert (forall ((y_510 Int))
	(gt_106 (S_184 y_510) Z_566)))
(assert (forall ((x_12213 Int) (y_510 Int))
	(=> (gt_106 x_12213 y_510) (gt_106 (S_184 x_12213) (S_184 y_510)))))
(assert (forall ((y_510 Int))
	(mult_105 Z_566 Z_566 y_510)))
(assert (forall ((x_12213 Int) (y_510 Int) (r_119 Int) (z_567 Int))
	(=> (and (mult_105 r_119 x_12213 y_510) (add_109 z_567 r_119 y_510)) (mult_105 z_567 (S_184 x_12213) y_510))))
(assert (forall ((x_12213 Int) (y_510 Int))
	(=> (lt_107 x_12213 y_510) (div_105 Z_566 x_12213 y_510))))
(assert (forall ((x_12213 Int) (y_510 Int) (r_119 Int) (z_567 Int))
	(=> (and (ge_105 x_12213 y_510) (minus_106 z_567 x_12213 y_510) (div_105 r_119 z_567 y_510)) (div_105 (S_184 r_119) x_12213 y_510))))
(assert (forall ((x_12213 Int) (y_510 Int))
	(=> (lt_107 x_12213 y_510) (mod_105 x_12213 x_12213 y_510))))
(assert (forall ((x_12213 Int) (y_510 Int) (r_119 Int) (z_567 Int))
	(=> (and (ge_105 x_12213 y_510) (minus_106 z_567 x_12213 y_510) (mod_105 r_119 z_567 y_510)) (mod_105 r_119 x_12213 y_510))))
(declare-datatypes ((Bool_105 0)) (((false_105) (true_105))))
(declare-fun diseqBool_48 (Bool_105 Bool_105) Bool)
(declare-fun isfalse_48 (Bool_105) Bool)
(declare-fun istrue_48 (Bool_105) Bool)
(assert (isfalse_48 false_105))
(assert (istrue_48 true_105))
(assert (diseqBool_48 false_105 true_105))
(assert (diseqBool_48 true_105 false_105))
(declare-fun and_105 (Bool_105 Bool_105 Bool_105) Bool)
(declare-fun or_106 (Bool_105 Bool_105 Bool_105) Bool)
(declare-fun hence_105 (Bool_105 Bool_105 Bool_105) Bool)
(declare-fun not_105 (Bool_105 Bool_105) Bool)
(assert (and_105 false_105 false_105 false_105))
(assert (and_105 false_105 true_105 false_105))
(assert (and_105 false_105 false_105 true_105))
(assert (and_105 true_105 true_105 true_105))
(assert (or_106 false_105 false_105 false_105))
(assert (or_106 true_105 true_105 false_105))
(assert (or_106 true_105 false_105 true_105))
(assert (or_106 true_105 true_105 true_105))
(assert (hence_105 true_105 false_105 false_105))
(assert (hence_105 false_105 true_105 false_105))
(assert (hence_105 true_105 false_105 true_105))
(assert (hence_105 true_105 true_105 true_105))
(assert (not_105 true_105 false_105))
(assert (not_105 false_105 true_105))
(declare-datatypes ((list_81 0)) (((nil_86) (cons_81 (head_162 Int) (tail_162 list_81)))))
(declare-fun diseqlist_81 (list_81 list_81) Bool)
(declare-fun head_163 (Int list_81) Bool)
(declare-fun tail_163 (list_81 list_81) Bool)
(declare-fun isnil_86 (list_81) Bool)
(declare-fun iscons_81 (list_81) Bool)
(assert (forall ((x_12225 Int) (x_12226 list_81))
	(head_163 x_12225 (cons_81 x_12225 x_12226))))
(assert (forall ((x_12225 Int) (x_12226 list_81))
	(tail_163 x_12226 (cons_81 x_12225 x_12226))))
(assert (isnil_86 nil_86))
(assert (forall ((x_12228 Int) (x_12229 list_81))
	(iscons_81 (cons_81 x_12228 x_12229))))
(assert (forall ((x_12230 Int) (x_12231 list_81))
	(diseqlist_81 nil_86 (cons_81 x_12230 x_12231))))
(assert (forall ((x_12232 Int) (x_12233 list_81))
	(diseqlist_81 (cons_81 x_12232 x_12233) nil_86)))
(assert (forall ((x_12234 Int) (x_12235 list_81) (x_12236 Int) (x_12237 list_81))
	(=> (diseqInt x_12234 x_12236) (diseqlist_81 (cons_81 x_12234 x_12235) (cons_81 x_12236 x_12237)))))
(assert (forall ((x_12234 Int) (x_12235 list_81) (x_12236 Int) (x_12237 list_81))
	(=> (diseqlist_81 x_12235 x_12237) (diseqlist_81 (cons_81 x_12234 x_12235) (cons_81 x_12236 x_12237)))))
(declare-datatypes ((Tree_1 0)) (((TNode_0 (projTNode_0 Tree_1) (projTNode_1 Int) (projTNode_2 Tree_1)) (TNil_0))))
(declare-fun diseqTree_1 (Tree_1 Tree_1) Bool)
(declare-fun projTNode_3 (Tree_1 Tree_1) Bool)
(declare-fun projTNode_4 (Int Tree_1) Bool)
(declare-fun projTNode_5 (Tree_1 Tree_1) Bool)
(declare-fun isTNode_0 (Tree_1) Bool)
(declare-fun isTNil_0 (Tree_1) Bool)
(assert (forall ((x_12238 Tree_1) (x_12239 Int) (x_12240 Tree_1))
	(projTNode_3 x_12238 (TNode_0 x_12238 x_12239 x_12240))))
(assert (forall ((x_12238 Tree_1) (x_12239 Int) (x_12240 Tree_1))
	(projTNode_4 x_12239 (TNode_0 x_12238 x_12239 x_12240))))
(assert (forall ((x_12238 Tree_1) (x_12239 Int) (x_12240 Tree_1))
	(projTNode_5 x_12240 (TNode_0 x_12238 x_12239 x_12240))))
(assert (forall ((x_12243 Tree_1) (x_12244 Int) (x_12245 Tree_1))
	(isTNode_0 (TNode_0 x_12243 x_12244 x_12245))))
(assert (isTNil_0 TNil_0))
(assert (forall ((x_12246 Tree_1) (x_12247 Int) (x_12248 Tree_1))
	(diseqTree_1 (TNode_0 x_12246 x_12247 x_12248) TNil_0)))
(assert (forall ((x_12249 Tree_1) (x_12250 Int) (x_12251 Tree_1))
	(diseqTree_1 TNil_0 (TNode_0 x_12249 x_12250 x_12251))))
(assert (forall ((x_12252 Tree_1) (x_12253 Int) (x_12254 Tree_1) (x_12255 Tree_1) (x_12256 Int) (x_12257 Tree_1))
	(=> (diseqTree_1 x_12252 x_12255) (diseqTree_1 (TNode_0 x_12252 x_12253 x_12254) (TNode_0 x_12255 x_12256 x_12257)))))
(assert (forall ((x_12252 Tree_1) (x_12253 Int) (x_12254 Tree_1) (x_12255 Tree_1) (x_12256 Int) (x_12257 Tree_1))
	(=> (diseqInt x_12253 x_12256) (diseqTree_1 (TNode_0 x_12252 x_12253 x_12254) (TNode_0 x_12255 x_12256 x_12257)))))
(assert (forall ((x_12252 Tree_1) (x_12253 Int) (x_12254 Tree_1) (x_12255 Tree_1) (x_12256 Int) (x_12257 Tree_1))
	(=> (diseqTree_1 x_12254 x_12257) (diseqTree_1 (TNode_0 x_12252 x_12253 x_12254) (TNode_0 x_12255 x_12256 x_12257)))))
(declare-fun ordered_2 (Bool_105 list_81) Bool)
(assert (forall ((x_12190 Bool_105) (y_506 Int) (xs_167 list_81) (y_505 Int))
	(=> (and (le_105 y_505 y_506) (ordered_2 x_12190 (cons_81 y_506 xs_167))) (ordered_2 x_12190 (cons_81 y_505 (cons_81 y_506 xs_167))))))
(assert (forall ((y_506 Int) (xs_167 list_81) (y_505 Int))
	(=> (gt_106 y_505 y_506) (ordered_2 false_105 (cons_81 y_505 (cons_81 y_506 xs_167))))))
(assert (forall ((y_505 Int))
	(ordered_2 true_105 (cons_81 y_505 nil_86))))
(assert (ordered_2 true_105 nil_86))
(declare-fun flatten_0 (list_81 Tree_1 list_81) Bool)
(assert (forall ((x_12195 list_81))
	(flatten_0 x_12195 TNil_0 x_12195)))
(assert (forall ((x_12196 list_81) (x_12197 list_81) (p_46 Tree_1) (z_564 Int) (q_17 Tree_1) (y_507 list_81))
	(=> (and (flatten_0 x_12197 q_17 y_507) (flatten_0 x_12196 p_46 (cons_81 z_564 x_12197))) (flatten_0 x_12196 (TNode_0 p_46 z_564 q_17) y_507))))
(declare-fun add_108 (Tree_1 Int Tree_1) Bool)
(assert (forall ((x_12187 Int))
	(add_108 (TNode_0 TNil_0 x_12187 TNil_0) x_12187 TNil_0)))
(assert (forall ((x_12201 Tree_1) (p_47 Tree_1) (z_565 Int) (q_18 Tree_1) (x_12187 Int))
	(=> (and (le_105 x_12187 z_565) (add_108 x_12201 x_12187 p_47)) (add_108 (TNode_0 x_12201 z_565 q_18) x_12187 (TNode_0 p_47 z_565 q_18)))))
(assert (forall ((x_12203 Tree_1) (p_47 Tree_1) (z_565 Int) (q_18 Tree_1) (x_12187 Int))
	(=> (and (gt_106 x_12187 z_565) (add_108 x_12203 x_12187 q_18)) (add_108 (TNode_0 p_47 z_565 x_12203) x_12187 (TNode_0 p_47 z_565 q_18)))))
(declare-fun toTree_0 (Tree_1 list_81) Bool)
(assert (forall ((x_12204 Tree_1) (x_12205 Tree_1) (y_509 Int) (xs_168 list_81))
	(=> (and (toTree_0 x_12205 xs_168) (add_108 x_12204 y_509 x_12205)) (toTree_0 x_12204 (cons_81 y_509 xs_168)))))
(assert (toTree_0 TNil_0 nil_86))
(declare-fun tsort_0 (list_81 list_81) Bool)
(assert (forall ((x_12208 list_81) (x_12209 Tree_1) (x_12189 list_81))
	(=> (and (toTree_0 x_12209 x_12189) (flatten_0 x_12208 x_12209 nil_86)) (tsort_0 x_12208 x_12189))))
(assert (forall ((x_12211 list_81) (xs_169 list_81))
	(=> (and true (tsort_0 x_12211 xs_169) (ordered_2 false_105 x_12211)) false)))
(check-sat)
