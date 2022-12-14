
(set-logic HORN)
(define-fun Z_2130 () Int 0)
(define-fun S_495 ((x Int)) Int (+ x 1))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun unS_715 (Int Int) Bool)
(declare-fun isZ_462 (Int) Bool)
(declare-fun isS_462 (Int) Bool)
(assert (forall ((x_56123 Int))
	(unS_715 x_56123 (S_495 x_56123))))
(assert (isZ_462 Z_2130))
(assert (forall ((x_56125 Int))
	(isS_462 (S_495 x_56125))))
(assert (forall ((x_56126 Int))
	(diseqInt Z_2130 (S_495 x_56126))))
(assert (forall ((x_56127 Int))
	(diseqInt (S_495 x_56127) Z_2130)))
(assert (forall ((x_56128 Int) (x_56129 Int))
	(=> (diseqInt x_56128 x_56129) (diseqInt (S_495 x_56128) (S_495 x_56129)))))
(declare-fun add_383 (Int Int Int) Bool)
(declare-fun minus_378 (Int Int Int) Bool)
(declare-fun le_357 (Int Int) Bool)
(declare-fun ge_357 (Int Int) Bool)
(declare-fun lt_377 (Int Int) Bool)
(declare-fun gt_360 (Int Int) Bool)
(declare-fun mult_358 (Int Int Int) Bool)
(declare-fun div_357 (Int Int Int) Bool)
(declare-fun mod_359 (Int Int Int) Bool)
(assert (forall ((y_2368 Int))
	(add_383 y_2368 Z_2130 y_2368)))
(assert (forall ((x_56107 Int) (y_2368 Int) (r_430 Int))
	(=> (add_383 r_430 x_56107 y_2368) (add_383 (S_495 r_430) (S_495 x_56107) y_2368))))
(assert (forall ((y_2368 Int))
	(minus_378 Z_2130 Z_2130 y_2368)))
(assert (forall ((x_56107 Int) (y_2368 Int) (r_430 Int))
	(=> (minus_378 r_430 x_56107 y_2368) (minus_378 (S_495 r_430) (S_495 x_56107) y_2368))))
(assert (forall ((y_2368 Int))
	(le_357 Z_2130 y_2368)))
(assert (forall ((x_56107 Int) (y_2368 Int))
	(=> (le_357 x_56107 y_2368) (le_357 (S_495 x_56107) (S_495 y_2368)))))
(assert (forall ((y_2368 Int))
	(ge_357 y_2368 Z_2130)))
(assert (forall ((x_56107 Int) (y_2368 Int))
	(=> (ge_357 x_56107 y_2368) (ge_357 (S_495 x_56107) (S_495 y_2368)))))
(assert (forall ((y_2368 Int))
	(lt_377 Z_2130 (S_495 y_2368))))
(assert (forall ((x_56107 Int) (y_2368 Int))
	(=> (lt_377 x_56107 y_2368) (lt_377 (S_495 x_56107) (S_495 y_2368)))))
(assert (forall ((y_2368 Int))
	(gt_360 (S_495 y_2368) Z_2130)))
(assert (forall ((x_56107 Int) (y_2368 Int))
	(=> (gt_360 x_56107 y_2368) (gt_360 (S_495 x_56107) (S_495 y_2368)))))
(assert (forall ((y_2368 Int))
	(mult_358 Z_2130 Z_2130 y_2368)))
(assert (forall ((x_56107 Int) (y_2368 Int) (r_430 Int) (z_2131 Int))
	(=> (and (mult_358 r_430 x_56107 y_2368) (add_383 z_2131 r_430 y_2368)) (mult_358 z_2131 (S_495 x_56107) y_2368))))
(assert (forall ((x_56107 Int) (y_2368 Int))
	(=> (lt_377 x_56107 y_2368) (div_357 Z_2130 x_56107 y_2368))))
(assert (forall ((x_56107 Int) (y_2368 Int) (r_430 Int) (z_2131 Int))
	(=> (and (ge_357 x_56107 y_2368) (minus_378 z_2131 x_56107 y_2368) (div_357 r_430 z_2131 y_2368)) (div_357 (S_495 r_430) x_56107 y_2368))))
(assert (forall ((x_56107 Int) (y_2368 Int))
	(=> (lt_377 x_56107 y_2368) (mod_359 x_56107 x_56107 y_2368))))
(assert (forall ((x_56107 Int) (y_2368 Int) (r_430 Int) (z_2131 Int))
	(=> (and (ge_357 x_56107 y_2368) (minus_378 z_2131 x_56107 y_2368) (mod_359 r_430 z_2131 y_2368)) (mod_359 r_430 x_56107 y_2368))))
(declare-datatypes ((list_257 0)) (((nil_287) (cons_257 (head_514 Int) (tail_514 list_257)))))
(declare-fun diseqlist_257 (list_257 list_257) Bool)
(declare-fun head_515 (Int list_257) Bool)
(declare-fun tail_515 (list_257 list_257) Bool)
(declare-fun isnil_287 (list_257) Bool)
(declare-fun iscons_257 (list_257) Bool)
(assert (forall ((x_56109 Int) (x_56110 list_257))
	(head_515 x_56109 (cons_257 x_56109 x_56110))))
(assert (forall ((x_56109 Int) (x_56110 list_257))
	(tail_515 x_56110 (cons_257 x_56109 x_56110))))
(assert (isnil_287 nil_287))
(assert (forall ((x_56112 Int) (x_56113 list_257))
	(iscons_257 (cons_257 x_56112 x_56113))))
(assert (forall ((x_56114 Int) (x_56115 list_257))
	(diseqlist_257 nil_287 (cons_257 x_56114 x_56115))))
(assert (forall ((x_56116 Int) (x_56117 list_257))
	(diseqlist_257 (cons_257 x_56116 x_56117) nil_287)))
(assert (forall ((x_56118 Int) (x_56119 list_257) (x_56120 Int) (x_56121 list_257))
	(=> (diseqInt x_56118 x_56120) (diseqlist_257 (cons_257 x_56118 x_56119) (cons_257 x_56120 x_56121)))))
(assert (forall ((x_56118 Int) (x_56119 list_257) (x_56120 Int) (x_56121 list_257))
	(=> (diseqlist_257 x_56119 x_56121) (diseqlist_257 (cons_257 x_56118 x_56119) (cons_257 x_56120 x_56121)))))
(declare-fun x_56094 (list_257 list_257 list_257) Bool)
(assert (forall ((x_56099 list_257) (z_2129 Int) (xs_685 list_257) (y_2366 list_257))
	(=> (x_56094 x_56099 xs_685 y_2366) (x_56094 (cons_257 z_2129 x_56099) (cons_257 z_2129 xs_685) y_2366))))
(assert (forall ((x_56100 list_257))
	(x_56094 x_56100 nil_287 x_56100)))
(declare-fun rev_17 (list_257 list_257) Bool)
(assert (forall ((x_56101 list_257) (x_56102 list_257) (y_2367 Int) (xs_686 list_257))
	(=> (and (rev_17 x_56102 xs_686) (x_56094 x_56101 x_56102 (cons_257 y_2367 nil_287))) (rev_17 x_56101 (cons_257 y_2367 xs_686)))))
(assert (rev_17 nil_287 nil_287))
(assert (forall ((x_56105 list_257) (x_56106 list_257) (x_56097 list_257))
	(=> (and true (diseqlist_257 x_56106 x_56097) (rev_17 x_56105 x_56097) (rev_17 x_56106 x_56105)) false)))
(check-sat)