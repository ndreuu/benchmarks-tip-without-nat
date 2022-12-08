
(set-logic HORN)
(declare-fun zero_36 () Int)
(declare-fun succ_36 (Int) Int)
(declare-datatypes ((Bool_140 0)) (((false_140) (true_140))))
(declare-fun diseqBool_60 (Bool_140 Bool_140) Bool)
(declare-fun isfalse_60 (Bool_140) Bool)
(declare-fun istrue_60 (Bool_140) Bool)
(assert (isfalse_60 false_140))
(assert (istrue_60 true_140))
(assert (diseqBool_60 false_140 true_140))
(assert (diseqBool_60 true_140 false_140))
(declare-fun and_140 (Bool_140 Bool_140 Bool_140) Bool)
(declare-fun or_141 (Bool_140 Bool_140 Bool_140) Bool)
(declare-fun hence_140 (Bool_140 Bool_140 Bool_140) Bool)
(declare-fun not_140 (Bool_140 Bool_140) Bool)
(assert (and_140 false_140 false_140 false_140))
(assert (and_140 false_140 true_140 false_140))
(assert (and_140 false_140 false_140 true_140))
(assert (and_140 true_140 true_140 true_140))
(assert (or_141 false_140 false_140 false_140))
(assert (or_141 true_140 true_140 false_140))
(assert (or_141 true_140 false_140 true_140))
(assert (or_141 true_140 true_140 true_140))
(assert (hence_140 true_140 false_140 false_140))
(assert (hence_140 false_140 true_140 false_140))
(assert (hence_140 true_140 false_140 true_140))
(assert (hence_140 true_140 true_140 true_140))
(assert (not_140 true_140 false_140))
(assert (not_140 false_140 true_140))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_106 (Int Int) Bool)
(declare-fun iszero_36 (Int) Bool)
(declare-fun issucc_36 (Int) Bool)
(assert (forall ((x_21297 Int))
	(p_106 x_21297 (succ_36 x_21297))))
(assert (iszero_36 zero_36))
(assert (forall ((x_21299 Int))
	(issucc_36 (succ_36 x_21299))))
(assert (forall ((x_21300 Int))
	(diseqInt zero_36 (succ_36 x_21300))))
(assert (forall ((x_21301 Int))
	(diseqInt (succ_36 x_21301) zero_36)))
(assert (forall ((x_21302 Int) (x_21303 Int))
	(=> (diseqInt x_21302 x_21303) (diseqInt (succ_36 x_21302) (succ_36 x_21303)))))
(declare-datatypes ((Tree_3 0)) (((TNode_1 (projTNode_6 Tree_3) (projTNode_7 Int) (projTNode_8 Tree_3)) (TNil_1))))
(declare-fun diseqTree_3 (Tree_3 Tree_3) Bool)
(declare-fun projTNode_9 (Tree_3 Tree_3) Bool)
(declare-fun projTNode_10 (Int Tree_3) Bool)
(declare-fun projTNode_11 (Tree_3 Tree_3) Bool)
(declare-fun isTNode_1 (Tree_3) Bool)
(declare-fun isTNil_1 (Tree_3) Bool)
(assert (forall ((x_21304 Tree_3) (x_21305 Int) (x_21306 Tree_3))
	(projTNode_9 x_21304 (TNode_1 x_21304 x_21305 x_21306))))
(assert (forall ((x_21304 Tree_3) (x_21305 Int) (x_21306 Tree_3))
	(projTNode_10 x_21305 (TNode_1 x_21304 x_21305 x_21306))))
(assert (forall ((x_21304 Tree_3) (x_21305 Int) (x_21306 Tree_3))
	(projTNode_11 x_21306 (TNode_1 x_21304 x_21305 x_21306))))
(assert (forall ((x_21309 Tree_3) (x_21310 Int) (x_21311 Tree_3))
	(isTNode_1 (TNode_1 x_21309 x_21310 x_21311))))
(assert (isTNil_1 TNil_1))
(assert (forall ((x_21312 Tree_3) (x_21313 Int) (x_21314 Tree_3))
	(diseqTree_3 (TNode_1 x_21312 x_21313 x_21314) TNil_1)))
(assert (forall ((x_21315 Tree_3) (x_21316 Int) (x_21317 Tree_3))
	(diseqTree_3 TNil_1 (TNode_1 x_21315 x_21316 x_21317))))
(assert (forall ((x_21318 Tree_3) (x_21319 Int) (x_21320 Tree_3) (x_21321 Tree_3) (x_21322 Int) (x_21323 Tree_3))
	(=> (diseqTree_3 x_21318 x_21321) (diseqTree_3 (TNode_1 x_21318 x_21319 x_21320) (TNode_1 x_21321 x_21322 x_21323)))))
(assert (forall ((x_21318 Tree_3) (x_21319 Int) (x_21320 Tree_3) (x_21321 Tree_3) (x_21322 Int) (x_21323 Tree_3))
	(=> (diseqInt x_21319 x_21322) (diseqTree_3 (TNode_1 x_21318 x_21319 x_21320) (TNode_1 x_21321 x_21322 x_21323)))))
(assert (forall ((x_21318 Tree_3) (x_21319 Int) (x_21320 Tree_3) (x_21321 Tree_3) (x_21322 Int) (x_21323 Tree_3))
	(=> (diseqTree_3 x_21320 x_21323) (diseqTree_3 (TNode_1 x_21318 x_21319 x_21320) (TNode_1 x_21321 x_21322 x_21323)))))
(declare-datatypes ((list_103 0)) (((nil_113) (cons_103 (head_206 Int) (tail_206 list_103)))))
(declare-fun diseqlist_103 (list_103 list_103) Bool)
(declare-fun head_207 (Int list_103) Bool)
(declare-fun tail_207 (list_103 list_103) Bool)
(declare-fun isnil_113 (list_103) Bool)
(declare-fun iscons_103 (list_103) Bool)
(assert (forall ((x_21325 Int) (x_21326 list_103))
	(head_207 x_21325 (cons_103 x_21325 x_21326))))
(assert (forall ((x_21325 Int) (x_21326 list_103))
	(tail_207 x_21326 (cons_103 x_21325 x_21326))))
(assert (isnil_113 nil_113))
(assert (forall ((x_21328 Int) (x_21329 list_103))
	(iscons_103 (cons_103 x_21328 x_21329))))
(assert (forall ((x_21330 Int) (x_21331 list_103))
	(diseqlist_103 nil_113 (cons_103 x_21330 x_21331))))
(assert (forall ((x_21332 Int) (x_21333 list_103))
	(diseqlist_103 (cons_103 x_21332 x_21333) nil_113)))
(assert (forall ((x_21334 Int) (x_21335 list_103) (x_21336 Int) (x_21337 list_103))
	(=> (diseqInt x_21334 x_21336) (diseqlist_103 (cons_103 x_21334 x_21335) (cons_103 x_21336 x_21337)))))
(assert (forall ((x_21334 Int) (x_21335 list_103) (x_21336 Int) (x_21337 list_103))
	(=> (diseqlist_103 x_21335 x_21337) (diseqlist_103 (cons_103 x_21334 x_21335) (cons_103 x_21336 x_21337)))))
(declare-fun leq_14 (Bool_140 Int Int) Bool)
(assert (forall ((x_21259 Bool_140) (x_21252 Int) (z_781 Int))
	(=> (leq_14 x_21259 z_781 x_21252) (leq_14 x_21259 (succ_36 z_781) (succ_36 x_21252)))))
(assert (forall ((z_781 Int))
	(leq_14 false_140 (succ_36 z_781) zero_36)))
(assert (forall ((y_774 Int))
	(leq_14 true_140 zero_36 y_774)))
(declare-fun insert_9 (list_103 Int list_103) Bool)
(assert (forall ((z_782 Int) (xs_242 list_103) (x_21253 Int))
	(=> (leq_14 true_140 x_21253 z_782) (insert_9 (cons_103 x_21253 (cons_103 z_782 xs_242)) x_21253 (cons_103 z_782 xs_242)))))
(assert (forall ((x_21267 list_103) (z_782 Int) (xs_242 list_103) (x_21253 Int))
	(=> (and (insert_9 x_21267 x_21253 xs_242) (leq_14 false_140 x_21253 z_782)) (insert_9 (cons_103 z_782 x_21267) x_21253 (cons_103 z_782 xs_242)))))
(assert (forall ((x_21253 Int))
	(insert_9 (cons_103 x_21253 nil_113) x_21253 nil_113)))
(declare-fun isort_9 (list_103 list_103) Bool)
(assert (forall ((x_21269 list_103) (x_21270 list_103) (y_776 Int) (xs_243 list_103))
	(=> (and (isort_9 x_21270 xs_243) (insert_9 x_21269 y_776 x_21270)) (isort_9 x_21269 (cons_103 y_776 xs_243)))))
(assert (isort_9 nil_113 nil_113))
(declare-fun flatten_3 (list_103 Tree_3 list_103) Bool)
(assert (forall ((x_21273 list_103))
	(flatten_3 x_21273 TNil_1 x_21273)))
(assert (forall ((x_21274 list_103) (x_21275 list_103) (q_37 Tree_3) (z_783 Int) (r_165 Tree_3) (y_777 list_103))
	(=> (and (flatten_3 x_21275 r_165 y_777) (flatten_3 x_21274 q_37 (cons_103 z_783 x_21275))) (flatten_3 x_21274 (TNode_1 q_37 z_783 r_165) y_777))))
(declare-fun add_147 (Tree_3 Int Tree_3) Bool)
(assert (forall ((x_21256 Int))
	(add_147 (TNode_1 TNil_1 x_21256 TNil_1) x_21256 TNil_1)))
(assert (forall ((x_21280 Tree_3) (q_38 Tree_3) (z_784 Int) (r_166 Tree_3) (x_21256 Int))
	(=> (and (add_147 x_21280 x_21256 q_38) (leq_14 true_140 x_21256 z_784)) (add_147 (TNode_1 x_21280 z_784 r_166) x_21256 (TNode_1 q_38 z_784 r_166)))))
(assert (forall ((x_21283 Tree_3) (q_38 Tree_3) (z_784 Int) (r_166 Tree_3) (x_21256 Int))
	(=> (and (add_147 x_21283 x_21256 r_166) (leq_14 false_140 x_21256 z_784)) (add_147 (TNode_1 q_38 z_784 x_21283) x_21256 (TNode_1 q_38 z_784 r_166)))))
(declare-fun toTree_1 (Tree_3 list_103) Bool)
(assert (forall ((x_21284 Tree_3) (x_21285 Tree_3) (y_779 Int) (xs_244 list_103))
	(=> (and (toTree_1 x_21285 xs_244) (add_147 x_21284 y_779 x_21285)) (toTree_1 x_21284 (cons_103 y_779 xs_244)))))
(assert (toTree_1 TNil_1 nil_113))
(declare-fun tsort_1 (list_103 list_103) Bool)
(assert (forall ((x_21288 list_103) (x_21289 Tree_3) (x_21258 list_103))
	(=> (and (toTree_1 x_21289 x_21258) (flatten_3 x_21288 x_21289 nil_113)) (tsort_1 x_21288 x_21258))))
(assert (forall ((x_21291 list_103) (x_21292 list_103) (xs_245 list_103))
	(=> (and true (diseqlist_103 x_21291 x_21292) (tsort_1 x_21291 xs_245) (isort_9 x_21292 xs_245)) false)))
(check-sat)
