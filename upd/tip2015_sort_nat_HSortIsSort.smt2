
(set-logic HORN)
(declare-fun zero_93 () Int)
(declare-fun succ_91 (Int) Int)
(declare-datatypes ((Bool_236 0)) (((false_236) (true_236))))
(declare-fun diseqBool_109 (Bool_236 Bool_236) Bool)
(declare-fun isfalse_109 (Bool_236) Bool)
(declare-fun istrue_109 (Bool_236) Bool)
(assert (isfalse_109 false_236))
(assert (istrue_109 true_236))
(assert (diseqBool_109 false_236 true_236))
(assert (diseqBool_109 true_236 false_236))
(declare-fun and_236 (Bool_236 Bool_236 Bool_236) Bool)
(declare-fun or_241 (Bool_236 Bool_236 Bool_236) Bool)
(declare-fun hence_236 (Bool_236 Bool_236 Bool_236) Bool)
(declare-fun not_239 (Bool_236 Bool_236) Bool)
(assert (and_236 false_236 false_236 false_236))
(assert (and_236 false_236 true_236 false_236))
(assert (and_236 false_236 false_236 true_236))
(assert (and_236 true_236 true_236 true_236))
(assert (or_241 false_236 false_236 false_236))
(assert (or_241 true_236 true_236 false_236))
(assert (or_241 true_236 false_236 true_236))
(assert (or_241 true_236 true_236 true_236))
(assert (hence_236 true_236 false_236 false_236))
(assert (hence_236 false_236 true_236 false_236))
(assert (hence_236 true_236 false_236 true_236))
(assert (hence_236 true_236 true_236 true_236))
(assert (not_239 true_236 false_236))
(assert (not_239 false_236 true_236))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_270 (Int Int) Bool)
(declare-fun iszero_91 (Int) Bool)
(declare-fun issucc_91 (Int) Bool)
(assert (forall ((x_45047 Int))
	(p_270 x_45047 (succ_91 x_45047))))
(assert (iszero_91 zero_93))
(assert (forall ((x_45049 Int))
	(issucc_91 (succ_91 x_45049))))
(assert (forall ((x_45050 Int))
	(diseqInt zero_93 (succ_91 x_45050))))
(assert (forall ((x_45051 Int))
	(diseqInt (succ_91 x_45051) zero_93)))
(assert (forall ((x_45052 Int) (x_45053 Int))
	(=> (diseqInt x_45052 x_45053) (diseqInt (succ_91 x_45052) (succ_91 x_45053)))))
(declare-datatypes ((list_169 0)) (((nil_193) (cons_169 (head_338 Int) (tail_338 list_169)))))
(declare-fun diseqlist_169 (list_169 list_169) Bool)
(declare-fun head_340 (Int list_169) Bool)
(declare-fun tail_340 (list_169 list_169) Bool)
(declare-fun isnil_193 (list_169) Bool)
(declare-fun iscons_169 (list_169) Bool)
(assert (forall ((x_45055 Int) (x_45056 list_169))
	(head_340 x_45055 (cons_169 x_45055 x_45056))))
(assert (forall ((x_45055 Int) (x_45056 list_169))
	(tail_340 x_45056 (cons_169 x_45055 x_45056))))
(assert (isnil_193 nil_193))
(assert (forall ((x_45058 Int) (x_45059 list_169))
	(iscons_169 (cons_169 x_45058 x_45059))))
(assert (forall ((x_45060 Int) (x_45061 list_169))
	(diseqlist_169 nil_193 (cons_169 x_45060 x_45061))))
(assert (forall ((x_45062 Int) (x_45063 list_169))
	(diseqlist_169 (cons_169 x_45062 x_45063) nil_193)))
(assert (forall ((x_45064 Int) (x_45065 list_169) (x_45066 Int) (x_45067 list_169))
	(=> (diseqInt x_45064 x_45066) (diseqlist_169 (cons_169 x_45064 x_45065) (cons_169 x_45066 x_45067)))))
(assert (forall ((x_45064 Int) (x_45065 list_169) (x_45066 Int) (x_45067 list_169))
	(=> (diseqlist_169 x_45065 x_45067) (diseqlist_169 (cons_169 x_45064 x_45065) (cons_169 x_45066 x_45067)))))
(declare-datatypes ((Heap_8 0)) (((Node_12 (projNode_72 Heap_8) (projNode_73 Int) (projNode_74 Heap_8)) (Nil_194))))
(declare-fun diseqHeap_8 (Heap_8 Heap_8) Bool)
(declare-fun projNode_75 (Heap_8 Heap_8) Bool)
(declare-fun projNode_76 (Int Heap_8) Bool)
(declare-fun projNode_77 (Heap_8 Heap_8) Bool)
(declare-fun isNode_12 (Heap_8) Bool)
(declare-fun isNil_194 (Heap_8) Bool)
(assert (forall ((x_45068 Heap_8) (x_45069 Int) (x_45070 Heap_8))
	(projNode_75 x_45068 (Node_12 x_45068 x_45069 x_45070))))
(assert (forall ((x_45068 Heap_8) (x_45069 Int) (x_45070 Heap_8))
	(projNode_76 x_45069 (Node_12 x_45068 x_45069 x_45070))))
(assert (forall ((x_45068 Heap_8) (x_45069 Int) (x_45070 Heap_8))
	(projNode_77 x_45070 (Node_12 x_45068 x_45069 x_45070))))
(assert (forall ((x_45073 Heap_8) (x_45074 Int) (x_45075 Heap_8))
	(isNode_12 (Node_12 x_45073 x_45074 x_45075))))
(assert (isNil_194 Nil_194))
(assert (forall ((x_45076 Heap_8) (x_45077 Int) (x_45078 Heap_8))
	(diseqHeap_8 (Node_12 x_45076 x_45077 x_45078) Nil_194)))
(assert (forall ((x_45079 Heap_8) (x_45080 Int) (x_45081 Heap_8))
	(diseqHeap_8 Nil_194 (Node_12 x_45079 x_45080 x_45081))))
(assert (forall ((x_45082 Heap_8) (x_45083 Int) (x_45084 Heap_8) (x_45085 Heap_8) (x_45086 Int) (x_45087 Heap_8))
	(=> (diseqHeap_8 x_45082 x_45085) (diseqHeap_8 (Node_12 x_45082 x_45083 x_45084) (Node_12 x_45085 x_45086 x_45087)))))
(assert (forall ((x_45082 Heap_8) (x_45083 Int) (x_45084 Heap_8) (x_45085 Heap_8) (x_45086 Int) (x_45087 Heap_8))
	(=> (diseqInt x_45083 x_45086) (diseqHeap_8 (Node_12 x_45082 x_45083 x_45084) (Node_12 x_45085 x_45086 x_45087)))))
(assert (forall ((x_45082 Heap_8) (x_45083 Int) (x_45084 Heap_8) (x_45085 Heap_8) (x_45086 Int) (x_45087 Heap_8))
	(=> (diseqHeap_8 x_45084 x_45087) (diseqHeap_8 (Node_12 x_45082 x_45083 x_45084) (Node_12 x_45085 x_45086 x_45087)))))
(declare-datatypes ((list_170 0)) (((nil_195) (cons_170 (head_339 Heap_8) (tail_339 list_170)))))
(declare-fun diseqlist_170 (list_170 list_170) Bool)
(declare-fun head_341 (Heap_8 list_170) Bool)
(declare-fun tail_341 (list_170 list_170) Bool)
(declare-fun isnil_195 (list_170) Bool)
(declare-fun iscons_170 (list_170) Bool)
(assert (forall ((x_45089 Heap_8) (x_45090 list_170))
	(head_341 x_45089 (cons_170 x_45089 x_45090))))
(assert (forall ((x_45089 Heap_8) (x_45090 list_170))
	(tail_341 x_45090 (cons_170 x_45089 x_45090))))
(assert (isnil_195 nil_195))
(assert (forall ((x_45092 Heap_8) (x_45093 list_170))
	(iscons_170 (cons_170 x_45092 x_45093))))
(assert (forall ((x_45094 Heap_8) (x_45095 list_170))
	(diseqlist_170 nil_195 (cons_170 x_45094 x_45095))))
(assert (forall ((x_45096 Heap_8) (x_45097 list_170))
	(diseqlist_170 (cons_170 x_45096 x_45097) nil_195)))
(assert (forall ((x_45098 Heap_8) (x_45099 list_170) (x_45100 Heap_8) (x_45101 list_170))
	(=> (diseqHeap_8 x_45098 x_45100) (diseqlist_170 (cons_170 x_45098 x_45099) (cons_170 x_45100 x_45101)))))
(assert (forall ((x_45098 Heap_8) (x_45099 list_170) (x_45100 Heap_8) (x_45101 list_170))
	(=> (diseqlist_170 x_45099 x_45101) (diseqlist_170 (cons_170 x_45098 x_45099) (cons_170 x_45100 x_45101)))))
(declare-fun toHeap_11 (list_170 list_169) Bool)
(assert (forall ((x_44997 list_170) (y_1551 Int) (z_1403 list_169))
	(=> (toHeap_11 x_44997 z_1403) (toHeap_11 (cons_170 (Node_12 Nil_194 y_1551 Nil_194) x_44997) (cons_169 y_1551 z_1403)))))
(assert (toHeap_11 nil_195 nil_193))
(declare-fun leq_34 (Bool_236 Int Int) Bool)
(assert (forall ((x_44999 Bool_236) (x_44981 Int) (z_1404 Int))
	(=> (leq_34 x_44999 z_1404 x_44981) (leq_34 x_44999 (succ_91 z_1404) (succ_91 x_44981)))))
(assert (forall ((z_1404 Int))
	(leq_34 false_236 (succ_91 z_1404) zero_93)))
(assert (forall ((y_1552 Int))
	(leq_34 true_236 zero_93 y_1552)))
(declare-fun insert_20 (list_169 Int list_169) Bool)
(assert (forall ((z_1405 Int) (xs_459 list_169) (x_44982 Int))
	(=> (leq_34 true_236 x_44982 z_1405) (insert_20 (cons_169 x_44982 (cons_169 z_1405 xs_459)) x_44982 (cons_169 z_1405 xs_459)))))
(assert (forall ((x_45007 list_169) (z_1405 Int) (xs_459 list_169) (x_44982 Int))
	(=> (and (insert_20 x_45007 x_44982 xs_459) (leq_34 false_236 x_44982 z_1405)) (insert_20 (cons_169 z_1405 x_45007) x_44982 (cons_169 z_1405 xs_459)))))
(assert (forall ((x_44982 Int))
	(insert_20 (cons_169 x_44982 nil_193) x_44982 nil_193)))
(declare-fun isort_20 (list_169 list_169) Bool)
(assert (forall ((x_45009 list_169) (x_45010 list_169) (y_1554 Int) (xs_460 list_169))
	(=> (and (isort_20 x_45010 xs_460) (insert_20 x_45009 y_1554 x_45010)) (isort_20 x_45009 (cons_169 y_1554 xs_460)))))
(assert (isort_20 nil_193 nil_193))
(declare-fun hmerge_8 (Heap_8 Heap_8 Heap_8) Bool)
(assert (forall ((x_45013 Heap_8))
	(hmerge_8 x_45013 Nil_194 x_45013)))
(assert (forall ((z_1406 Heap_8) (x_44985 Int) (x_44986 Heap_8))
	(hmerge_8 (Node_12 z_1406 x_44985 x_44986) (Node_12 z_1406 x_44985 x_44986) Nil_194)))
(assert (forall ((x_45017 Heap_8) (x_44987 Heap_8) (x_44988 Int) (x_44989 Heap_8) (z_1406 Heap_8) (x_44985 Int) (x_44986 Heap_8))
	(=> (and (hmerge_8 x_45017 x_44986 (Node_12 x_44987 x_44988 x_44989)) (leq_34 true_236 x_44985 x_44988)) (hmerge_8 (Node_12 x_45017 x_44985 z_1406) (Node_12 z_1406 x_44985 x_44986) (Node_12 x_44987 x_44988 x_44989)))))
(assert (forall ((x_45020 Heap_8) (x_44987 Heap_8) (x_44988 Int) (x_44989 Heap_8) (z_1406 Heap_8) (x_44985 Int) (x_44986 Heap_8))
	(=> (and (hmerge_8 x_45020 (Node_12 z_1406 x_44985 x_44986) x_44989) (leq_34 false_236 x_44985 x_44988)) (hmerge_8 (Node_12 x_45020 x_44988 x_44987) (Node_12 z_1406 x_44985 x_44986) (Node_12 x_44987 x_44988 x_44989)))))
(declare-fun hpairwise_3 (list_170 list_170) Bool)
(assert (forall ((x_45022 Heap_8) (x_45023 list_170) (r_295 Heap_8) (qs_3 list_170) (q_100 Heap_8))
	(=> (and (hmerge_8 x_45022 q_100 r_295) (hpairwise_3 x_45023 qs_3)) (hpairwise_3 (cons_170 x_45022 x_45023) (cons_170 q_100 (cons_170 r_295 qs_3))))))
(assert (forall ((q_100 Heap_8))
	(hpairwise_3 (cons_170 q_100 nil_195) (cons_170 q_100 nil_195))))
(assert (hpairwise_3 nil_195 nil_195))
(declare-fun hmerging_3 (Heap_8 list_170) Bool)
(assert (forall ((x_45026 Heap_8) (x_45027 list_170) (z_1407 Heap_8) (x_44992 list_170) (q_101 Heap_8))
	(=> (and (hpairwise_3 x_45027 (cons_170 q_101 (cons_170 z_1407 x_44992))) (hmerging_3 x_45026 x_45027)) (hmerging_3 x_45026 (cons_170 q_101 (cons_170 z_1407 x_44992))))))
(assert (forall ((q_101 Heap_8))
	(hmerging_3 q_101 (cons_170 q_101 nil_195))))
(assert (hmerging_3 Nil_194 nil_195))
(declare-fun toHeap_12 (Heap_8 list_169) Bool)
(assert (forall ((x_45031 Heap_8) (x_45032 list_170) (x_44993 list_169))
	(=> (and (toHeap_11 x_45032 x_44993) (hmerging_3 x_45031 x_45032)) (toHeap_12 x_45031 x_44993))))
(declare-fun toList_8 (list_169 Heap_8) Bool)
(assert (toList_8 nil_193 Nil_194))
(assert (forall ((x_45036 Heap_8) (x_45037 list_169) (q_102 Heap_8) (y_1558 Int) (r_296 Heap_8))
	(=> (and (hmerge_8 x_45036 q_102 r_296) (toList_8 x_45037 x_45036)) (toList_8 (cons_169 y_1558 x_45037) (Node_12 q_102 y_1558 r_296)))))
(declare-fun hsort_8 (list_169 list_169) Bool)
(assert (forall ((x_45038 list_169) (x_45039 Heap_8) (x_44995 list_169))
	(=> (and (toHeap_12 x_45039 x_44995) (toList_8 x_45038 x_45039)) (hsort_8 x_45038 x_44995))))
(assert (forall ((x_45041 list_169) (x_45042 list_169) (xs_461 list_169))
	(=> (and true (diseqlist_169 x_45041 x_45042) (hsort_8 x_45041 xs_461) (isort_20 x_45042 xs_461)) false)))
(check-sat)
