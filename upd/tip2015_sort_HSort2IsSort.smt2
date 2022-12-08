
(set-logic HORN)
(declare-fun Z_1005 () Int)
(declare-fun S_265 (Int) Int)
(declare-fun diseqInt (Int Int) Bool)
(declare-fun unS_349 (Int Int) Bool)
(declare-fun isZ_247 (Int) Bool)
(declare-fun isS_247 (Int) Bool)
(assert (forall ((x_26441 Int))
	(unS_349 x_26441 (S_265 x_26441))))
(assert (isZ_247 Z_1005))
(assert (forall ((x_26443 Int))
	(isS_247 (S_265 x_26443))))
(assert (forall ((x_26444 Int))
	(diseqInt Z_1005 (S_265 x_26444))))
(assert (forall ((x_26445 Int))
	(diseqInt (S_265 x_26445) Z_1005)))
(assert (forall ((x_26446 Int) (x_26447 Int))
	(=> (diseqInt x_26446 x_26447) (diseqInt (S_265 x_26446) (S_265 x_26447)))))
(declare-fun add_185 (Int Int Int) Bool)
(declare-fun minus_179 (Int Int Int) Bool)
(declare-fun le_174 (Int Int) Bool)
(declare-fun ge_174 (Int Int) Bool)
(declare-fun lt_183 (Int Int) Bool)
(declare-fun gt_176 (Int Int) Bool)
(declare-fun mult_174 (Int Int Int) Bool)
(declare-fun div_174 (Int Int Int) Bool)
(declare-fun mod_174 (Int Int Int) Bool)
(assert (forall ((y_1047 Int))
	(add_185 y_1047 Z_1005 y_1047)))
(assert (forall ((x_26439 Int) (y_1047 Int) (r_207 Int))
	(=> (add_185 r_207 x_26439 y_1047) (add_185 (S_265 r_207) (S_265 x_26439) y_1047))))
(assert (forall ((y_1047 Int))
	(minus_179 Z_1005 Z_1005 y_1047)))
(assert (forall ((x_26439 Int) (y_1047 Int) (r_207 Int))
	(=> (minus_179 r_207 x_26439 y_1047) (minus_179 (S_265 r_207) (S_265 x_26439) y_1047))))
(assert (forall ((y_1047 Int))
	(le_174 Z_1005 y_1047)))
(assert (forall ((x_26439 Int) (y_1047 Int))
	(=> (le_174 x_26439 y_1047) (le_174 (S_265 x_26439) (S_265 y_1047)))))
(assert (forall ((y_1047 Int))
	(ge_174 y_1047 Z_1005)))
(assert (forall ((x_26439 Int) (y_1047 Int))
	(=> (ge_174 x_26439 y_1047) (ge_174 (S_265 x_26439) (S_265 y_1047)))))
(assert (forall ((y_1047 Int))
	(lt_183 Z_1005 (S_265 y_1047))))
(assert (forall ((x_26439 Int) (y_1047 Int))
	(=> (lt_183 x_26439 y_1047) (lt_183 (S_265 x_26439) (S_265 y_1047)))))
(assert (forall ((y_1047 Int))
	(gt_176 (S_265 y_1047) Z_1005)))
(assert (forall ((x_26439 Int) (y_1047 Int))
	(=> (gt_176 x_26439 y_1047) (gt_176 (S_265 x_26439) (S_265 y_1047)))))
(assert (forall ((y_1047 Int))
	(mult_174 Z_1005 Z_1005 y_1047)))
(assert (forall ((x_26439 Int) (y_1047 Int) (r_207 Int) (z_1006 Int))
	(=> (and (mult_174 r_207 x_26439 y_1047) (add_185 z_1006 r_207 y_1047)) (mult_174 z_1006 (S_265 x_26439) y_1047))))
(assert (forall ((x_26439 Int) (y_1047 Int))
	(=> (lt_183 x_26439 y_1047) (div_174 Z_1005 x_26439 y_1047))))
(assert (forall ((x_26439 Int) (y_1047 Int) (r_207 Int) (z_1006 Int))
	(=> (and (ge_174 x_26439 y_1047) (minus_179 z_1006 x_26439 y_1047) (div_174 r_207 z_1006 y_1047)) (div_174 (S_265 r_207) x_26439 y_1047))))
(assert (forall ((x_26439 Int) (y_1047 Int))
	(=> (lt_183 x_26439 y_1047) (mod_174 x_26439 x_26439 y_1047))))
(assert (forall ((x_26439 Int) (y_1047 Int) (r_207 Int) (z_1006 Int))
	(=> (and (ge_174 x_26439 y_1047) (minus_179 z_1006 x_26439 y_1047) (mod_174 r_207 z_1006 y_1047)) (mod_174 r_207 x_26439 y_1047))))
(declare-datatypes ((list_123 0)) (((nil_136) (cons_123 (head_246 Int) (tail_246 list_123)))))
(declare-fun diseqlist_123 (list_123 list_123) Bool)
(declare-fun head_247 (Int list_123) Bool)
(declare-fun tail_247 (list_123 list_123) Bool)
(declare-fun isnil_136 (list_123) Bool)
(declare-fun iscons_123 (list_123) Bool)
(assert (forall ((x_26449 Int) (x_26450 list_123))
	(head_247 x_26449 (cons_123 x_26449 x_26450))))
(assert (forall ((x_26449 Int) (x_26450 list_123))
	(tail_247 x_26450 (cons_123 x_26449 x_26450))))
(assert (isnil_136 nil_136))
(assert (forall ((x_26452 Int) (x_26453 list_123))
	(iscons_123 (cons_123 x_26452 x_26453))))
(assert (forall ((x_26454 Int) (x_26455 list_123))
	(diseqlist_123 nil_136 (cons_123 x_26454 x_26455))))
(assert (forall ((x_26456 Int) (x_26457 list_123))
	(diseqlist_123 (cons_123 x_26456 x_26457) nil_136)))
(assert (forall ((x_26458 Int) (x_26459 list_123) (x_26460 Int) (x_26461 list_123))
	(=> (diseqInt x_26458 x_26460) (diseqlist_123 (cons_123 x_26458 x_26459) (cons_123 x_26460 x_26461)))))
(assert (forall ((x_26458 Int) (x_26459 list_123) (x_26460 Int) (x_26461 list_123))
	(=> (diseqlist_123 x_26459 x_26461) (diseqlist_123 (cons_123 x_26458 x_26459) (cons_123 x_26460 x_26461)))))
(declare-datatypes ((Heap_4 0)) (((Node_7 (projNode_42 Heap_4) (projNode_43 Int) (projNode_44 Heap_4)) (Nil_137))))
(declare-fun diseqHeap_4 (Heap_4 Heap_4) Bool)
(declare-fun projNode_45 (Heap_4 Heap_4) Bool)
(declare-fun projNode_46 (Int Heap_4) Bool)
(declare-fun projNode_47 (Heap_4 Heap_4) Bool)
(declare-fun isNode_7 (Heap_4) Bool)
(declare-fun isNil_137 (Heap_4) Bool)
(assert (forall ((x_26462 Heap_4) (x_26463 Int) (x_26464 Heap_4))
	(projNode_45 x_26462 (Node_7 x_26462 x_26463 x_26464))))
(assert (forall ((x_26462 Heap_4) (x_26463 Int) (x_26464 Heap_4))
	(projNode_46 x_26463 (Node_7 x_26462 x_26463 x_26464))))
(assert (forall ((x_26462 Heap_4) (x_26463 Int) (x_26464 Heap_4))
	(projNode_47 x_26464 (Node_7 x_26462 x_26463 x_26464))))
(assert (forall ((x_26467 Heap_4) (x_26468 Int) (x_26469 Heap_4))
	(isNode_7 (Node_7 x_26467 x_26468 x_26469))))
(assert (isNil_137 Nil_137))
(assert (forall ((x_26470 Heap_4) (x_26471 Int) (x_26472 Heap_4))
	(diseqHeap_4 (Node_7 x_26470 x_26471 x_26472) Nil_137)))
(assert (forall ((x_26473 Heap_4) (x_26474 Int) (x_26475 Heap_4))
	(diseqHeap_4 Nil_137 (Node_7 x_26473 x_26474 x_26475))))
(assert (forall ((x_26476 Heap_4) (x_26477 Int) (x_26478 Heap_4) (x_26479 Heap_4) (x_26480 Int) (x_26481 Heap_4))
	(=> (diseqHeap_4 x_26476 x_26479) (diseqHeap_4 (Node_7 x_26476 x_26477 x_26478) (Node_7 x_26479 x_26480 x_26481)))))
(assert (forall ((x_26476 Heap_4) (x_26477 Int) (x_26478 Heap_4) (x_26479 Heap_4) (x_26480 Int) (x_26481 Heap_4))
	(=> (diseqInt x_26477 x_26480) (diseqHeap_4 (Node_7 x_26476 x_26477 x_26478) (Node_7 x_26479 x_26480 x_26481)))))
(assert (forall ((x_26476 Heap_4) (x_26477 Int) (x_26478 Heap_4) (x_26479 Heap_4) (x_26480 Int) (x_26481 Heap_4))
	(=> (diseqHeap_4 x_26478 x_26481) (diseqHeap_4 (Node_7 x_26476 x_26477 x_26478) (Node_7 x_26479 x_26480 x_26481)))))
(declare-fun insert_14 (list_123 Int list_123) Bool)
(assert (forall ((z_1003 Int) (xs_327 list_123) (x_26398 Int))
	(=> (le_174 x_26398 z_1003) (insert_14 (cons_123 x_26398 (cons_123 z_1003 xs_327)) x_26398 (cons_123 z_1003 xs_327)))))
(assert (forall ((x_26412 list_123) (z_1003 Int) (xs_327 list_123) (x_26398 Int))
	(=> (and (gt_176 x_26398 z_1003) (insert_14 x_26412 x_26398 xs_327)) (insert_14 (cons_123 z_1003 x_26412) x_26398 (cons_123 z_1003 xs_327)))))
(assert (forall ((x_26398 Int))
	(insert_14 (cons_123 x_26398 nil_136) x_26398 nil_136)))
(declare-fun isort_14 (list_123 list_123) Bool)
(assert (forall ((x_26414 list_123) (x_26415 list_123) (y_1042 Int) (xs_328 list_123))
	(=> (and (isort_14 x_26415 xs_328) (insert_14 x_26414 y_1042 x_26415)) (isort_14 x_26414 (cons_123 y_1042 xs_328)))))
(assert (isort_14 nil_136 nil_136))
(declare-fun hmerge_4 (Heap_4 Heap_4 Heap_4) Bool)
(assert (forall ((x_26418 Heap_4))
	(hmerge_4 x_26418 Nil_137 x_26418)))
(assert (forall ((z_1004 Heap_4) (x_26401 Int) (x_26402 Heap_4))
	(hmerge_4 (Node_7 z_1004 x_26401 x_26402) (Node_7 z_1004 x_26401 x_26402) Nil_137)))
(assert (forall ((x_26421 Heap_4) (x_26403 Heap_4) (x_26404 Int) (x_26405 Heap_4) (z_1004 Heap_4) (x_26401 Int) (x_26402 Heap_4))
	(=> (and (le_174 x_26401 x_26404) (hmerge_4 x_26421 x_26402 (Node_7 x_26403 x_26404 x_26405))) (hmerge_4 (Node_7 x_26421 x_26401 z_1004) (Node_7 z_1004 x_26401 x_26402) (Node_7 x_26403 x_26404 x_26405)))))
(assert (forall ((x_26423 Heap_4) (x_26403 Heap_4) (x_26404 Int) (x_26405 Heap_4) (z_1004 Heap_4) (x_26401 Int) (x_26402 Heap_4))
	(=> (and (gt_176 x_26401 x_26404) (hmerge_4 x_26423 (Node_7 z_1004 x_26401 x_26402) x_26405)) (hmerge_4 (Node_7 x_26423 x_26404 x_26403) (Node_7 z_1004 x_26401 x_26402) (Node_7 x_26403 x_26404 x_26405)))))
(declare-fun toList_4 (list_123 Heap_4) Bool)
(assert (toList_4 nil_136 Nil_137))
(assert (forall ((x_26426 Heap_4) (x_26427 list_123) (p_158 Heap_4) (y_1044 Int) (q_53 Heap_4))
	(=> (and (hmerge_4 x_26426 p_158 q_53) (toList_4 x_26427 x_26426)) (toList_4 (cons_123 y_1044 x_26427) (Node_7 p_158 y_1044 q_53)))))
(declare-fun hinsert_2 (Heap_4 Int Heap_4) Bool)
(assert (forall ((x_26428 Heap_4) (x_26407 Int) (y_1045 Heap_4))
	(=> (hmerge_4 x_26428 (Node_7 Nil_137 x_26407 Nil_137) y_1045) (hinsert_2 x_26428 x_26407 y_1045))))
(declare-fun toHeap_6 (Heap_4 list_123) Bool)
(assert (forall ((x_26430 Heap_4) (x_26431 Heap_4) (y_1046 Int) (xs_329 list_123))
	(=> (and (toHeap_6 x_26431 xs_329) (hinsert_2 x_26430 y_1046 x_26431)) (toHeap_6 x_26430 (cons_123 y_1046 xs_329)))))
(assert (toHeap_6 Nil_137 nil_136))
(declare-fun hsort_4 (list_123 list_123) Bool)
(assert (forall ((x_26434 list_123) (x_26435 Heap_4) (x_26409 list_123))
	(=> (and (toHeap_6 x_26435 x_26409) (toList_4 x_26434 x_26435)) (hsort_4 x_26434 x_26409))))
(assert (forall ((x_26437 list_123) (x_26438 list_123) (xs_330 list_123))
	(=> (and true (diseqlist_123 x_26437 x_26438) (hsort_4 x_26437 xs_330) (isort_14 x_26438 xs_330)) false)))
(check-sat)