
(set-logic HORN)
(declare-fun Z_2410 () Int)
(declare-fun S_561 (Int) Int)
(declare-fun diseqInt (Int Int) Bool)
(declare-fun unS_801 (Int Int) Bool)
(declare-fun isZ_522 (Int) Bool)
(declare-fun isS_522 (Int) Bool)
(assert (forall ((x_76093 Int))
	(unS_801 x_76093 (S_561 x_76093))))
(assert (isZ_522 Z_2410))
(assert (forall ((x_76095 Int))
	(isS_522 (S_561 x_76095))))
(assert (forall ((x_76096 Int))
	(diseqInt Z_2410 (S_561 x_76096))))
(assert (forall ((x_76097 Int))
	(diseqInt (S_561 x_76097) Z_2410)))
(assert (forall ((x_76098 Int) (x_76099 Int))
	(=> (diseqInt x_76098 x_76099) (diseqInt (S_561 x_76098) (S_561 x_76099)))))
(declare-fun add_426 (Int Int Int) Bool)
(declare-fun minus_421 (Int Int Int) Bool)
(declare-fun le_400 (Int Int) Bool)
(declare-fun ge_400 (Int Int) Bool)
(declare-fun lt_420 (Int Int) Bool)
(declare-fun gt_403 (Int Int) Bool)
(declare-fun mult_401 (Int Int Int) Bool)
(declare-fun div_400 (Int Int Int) Bool)
(declare-fun mod_402 (Int Int Int) Bool)
(assert (forall ((y_2716 Int))
	(add_426 y_2716 Z_2410 y_2716)))
(assert (forall ((x_76081 Int) (y_2716 Int) (r_530 Int))
	(=> (add_426 r_530 x_76081 y_2716) (add_426 (S_561 r_530) (S_561 x_76081) y_2716))))
(assert (forall ((y_2716 Int))
	(minus_421 Z_2410 Z_2410 y_2716)))
(assert (forall ((x_76081 Int) (y_2716 Int) (r_530 Int))
	(=> (minus_421 r_530 x_76081 y_2716) (minus_421 (S_561 r_530) (S_561 x_76081) y_2716))))
(assert (forall ((y_2716 Int))
	(le_400 Z_2410 y_2716)))
(assert (forall ((x_76081 Int) (y_2716 Int))
	(=> (le_400 x_76081 y_2716) (le_400 (S_561 x_76081) (S_561 y_2716)))))
(assert (forall ((y_2716 Int))
	(ge_400 y_2716 Z_2410)))
(assert (forall ((x_76081 Int) (y_2716 Int))
	(=> (ge_400 x_76081 y_2716) (ge_400 (S_561 x_76081) (S_561 y_2716)))))
(assert (forall ((y_2716 Int))
	(lt_420 Z_2410 (S_561 y_2716))))
(assert (forall ((x_76081 Int) (y_2716 Int))
	(=> (lt_420 x_76081 y_2716) (lt_420 (S_561 x_76081) (S_561 y_2716)))))
(assert (forall ((y_2716 Int))
	(gt_403 (S_561 y_2716) Z_2410)))
(assert (forall ((x_76081 Int) (y_2716 Int))
	(=> (gt_403 x_76081 y_2716) (gt_403 (S_561 x_76081) (S_561 y_2716)))))
(assert (forall ((y_2716 Int))
	(mult_401 Z_2410 Z_2410 y_2716)))
(assert (forall ((x_76081 Int) (y_2716 Int) (r_530 Int) (z_2411 Int))
	(=> (and (mult_401 r_530 x_76081 y_2716) (add_426 z_2411 r_530 y_2716)) (mult_401 z_2411 (S_561 x_76081) y_2716))))
(assert (forall ((x_76081 Int) (y_2716 Int))
	(=> (lt_420 x_76081 y_2716) (div_400 Z_2410 x_76081 y_2716))))
(assert (forall ((x_76081 Int) (y_2716 Int) (r_530 Int) (z_2411 Int))
	(=> (and (ge_400 x_76081 y_2716) (minus_421 z_2411 x_76081 y_2716) (div_400 r_530 z_2411 y_2716)) (div_400 (S_561 r_530) x_76081 y_2716))))
(assert (forall ((x_76081 Int) (y_2716 Int))
	(=> (lt_420 x_76081 y_2716) (mod_402 x_76081 x_76081 y_2716))))
(assert (forall ((x_76081 Int) (y_2716 Int) (r_530 Int) (z_2411 Int))
	(=> (and (ge_400 x_76081 y_2716) (minus_421 z_2411 x_76081 y_2716) (mod_402 r_530 z_2411 y_2716)) (mod_402 r_530 x_76081 y_2716))))
(declare-datatypes ((Bool_400 0)) (((false_400) (true_400))))
(declare-fun diseqBool_189 (Bool_400 Bool_400) Bool)
(declare-fun isfalse_189 (Bool_400) Bool)
(declare-fun istrue_189 (Bool_400) Bool)
(assert (isfalse_189 false_400))
(assert (istrue_189 true_400))
(assert (diseqBool_189 false_400 true_400))
(assert (diseqBool_189 true_400 false_400))
(declare-fun and_403 (Bool_400 Bool_400 Bool_400) Bool)
(declare-fun or_413 (Bool_400 Bool_400 Bool_400) Bool)
(declare-fun hence_400 (Bool_400 Bool_400 Bool_400) Bool)
(declare-fun not_405 (Bool_400 Bool_400) Bool)
(assert (and_403 false_400 false_400 false_400))
(assert (and_403 false_400 true_400 false_400))
(assert (and_403 false_400 false_400 true_400))
(assert (and_403 true_400 true_400 true_400))
(assert (or_413 false_400 false_400 false_400))
(assert (or_413 true_400 true_400 false_400))
(assert (or_413 true_400 false_400 true_400))
(assert (or_413 true_400 true_400 true_400))
(assert (hence_400 true_400 false_400 false_400))
(assert (hence_400 false_400 true_400 false_400))
(assert (hence_400 true_400 false_400 true_400))
(assert (hence_400 true_400 true_400 true_400))
(assert (not_405 true_400 false_400))
(assert (not_405 false_400 true_400))
(declare-datatypes ((pair_128 0)) (((pair_129 (projpair_256 Int) (projpair_257 Int)))))
(declare-fun diseqpair_64 (pair_128 pair_128) Bool)
(declare-fun projpair_258 (Int pair_128) Bool)
(declare-fun projpair_259 (Int pair_128) Bool)
(declare-fun ispair_64 (pair_128) Bool)
(assert (forall ((x_76102 Int) (x_76103 Int))
	(projpair_258 x_76102 (pair_129 x_76102 x_76103))))
(assert (forall ((x_76102 Int) (x_76103 Int))
	(projpair_259 x_76103 (pair_129 x_76102 x_76103))))
(assert (forall ((x_76105 Int) (x_76106 Int))
	(ispair_64 (pair_129 x_76105 x_76106))))
(assert (forall ((x_76107 Int) (x_76108 Int) (x_76109 Int) (x_76110 Int))
	(=> (diseqInt x_76107 x_76109) (diseqpair_64 (pair_129 x_76107 x_76108) (pair_129 x_76109 x_76110)))))
(assert (forall ((x_76107 Int) (x_76108 Int) (x_76109 Int) (x_76110 Int))
	(=> (diseqInt x_76108 x_76110) (diseqpair_64 (pair_129 x_76107 x_76108) (pair_129 x_76109 x_76110)))))
(declare-datatypes ((list_324 0)) (((nil_365) (cons_320 (head_640 Bool_400) (tail_644 list_324)))))
(declare-fun diseqlist_320 (list_324 list_324) Bool)
(declare-fun head_644 (Bool_400 list_324) Bool)
(declare-fun tail_648 (list_324 list_324) Bool)
(declare-fun isnil_365 (list_324) Bool)
(declare-fun iscons_320 (list_324) Bool)
(assert (forall ((x_76112 Bool_400) (x_76113 list_324))
	(head_644 x_76112 (cons_320 x_76112 x_76113))))
(assert (forall ((x_76112 Bool_400) (x_76113 list_324))
	(tail_648 x_76113 (cons_320 x_76112 x_76113))))
(assert (isnil_365 nil_365))
(assert (forall ((x_76115 Bool_400) (x_76116 list_324))
	(iscons_320 (cons_320 x_76115 x_76116))))
(assert (forall ((x_76117 Bool_400) (x_76118 list_324))
	(diseqlist_320 nil_365 (cons_320 x_76117 x_76118))))
(assert (forall ((x_76119 Bool_400) (x_76120 list_324))
	(diseqlist_320 (cons_320 x_76119 x_76120) nil_365)))
(assert (forall ((x_76121 Bool_400) (x_76122 list_324) (x_76123 Bool_400) (x_76124 list_324))
	(=> (diseqBool_189 x_76121 x_76123) (diseqlist_320 (cons_320 x_76121 x_76122) (cons_320 x_76123 x_76124)))))
(assert (forall ((x_76121 Bool_400) (x_76122 list_324) (x_76123 Bool_400) (x_76124 list_324))
	(=> (diseqlist_320 x_76122 x_76124) (diseqlist_320 (cons_320 x_76121 x_76122) (cons_320 x_76123 x_76124)))))
(declare-datatypes ((list_325 0)) (((nil_366) (cons_321 (head_641 Int) (tail_645 list_325)))))
(declare-fun diseqlist_321 (list_325 list_325) Bool)
(declare-fun head_645 (Int list_325) Bool)
(declare-fun tail_649 (list_325 list_325) Bool)
(declare-fun isnil_366 (list_325) Bool)
(declare-fun iscons_321 (list_325) Bool)
(assert (forall ((x_76126 Int) (x_76127 list_325))
	(head_645 x_76126 (cons_321 x_76126 x_76127))))
(assert (forall ((x_76126 Int) (x_76127 list_325))
	(tail_649 x_76127 (cons_321 x_76126 x_76127))))
(assert (isnil_366 nil_366))
(assert (forall ((x_76129 Int) (x_76130 list_325))
	(iscons_321 (cons_321 x_76129 x_76130))))
(assert (forall ((x_76131 Int) (x_76132 list_325))
	(diseqlist_321 nil_366 (cons_321 x_76131 x_76132))))
(assert (forall ((x_76133 Int) (x_76134 list_325))
	(diseqlist_321 (cons_321 x_76133 x_76134) nil_366)))
(assert (forall ((x_76135 Int) (x_76136 list_325) (x_76137 Int) (x_76138 list_325))
	(=> (diseqInt x_76135 x_76137) (diseqlist_321 (cons_321 x_76135 x_76136) (cons_321 x_76137 x_76138)))))
(assert (forall ((x_76135 Int) (x_76136 list_325) (x_76137 Int) (x_76138 list_325))
	(=> (diseqlist_321 x_76136 x_76138) (diseqlist_321 (cons_321 x_76135 x_76136) (cons_321 x_76137 x_76138)))))
(declare-datatypes ((list_326 0)) (((nil_367) (cons_322 (head_642 pair_128) (tail_646 list_326)))))
(declare-fun diseqlist_322 (list_326 list_326) Bool)
(declare-fun head_646 (pair_128 list_326) Bool)
(declare-fun tail_650 (list_326 list_326) Bool)
(declare-fun isnil_367 (list_326) Bool)
(declare-fun iscons_322 (list_326) Bool)
(assert (forall ((x_76140 pair_128) (x_76141 list_326))
	(head_646 x_76140 (cons_322 x_76140 x_76141))))
(assert (forall ((x_76140 pair_128) (x_76141 list_326))
	(tail_650 x_76141 (cons_322 x_76140 x_76141))))
(assert (isnil_367 nil_367))
(assert (forall ((x_76143 pair_128) (x_76144 list_326))
	(iscons_322 (cons_322 x_76143 x_76144))))
(assert (forall ((x_76145 pair_128) (x_76146 list_326))
	(diseqlist_322 nil_367 (cons_322 x_76145 x_76146))))
(assert (forall ((x_76147 pair_128) (x_76148 list_326))
	(diseqlist_322 (cons_322 x_76147 x_76148) nil_367)))
(assert (forall ((x_76149 pair_128) (x_76150 list_326) (x_76151 pair_128) (x_76152 list_326))
	(=> (diseqpair_64 x_76149 x_76151) (diseqlist_322 (cons_322 x_76149 x_76150) (cons_322 x_76151 x_76152)))))
(assert (forall ((x_76149 pair_128) (x_76150 list_326) (x_76151 pair_128) (x_76152 list_326))
	(=> (diseqlist_322 x_76150 x_76152) (diseqlist_322 (cons_322 x_76149 x_76150) (cons_322 x_76151 x_76152)))))
(declare-datatypes ((list_327 0)) (((nil_368) (cons_323 (head_643 list_326) (tail_647 list_327)))))
(declare-fun diseqlist_323 (list_327 list_327) Bool)
(declare-fun head_647 (list_326 list_327) Bool)
(declare-fun tail_651 (list_327 list_327) Bool)
(declare-fun isnil_368 (list_327) Bool)
(declare-fun iscons_323 (list_327) Bool)
(assert (forall ((x_76154 list_326) (x_76155 list_327))
	(head_647 x_76154 (cons_323 x_76154 x_76155))))
(assert (forall ((x_76154 list_326) (x_76155 list_327))
	(tail_651 x_76155 (cons_323 x_76154 x_76155))))
(assert (isnil_368 nil_368))
(assert (forall ((x_76157 list_326) (x_76158 list_327))
	(iscons_323 (cons_323 x_76157 x_76158))))
(assert (forall ((x_76159 list_326) (x_76160 list_327))
	(diseqlist_323 nil_368 (cons_323 x_76159 x_76160))))
(assert (forall ((x_76161 list_326) (x_76162 list_327))
	(diseqlist_323 (cons_323 x_76161 x_76162) nil_368)))
(assert (forall ((x_76163 list_326) (x_76164 list_327) (x_76165 list_326) (x_76166 list_327))
	(=> (diseqlist_322 x_76163 x_76165) (diseqlist_323 (cons_323 x_76163 x_76164) (cons_323 x_76165 x_76166)))))
(assert (forall ((x_76163 list_326) (x_76164 list_327) (x_76165 list_326) (x_76166 list_327))
	(=> (diseqlist_323 x_76164 x_76166) (diseqlist_323 (cons_323 x_76163 x_76164) (cons_323 x_76165 x_76166)))))
(declare-datatypes ((Maybe_10 0)) (((Nothing_10) (Just_10 (projJust_20 Int)))))
(declare-fun diseqMaybe_10 (Maybe_10 Maybe_10) Bool)
(declare-fun projJust_21 (Int Maybe_10) Bool)
(declare-fun isNothing_10 (Maybe_10) Bool)
(declare-fun isJust_10 (Maybe_10) Bool)
(assert (forall ((x_76168 Int))
	(projJust_21 x_76168 (Just_10 x_76168))))
(assert (isNothing_10 Nothing_10))
(assert (forall ((x_76170 Int))
	(isJust_10 (Just_10 x_76170))))
(assert (forall ((x_76171 Int))
	(diseqMaybe_10 Nothing_10 (Just_10 x_76171))))
(assert (forall ((x_76172 Int))
	(diseqMaybe_10 (Just_10 x_76172) Nothing_10)))
(assert (forall ((x_76173 Int) (x_76174 Int))
	(=> (diseqInt x_76173 x_76174) (diseqMaybe_10 (Just_10 x_76173) (Just_10 x_76174)))))
(declare-fun primEnumFromTo_5 (list_325 Int Int) Bool)
(assert (forall ((x_75996 Int) (y_2705 Int))
	(=> (gt_403 x_75996 y_2705) (primEnumFromTo_5 nil_366 x_75996 y_2705))))
(assert (forall ((x_76082 Int) (x_76013 list_325) (x_75996 Int) (y_2705 Int))
	(=> (and (le_400 x_75996 y_2705) (primEnumFromTo_5 x_76013 x_76082 y_2705) (add_426 x_76082 (S_561 Z_2410) x_75996)) (primEnumFromTo_5 (cons_321 x_75996 x_76013) x_75996 y_2705))))
(declare-fun petersen_12 (list_326 Int list_325) Bool)
(assert (forall ((x_76083 Int) (x_76015 list_326) (z_2403 Int) (x_75998 list_325) (x_75997 Int))
	(=> (and (petersen_12 x_76015 x_75997 x_75998) (add_426 x_76083 x_75997 z_2403)) (petersen_12 (cons_322 (pair_129 z_2403 x_76083) x_76015) x_75997 (cons_321 z_2403 x_75998)))))
(assert (forall ((x_75997 Int))
	(petersen_12 nil_367 x_75997 nil_366)))
(declare-fun petersen_13 (list_326 list_325) Bool)
(assert (forall ((x_76084 Int) (x_76018 list_326) (y_2707 Int) (z_2404 list_325))
	(=> (and (petersen_13 x_76018 z_2404) (add_426 x_76084 (S_561 Z_2410) y_2707)) (petersen_13 (cons_322 (pair_129 y_2707 x_76084) x_76018) (cons_321 y_2707 z_2404)))))
(assert (petersen_13 nil_367 nil_366))
(declare-fun petersen_14 (list_327 Int list_326) Bool)
(assert (forall ((x_76085 Int) (x_76086 Int) (x_76021 list_327) (u_12 Int) (v_12 Int) (x_76001 list_326) (x_76000 Int))
	(=> (and (petersen_14 x_76021 x_76000 x_76001) (add_426 x_76085 x_76000 u_12) (add_426 x_76086 x_76000 v_12)) (petersen_14 (cons_323 (cons_322 (pair_129 u_12 v_12) (cons_322 (pair_129 x_76085 x_76086) nil_367)) x_76021) x_76000 (cons_322 (pair_129 u_12 v_12) x_76001)))))
(assert (forall ((x_76000 Int))
	(petersen_14 nil_368 x_76000 nil_367)))
(declare-fun index_2 (Maybe_10 list_325 Int) Bool)
(assert (forall ((z_2406 Int) (xs_803 list_325))
	(index_2 (Just_10 z_2406) (cons_321 z_2406 xs_803) Z_2410)))
(assert (forall ((x_76087 Int) (x_76024 Maybe_10) (z_2406 Int) (xs_803 list_325) (y_2709 Int))
	(=> (and (diseqInt y_2709 Z_2410) (index_2 x_76024 xs_803 x_76087) (minus_421 x_76087 y_2709 (S_561 Z_2410))) (index_2 x_76024 (cons_321 z_2406 xs_803) y_2709))))
(assert (forall ((y_2709 Int))
	(index_2 Nothing_10 nil_366 y_2709)))
(declare-fun formula_6 (list_324 list_325) Bool)
(assert (forall ((x_76028 list_324) (y_2710 Int) (z_2407 list_325))
	(=> (and (lt_420 y_2710 (S_561 (S_561 (S_561 Z_2410)))) (formula_6 x_76028 z_2407)) (formula_6 (cons_320 true_400 x_76028) (cons_321 y_2710 z_2407)))))
(assert (forall ((x_76030 list_324) (y_2710 Int) (z_2407 list_325))
	(=> (and (ge_400 y_2710 (S_561 (S_561 (S_561 Z_2410)))) (formula_6 x_76030 z_2407)) (formula_6 (cons_320 false_400 x_76030) (cons_321 y_2710 z_2407)))))
(assert (formula_6 nil_365 nil_366))
(declare-fun colouring_4 (list_324 list_325 list_326) Bool)
(assert (forall ((x_76035 list_324) (c_43 Int) (u_13 Int) (v_13 Int) (z_2408 list_326) (a_81 list_325))
	(=> (and (colouring_4 x_76035 a_81 z_2408) (index_2 (Just_10 c_43) a_81 v_13) (index_2 (Just_10 c_43) a_81 u_13)) (colouring_4 (cons_320 false_400 x_76035) a_81 (cons_322 (pair_129 u_13 v_13) z_2408)))))
(assert (forall ((x_76039 list_324) (c_44 Int) (c_43 Int) (u_13 Int) (v_13 Int) (z_2408 list_326) (a_81 list_325))
	(=> (and (diseqInt c_43 c_44) (colouring_4 x_76039 a_81 z_2408) (index_2 (Just_10 c_44) a_81 v_13) (index_2 (Just_10 c_43) a_81 u_13)) (colouring_4 (cons_320 true_400 x_76039) a_81 (cons_322 (pair_129 u_13 v_13) z_2408)))))
(assert (forall ((x_76043 list_324) (c_43 Int) (u_13 Int) (v_13 Int) (z_2408 list_326) (a_81 list_325))
	(=> (and (colouring_4 x_76043 a_81 z_2408) (index_2 Nothing_10 a_81 v_13) (index_2 (Just_10 c_43) a_81 u_13)) (colouring_4 (cons_320 false_400 x_76043) a_81 (cons_322 (pair_129 u_13 v_13) z_2408)))))
(assert (forall ((x_76046 list_324) (u_13 Int) (v_13 Int) (z_2408 list_326) (a_81 list_325))
	(=> (and (colouring_4 x_76046 a_81 z_2408) (index_2 Nothing_10 a_81 u_13)) (colouring_4 (cons_320 false_400 x_76046) a_81 (cons_322 (pair_129 u_13 v_13) z_2408)))))
(assert (forall ((a_81 list_325))
	(colouring_4 nil_365 a_81 nil_367)))
(declare-fun and_402 (Bool_400 list_324) Bool)
(assert (forall ((x_76048 Bool_400) (x_76049 Bool_400) (y_2712 Bool_400) (xs_804 list_324))
	(=> (and (and_402 x_76049 xs_804) (and_403 x_76048 y_2712 x_76049)) (and_402 x_76048 (cons_320 y_2712 xs_804)))))
(assert (and_402 true_400 nil_365))
(declare-fun colouring_5 (Bool_400 list_326 list_325) Bool)
(assert (forall ((x_76051 Bool_400) (x_76052 list_324) (x_76006 list_326) (y_2713 list_325))
	(=> (and (colouring_4 x_76052 y_2713 x_76006) (and_402 x_76051 x_76052)) (colouring_5 x_76051 x_76006 y_2713))))
(declare-fun x_76007 (list_326 list_326 list_326) Bool)
(assert (forall ((x_76055 list_326) (z_2409 pair_128) (xs_805 list_326) (y_2714 list_326))
	(=> (x_76007 x_76055 xs_805 y_2714) (x_76007 (cons_322 z_2409 x_76055) (cons_322 z_2409 xs_805) y_2714))))
(assert (forall ((x_76056 list_326))
	(x_76007 x_76056 nil_367 x_76056)))
(declare-fun concat_5 (list_326 list_327) Bool)
(assert (forall ((x_76057 list_326) (x_76058 list_326) (y_2715 list_326) (xs_806 list_327))
	(=> (and (concat_5 x_76058 xs_806) (x_76007 x_76057 y_2715 x_76058)) (concat_5 x_76057 (cons_323 y_2715 xs_806)))))
(assert (concat_5 nil_367 nil_368))
(declare-fun petersen_15 (list_326 Int) Bool)
(assert (petersen_15 nil_367 Z_2410))
(assert (forall ((x_76089 Int) (x_76088 Int) (x_76062 list_326) (x_76063 list_325) (x_76064 list_326) (x_76065 list_327) (x_76066 list_326) (x_76067 list_325) (x_76068 list_326) (x_76010 Int))
	(=> (and (diseqInt x_76010 Z_2410) (primEnumFromTo_5 x_76063 Z_2410 x_76088) (petersen_13 x_76064 x_76063) (petersen_14 x_76065 x_76010 (cons_322 (pair_129 x_76089 Z_2410) x_76064)) (concat_5 x_76066 x_76065) (primEnumFromTo_5 x_76067 Z_2410 x_76010) (petersen_12 x_76068 x_76010 x_76067) (x_76007 x_76062 x_76066 x_76068) (minus_421 x_76089 x_76010 (S_561 Z_2410)) (minus_421 x_76088 x_76010 (S_561 Z_2410))) (petersen_15 x_76062 x_76010))))
(assert (forall ((x_76091 Int) (x_76090 Int) (x_76078 list_324) (x_76070 list_325) (x_76071 list_326) (x_76072 list_327) (x_76073 list_326) (x_76074 list_325) (x_76075 list_326) (x_76076 list_326) (a_82 list_325))
	(=> (and true true (formula_6 x_76078 a_82) (and_402 true_400 x_76078) (primEnumFromTo_5 x_76070 Z_2410 x_76090) (petersen_13 x_76071 x_76070) (petersen_14 x_76072 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 Z_2410))))))))))))))))))))) (cons_322 (pair_129 x_76091 Z_2410) x_76071)) (concat_5 x_76073 x_76072) (primEnumFromTo_5 x_76074 Z_2410 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 Z_2410)))))))))))))))))))))) (petersen_12 x_76075 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 Z_2410))))))))))))))))))))) x_76074) (x_76007 x_76076 x_76073 x_76075) (colouring_5 true_400 x_76076 a_82) (minus_421 x_76091 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 Z_2410))))))))))))))))))))) (S_561 Z_2410)) (minus_421 x_76090 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 (S_561 Z_2410))))))))))))))))))))) (S_561 Z_2410))) false)))
(check-sat)