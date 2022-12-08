
(set-logic HORN)
(declare-datatypes ((Bool_202 0)) (((false_202) (true_202))))
(declare-fun diseqBool_89 (Bool_202 Bool_202) Bool)
(declare-fun isfalse_89 (Bool_202) Bool)
(declare-fun istrue_89 (Bool_202) Bool)
(assert (isfalse_89 false_202))
(assert (istrue_89 true_202))
(assert (diseqBool_89 false_202 true_202))
(assert (diseqBool_89 true_202 false_202))
(declare-fun and_202 (Bool_202 Bool_202 Bool_202) Bool)
(declare-fun or_206 (Bool_202 Bool_202 Bool_202) Bool)
(declare-fun hence_202 (Bool_202 Bool_202 Bool_202) Bool)
(declare-fun not_205 (Bool_202 Bool_202) Bool)
(assert (and_202 false_202 false_202 false_202))
(assert (and_202 false_202 true_202 false_202))
(assert (and_202 false_202 false_202 true_202))
(assert (and_202 true_202 true_202 true_202))
(assert (or_206 false_202 false_202 false_202))
(assert (or_206 true_202 true_202 false_202))
(assert (or_206 true_202 false_202 true_202))
(assert (or_206 true_202 true_202 true_202))
(assert (hence_202 true_202 false_202 false_202))
(assert (hence_202 false_202 true_202 false_202))
(assert (hence_202 true_202 false_202 true_202))
(assert (hence_202 true_202 true_202 true_202))
(assert (not_205 true_202 false_202))
(assert (not_205 false_202 true_202))
(declare-datatypes ((A_34 0)) (((X_31227) (Y_1242))))
(declare-fun diseqA_8 (A_34 A_34) Bool)
(declare-fun isX_11 (A_34) Bool)
(declare-fun isY_8 (A_34) Bool)
(assert (isX_11 X_31227))
(assert (isY_8 Y_1242))
(assert (diseqA_8 X_31227 Y_1242))
(assert (diseqA_8 Y_1242 X_31227))
(declare-datatypes ((R_242 0)) (((Nil_157) (Eps_16) (Atom_8 (projAtom_16 A_34)) (Plus_67 (projPlus_32 R_242) (projPlus_33 R_242)) (Seq_16 (projSeq_32 R_242) (projSeq_33 R_242)) (Star_8 (projStar_16 R_242)))))
(declare-fun diseqR_8 (R_242 R_242) Bool)
(declare-fun projAtom_17 (A_34 R_242) Bool)
(declare-fun projPlus_34 (R_242 R_242) Bool)
(declare-fun projPlus_35 (R_242 R_242) Bool)
(declare-fun projSeq_34 (R_242 R_242) Bool)
(declare-fun projSeq_35 (R_242 R_242) Bool)
(declare-fun projStar_17 (R_242 R_242) Bool)
(declare-fun isNil_157 (R_242) Bool)
(declare-fun isEps_8 (R_242) Bool)
(declare-fun isAtom_8 (R_242) Bool)
(declare-fun isPlus_8 (R_242) Bool)
(declare-fun isSeq_8 (R_242) Bool)
(declare-fun isStar_8 (R_242) Bool)
(assert (forall ((x_33316 A_34))
	(projAtom_17 x_33316 (Atom_8 x_33316))))
(assert (forall ((x_33318 R_242) (x_33319 R_242))
	(projPlus_34 x_33318 (Plus_67 x_33318 x_33319))))
(assert (forall ((x_33318 R_242) (x_33319 R_242))
	(projPlus_35 x_33319 (Plus_67 x_33318 x_33319))))
(assert (forall ((x_33321 R_242) (x_33322 R_242))
	(projSeq_34 x_33321 (Seq_16 x_33321 x_33322))))
(assert (forall ((x_33321 R_242) (x_33322 R_242))
	(projSeq_35 x_33322 (Seq_16 x_33321 x_33322))))
(assert (forall ((x_33324 R_242))
	(projStar_17 x_33324 (Star_8 x_33324))))
(assert (isNil_157 Nil_157))
(assert (isEps_8 Eps_16))
(assert (forall ((x_33326 A_34))
	(isAtom_8 (Atom_8 x_33326))))
(assert (forall ((x_33327 R_242) (x_33328 R_242))
	(isPlus_8 (Plus_67 x_33327 x_33328))))
(assert (forall ((x_33329 R_242) (x_33330 R_242))
	(isSeq_8 (Seq_16 x_33329 x_33330))))
(assert (forall ((x_33331 R_242))
	(isStar_8 (Star_8 x_33331))))
(assert (diseqR_8 Nil_157 Eps_16))
(assert (forall ((x_33332 A_34))
	(diseqR_8 Nil_157 (Atom_8 x_33332))))
(assert (forall ((x_33333 R_242) (x_33334 R_242))
	(diseqR_8 Nil_157 (Plus_67 x_33333 x_33334))))
(assert (forall ((x_33335 R_242) (x_33336 R_242))
	(diseqR_8 Nil_157 (Seq_16 x_33335 x_33336))))
(assert (forall ((x_33337 R_242))
	(diseqR_8 Nil_157 (Star_8 x_33337))))
(assert (diseqR_8 Eps_16 Nil_157))
(assert (forall ((x_33338 A_34))
	(diseqR_8 (Atom_8 x_33338) Nil_157)))
(assert (forall ((x_33339 R_242) (x_33340 R_242))
	(diseqR_8 (Plus_67 x_33339 x_33340) Nil_157)))
(assert (forall ((x_33341 R_242) (x_33342 R_242))
	(diseqR_8 (Seq_16 x_33341 x_33342) Nil_157)))
(assert (forall ((x_33343 R_242))
	(diseqR_8 (Star_8 x_33343) Nil_157)))
(assert (forall ((x_33344 A_34))
	(diseqR_8 Eps_16 (Atom_8 x_33344))))
(assert (forall ((x_33345 R_242) (x_33346 R_242))
	(diseqR_8 Eps_16 (Plus_67 x_33345 x_33346))))
(assert (forall ((x_33347 R_242) (x_33348 R_242))
	(diseqR_8 Eps_16 (Seq_16 x_33347 x_33348))))
(assert (forall ((x_33349 R_242))
	(diseqR_8 Eps_16 (Star_8 x_33349))))
(assert (forall ((x_33350 A_34))
	(diseqR_8 (Atom_8 x_33350) Eps_16)))
(assert (forall ((x_33351 R_242) (x_33352 R_242))
	(diseqR_8 (Plus_67 x_33351 x_33352) Eps_16)))
(assert (forall ((x_33353 R_242) (x_33354 R_242))
	(diseqR_8 (Seq_16 x_33353 x_33354) Eps_16)))
(assert (forall ((x_33355 R_242))
	(diseqR_8 (Star_8 x_33355) Eps_16)))
(assert (forall ((x_33356 A_34) (x_33357 R_242) (x_33358 R_242))
	(diseqR_8 (Atom_8 x_33356) (Plus_67 x_33357 x_33358))))
(assert (forall ((x_33359 A_34) (x_33360 R_242) (x_33361 R_242))
	(diseqR_8 (Atom_8 x_33359) (Seq_16 x_33360 x_33361))))
(assert (forall ((x_33362 A_34) (x_33363 R_242))
	(diseqR_8 (Atom_8 x_33362) (Star_8 x_33363))))
(assert (forall ((x_33364 R_242) (x_33365 R_242) (x_33366 A_34))
	(diseqR_8 (Plus_67 x_33364 x_33365) (Atom_8 x_33366))))
(assert (forall ((x_33367 R_242) (x_33368 R_242) (x_33369 A_34))
	(diseqR_8 (Seq_16 x_33367 x_33368) (Atom_8 x_33369))))
(assert (forall ((x_33370 R_242) (x_33371 A_34))
	(diseqR_8 (Star_8 x_33370) (Atom_8 x_33371))))
(assert (forall ((x_33372 R_242) (x_33373 R_242) (x_33374 R_242) (x_33375 R_242))
	(diseqR_8 (Plus_67 x_33372 x_33373) (Seq_16 x_33374 x_33375))))
(assert (forall ((x_33376 R_242) (x_33377 R_242) (x_33378 R_242))
	(diseqR_8 (Plus_67 x_33376 x_33377) (Star_8 x_33378))))
(assert (forall ((x_33379 R_242) (x_33380 R_242) (x_33381 R_242) (x_33382 R_242))
	(diseqR_8 (Seq_16 x_33379 x_33380) (Plus_67 x_33381 x_33382))))
(assert (forall ((x_33383 R_242) (x_33384 R_242) (x_33385 R_242))
	(diseqR_8 (Star_8 x_33383) (Plus_67 x_33384 x_33385))))
(assert (forall ((x_33386 R_242) (x_33387 R_242) (x_33388 R_242))
	(diseqR_8 (Seq_16 x_33386 x_33387) (Star_8 x_33388))))
(assert (forall ((x_33389 R_242) (x_33390 R_242) (x_33391 R_242))
	(diseqR_8 (Star_8 x_33389) (Seq_16 x_33390 x_33391))))
(assert (forall ((x_33392 A_34) (x_33393 A_34))
	(=> (diseqA_8 x_33392 x_33393) (diseqR_8 (Atom_8 x_33392) (Atom_8 x_33393)))))
(assert (forall ((x_33394 R_242) (x_33395 R_242) (x_33396 R_242) (x_33397 R_242))
	(=> (diseqR_8 x_33394 x_33396) (diseqR_8 (Plus_67 x_33394 x_33395) (Plus_67 x_33396 x_33397)))))
(assert (forall ((x_33394 R_242) (x_33395 R_242) (x_33396 R_242) (x_33397 R_242))
	(=> (diseqR_8 x_33395 x_33397) (diseqR_8 (Plus_67 x_33394 x_33395) (Plus_67 x_33396 x_33397)))))
(assert (forall ((x_33398 R_242) (x_33399 R_242) (x_33400 R_242) (x_33401 R_242))
	(=> (diseqR_8 x_33398 x_33400) (diseqR_8 (Seq_16 x_33398 x_33399) (Seq_16 x_33400 x_33401)))))
(assert (forall ((x_33398 R_242) (x_33399 R_242) (x_33400 R_242) (x_33401 R_242))
	(=> (diseqR_8 x_33399 x_33401) (diseqR_8 (Seq_16 x_33398 x_33399) (Seq_16 x_33400 x_33401)))))
(assert (forall ((x_33402 R_242) (x_33403 R_242))
	(=> (diseqR_8 x_33402 x_33403) (diseqR_8 (Star_8 x_33402) (Star_8 x_33403)))))
(declare-datatypes ((list_141 0)) (((nil_158) (cons_141 (head_282 A_34) (tail_282 list_141)))))
(declare-fun diseqlist_141 (list_141 list_141) Bool)
(declare-fun head_283 (A_34 list_141) Bool)
(declare-fun tail_283 (list_141 list_141) Bool)
(declare-fun isnil_158 (list_141) Bool)
(declare-fun iscons_141 (list_141) Bool)
(assert (forall ((x_33405 A_34) (x_33406 list_141))
	(head_283 x_33405 (cons_141 x_33405 x_33406))))
(assert (forall ((x_33405 A_34) (x_33406 list_141))
	(tail_283 x_33406 (cons_141 x_33405 x_33406))))
(assert (isnil_158 nil_158))
(assert (forall ((x_33408 A_34) (x_33409 list_141))
	(iscons_141 (cons_141 x_33408 x_33409))))
(assert (forall ((x_33410 A_34) (x_33411 list_141))
	(diseqlist_141 nil_158 (cons_141 x_33410 x_33411))))
(assert (forall ((x_33412 A_34) (x_33413 list_141))
	(diseqlist_141 (cons_141 x_33412 x_33413) nil_158)))
(assert (forall ((x_33414 A_34) (x_33415 list_141) (x_33416 A_34) (x_33417 list_141))
	(=> (diseqA_8 x_33414 x_33416) (diseqlist_141 (cons_141 x_33414 x_33415) (cons_141 x_33416 x_33417)))))
(assert (forall ((x_33414 A_34) (x_33415 list_141) (x_33416 A_34) (x_33417 list_141))
	(=> (diseqlist_141 x_33415 x_33417) (diseqlist_141 (cons_141 x_33414 x_33415) (cons_141 x_33416 x_33417)))))
(declare-fun seq_17 (R_242 R_242 R_242) Bool)
(assert (forall ((y_1243 R_242))
	(seq_17 Nil_157 Nil_157 y_1243)))
(assert (forall ((x_31229 R_242) (x_31471 A_34))
	(seq_17 Nil_157 (Atom_8 x_31471) Nil_157)))
(assert (forall ((x_31229 R_242))
	(seq_17 Nil_157 Eps_16 Nil_157)))
(assert (forall ((x_31229 R_242) (x_31472 R_242) (x_31473 R_242))
	(seq_17 Nil_157 (Plus_67 x_31472 x_31473) Nil_157)))
(assert (forall ((x_31229 R_242) (x_31474 R_242) (x_31475 R_242))
	(seq_17 Nil_157 (Seq_16 x_31474 x_31475) Nil_157)))
(assert (forall ((x_31229 R_242) (x_31476 R_242))
	(seq_17 Nil_157 (Star_8 x_31476) Nil_157)))
(assert (forall ((x_31230 R_242) (x_31285 A_34) (x_31229 R_242))
	(seq_17 (Atom_8 x_31285) Eps_16 (Atom_8 x_31285))))
(assert (forall ((x_31230 R_242) (x_31229 R_242))
	(seq_17 Eps_16 Eps_16 Eps_16)))
(assert (forall ((x_31230 R_242) (x_31286 R_242) (x_31287 R_242) (x_31229 R_242))
	(seq_17 (Plus_67 x_31286 x_31287) Eps_16 (Plus_67 x_31286 x_31287))))
(assert (forall ((x_31230 R_242) (x_31288 R_242) (x_31289 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 x_31288 x_31289) Eps_16 (Seq_16 x_31288 x_31289))))
(assert (forall ((x_31230 R_242) (x_31290 R_242) (x_31229 R_242))
	(seq_17 (Star_8 x_31290) Eps_16 (Star_8 x_31290))))
(assert (forall ((x_31231 R_242) (x_31249 A_34) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Atom_8 x_31249) (Atom_8 x_31249) Eps_16)))
(assert (forall ((x_31231 R_242) (x_31250 R_242) (x_31251 R_242) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Plus_67 x_31250 x_31251) (Plus_67 x_31250 x_31251) Eps_16)))
(assert (forall ((x_31231 R_242) (x_31252 R_242) (x_31253 R_242) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 x_31252 x_31253) (Seq_16 x_31252 x_31253) Eps_16)))
(assert (forall ((x_31231 R_242) (x_31254 R_242) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Star_8 x_31254) (Star_8 x_31254) Eps_16)))
(assert (forall ((x_31232 R_242) (x_31243 A_34) (x_31231 R_242) (x_31255 A_34) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 (Atom_8 x_31255) (Atom_8 x_31243)) (Atom_8 x_31255) (Atom_8 x_31243))))
(assert (forall ((x_31232 R_242) (x_31243 A_34) (x_31231 R_242) (x_31256 R_242) (x_31257 R_242) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 (Plus_67 x_31256 x_31257) (Atom_8 x_31243)) (Plus_67 x_31256 x_31257) (Atom_8 x_31243))))
(assert (forall ((x_31232 R_242) (x_31243 A_34) (x_31231 R_242) (x_31258 R_242) (x_31259 R_242) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 (Seq_16 x_31258 x_31259) (Atom_8 x_31243)) (Seq_16 x_31258 x_31259) (Atom_8 x_31243))))
(assert (forall ((x_31232 R_242) (x_31243 A_34) (x_31231 R_242) (x_31260 R_242) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 (Star_8 x_31260) (Atom_8 x_31243)) (Star_8 x_31260) (Atom_8 x_31243))))
(assert (forall ((x_31232 R_242) (x_31244 R_242) (x_31245 R_242) (x_31231 R_242) (x_31267 A_34) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 (Atom_8 x_31267) (Plus_67 x_31244 x_31245)) (Atom_8 x_31267) (Plus_67 x_31244 x_31245))))
(assert (forall ((x_31232 R_242) (x_31244 R_242) (x_31245 R_242) (x_31231 R_242) (x_31268 R_242) (x_31269 R_242) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 (Plus_67 x_31268 x_31269) (Plus_67 x_31244 x_31245)) (Plus_67 x_31268 x_31269) (Plus_67 x_31244 x_31245))))
(assert (forall ((x_31232 R_242) (x_31244 R_242) (x_31245 R_242) (x_31231 R_242) (x_31270 R_242) (x_31271 R_242) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 (Seq_16 x_31270 x_31271) (Plus_67 x_31244 x_31245)) (Seq_16 x_31270 x_31271) (Plus_67 x_31244 x_31245))))
(assert (forall ((x_31232 R_242) (x_31244 R_242) (x_31245 R_242) (x_31231 R_242) (x_31272 R_242) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 (Star_8 x_31272) (Plus_67 x_31244 x_31245)) (Star_8 x_31272) (Plus_67 x_31244 x_31245))))
(assert (forall ((x_31232 R_242) (x_31246 R_242) (x_31247 R_242) (x_31231 R_242) (x_31273 A_34) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 (Atom_8 x_31273) (Seq_16 x_31246 x_31247)) (Atom_8 x_31273) (Seq_16 x_31246 x_31247))))
(assert (forall ((x_31232 R_242) (x_31246 R_242) (x_31247 R_242) (x_31231 R_242) (x_31274 R_242) (x_31275 R_242) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 (Plus_67 x_31274 x_31275) (Seq_16 x_31246 x_31247)) (Plus_67 x_31274 x_31275) (Seq_16 x_31246 x_31247))))
(assert (forall ((x_31232 R_242) (x_31246 R_242) (x_31247 R_242) (x_31231 R_242) (x_31276 R_242) (x_31277 R_242) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 (Seq_16 x_31276 x_31277) (Seq_16 x_31246 x_31247)) (Seq_16 x_31276 x_31277) (Seq_16 x_31246 x_31247))))
(assert (forall ((x_31232 R_242) (x_31246 R_242) (x_31247 R_242) (x_31231 R_242) (x_31278 R_242) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 (Star_8 x_31278) (Seq_16 x_31246 x_31247)) (Star_8 x_31278) (Seq_16 x_31246 x_31247))))
(assert (forall ((x_31232 R_242) (x_31248 R_242) (x_31231 R_242) (x_31279 A_34) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 (Atom_8 x_31279) (Star_8 x_31248)) (Atom_8 x_31279) (Star_8 x_31248))))
(assert (forall ((x_31232 R_242) (x_31248 R_242) (x_31231 R_242) (x_31280 R_242) (x_31281 R_242) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 (Plus_67 x_31280 x_31281) (Star_8 x_31248)) (Plus_67 x_31280 x_31281) (Star_8 x_31248))))
(assert (forall ((x_31232 R_242) (x_31248 R_242) (x_31231 R_242) (x_31282 R_242) (x_31283 R_242) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 (Seq_16 x_31282 x_31283) (Star_8 x_31248)) (Seq_16 x_31282 x_31283) (Star_8 x_31248))))
(assert (forall ((x_31232 R_242) (x_31248 R_242) (x_31231 R_242) (x_31284 R_242) (x_31230 R_242) (x_31229 R_242))
	(seq_17 (Seq_16 (Star_8 x_31284) (Star_8 x_31248)) (Star_8 x_31284) (Star_8 x_31248))))
(declare-fun plus_68 (R_242 R_242 R_242) Bool)
(assert (forall ((x_33231 R_242))
	(plus_68 x_33231 Nil_157 x_33231)))
(assert (forall ((x_31234 R_242) (x_32413 A_34))
	(plus_68 (Atom_8 x_32413) (Atom_8 x_32413) Nil_157)))
(assert (forall ((x_31234 R_242))
	(plus_68 Eps_16 Eps_16 Nil_157)))
(assert (forall ((x_31234 R_242) (x_32414 R_242) (x_32415 R_242))
	(plus_68 (Plus_67 x_32414 x_32415) (Plus_67 x_32414 x_32415) Nil_157)))
(assert (forall ((x_31234 R_242) (x_32416 R_242) (x_32417 R_242))
	(plus_68 (Seq_16 x_32416 x_32417) (Seq_16 x_32416 x_32417) Nil_157)))
(assert (forall ((x_31234 R_242) (x_32418 R_242))
	(plus_68 (Star_8 x_32418) (Star_8 x_32418) Nil_157)))
(assert (forall ((x_31235 R_242) (x_32407 A_34) (x_31234 R_242) (x_32419 A_34))
	(plus_68 (Plus_67 (Atom_8 x_32419) (Atom_8 x_32407)) (Atom_8 x_32419) (Atom_8 x_32407))))
(assert (forall ((x_31235 R_242) (x_32407 A_34) (x_31234 R_242))
	(plus_68 (Plus_67 Eps_16 (Atom_8 x_32407)) Eps_16 (Atom_8 x_32407))))
(assert (forall ((x_31235 R_242) (x_32407 A_34) (x_31234 R_242) (x_32420 R_242) (x_32421 R_242))
	(plus_68 (Plus_67 (Plus_67 x_32420 x_32421) (Atom_8 x_32407)) (Plus_67 x_32420 x_32421) (Atom_8 x_32407))))
(assert (forall ((x_31235 R_242) (x_32407 A_34) (x_31234 R_242) (x_32422 R_242) (x_32423 R_242))
	(plus_68 (Plus_67 (Seq_16 x_32422 x_32423) (Atom_8 x_32407)) (Seq_16 x_32422 x_32423) (Atom_8 x_32407))))
(assert (forall ((x_31235 R_242) (x_32407 A_34) (x_31234 R_242) (x_32424 R_242))
	(plus_68 (Plus_67 (Star_8 x_32424) (Atom_8 x_32407)) (Star_8 x_32424) (Atom_8 x_32407))))
(assert (forall ((x_31235 R_242) (x_31234 R_242) (x_32425 A_34))
	(plus_68 (Plus_67 (Atom_8 x_32425) Eps_16) (Atom_8 x_32425) Eps_16)))
(assert (forall ((x_31235 R_242) (x_31234 R_242))
	(plus_68 (Plus_67 Eps_16 Eps_16) Eps_16 Eps_16)))
(assert (forall ((x_31235 R_242) (x_31234 R_242) (x_32426 R_242) (x_32427 R_242))
	(plus_68 (Plus_67 (Plus_67 x_32426 x_32427) Eps_16) (Plus_67 x_32426 x_32427) Eps_16)))
(assert (forall ((x_31235 R_242) (x_31234 R_242) (x_32428 R_242) (x_32429 R_242))
	(plus_68 (Plus_67 (Seq_16 x_32428 x_32429) Eps_16) (Seq_16 x_32428 x_32429) Eps_16)))
(assert (forall ((x_31235 R_242) (x_31234 R_242) (x_32430 R_242))
	(plus_68 (Plus_67 (Star_8 x_32430) Eps_16) (Star_8 x_32430) Eps_16)))
(assert (forall ((x_31235 R_242) (x_32408 R_242) (x_32409 R_242) (x_31234 R_242) (x_32431 A_34))
	(plus_68 (Plus_67 (Atom_8 x_32431) (Plus_67 x_32408 x_32409)) (Atom_8 x_32431) (Plus_67 x_32408 x_32409))))
(assert (forall ((x_31235 R_242) (x_32408 R_242) (x_32409 R_242) (x_31234 R_242))
	(plus_68 (Plus_67 Eps_16 (Plus_67 x_32408 x_32409)) Eps_16 (Plus_67 x_32408 x_32409))))
(assert (forall ((x_31235 R_242) (x_32408 R_242) (x_32409 R_242) (x_31234 R_242) (x_32432 R_242) (x_32433 R_242))
	(plus_68 (Plus_67 (Plus_67 x_32432 x_32433) (Plus_67 x_32408 x_32409)) (Plus_67 x_32432 x_32433) (Plus_67 x_32408 x_32409))))
(assert (forall ((x_31235 R_242) (x_32408 R_242) (x_32409 R_242) (x_31234 R_242) (x_32434 R_242) (x_32435 R_242))
	(plus_68 (Plus_67 (Seq_16 x_32434 x_32435) (Plus_67 x_32408 x_32409)) (Seq_16 x_32434 x_32435) (Plus_67 x_32408 x_32409))))
(assert (forall ((x_31235 R_242) (x_32408 R_242) (x_32409 R_242) (x_31234 R_242) (x_32436 R_242))
	(plus_68 (Plus_67 (Star_8 x_32436) (Plus_67 x_32408 x_32409)) (Star_8 x_32436) (Plus_67 x_32408 x_32409))))
(assert (forall ((x_31235 R_242) (x_32410 R_242) (x_32411 R_242) (x_31234 R_242) (x_32437 A_34))
	(plus_68 (Plus_67 (Atom_8 x_32437) (Seq_16 x_32410 x_32411)) (Atom_8 x_32437) (Seq_16 x_32410 x_32411))))
(assert (forall ((x_31235 R_242) (x_32410 R_242) (x_32411 R_242) (x_31234 R_242))
	(plus_68 (Plus_67 Eps_16 (Seq_16 x_32410 x_32411)) Eps_16 (Seq_16 x_32410 x_32411))))
(assert (forall ((x_31235 R_242) (x_32410 R_242) (x_32411 R_242) (x_31234 R_242) (x_32438 R_242) (x_32439 R_242))
	(plus_68 (Plus_67 (Plus_67 x_32438 x_32439) (Seq_16 x_32410 x_32411)) (Plus_67 x_32438 x_32439) (Seq_16 x_32410 x_32411))))
(assert (forall ((x_31235 R_242) (x_32410 R_242) (x_32411 R_242) (x_31234 R_242) (x_32440 R_242) (x_32441 R_242))
	(plus_68 (Plus_67 (Seq_16 x_32440 x_32441) (Seq_16 x_32410 x_32411)) (Seq_16 x_32440 x_32441) (Seq_16 x_32410 x_32411))))
(assert (forall ((x_31235 R_242) (x_32410 R_242) (x_32411 R_242) (x_31234 R_242) (x_32442 R_242))
	(plus_68 (Plus_67 (Star_8 x_32442) (Seq_16 x_32410 x_32411)) (Star_8 x_32442) (Seq_16 x_32410 x_32411))))
(assert (forall ((x_31235 R_242) (x_32412 R_242) (x_31234 R_242) (x_32443 A_34))
	(plus_68 (Plus_67 (Atom_8 x_32443) (Star_8 x_32412)) (Atom_8 x_32443) (Star_8 x_32412))))
(assert (forall ((x_31235 R_242) (x_32412 R_242) (x_31234 R_242))
	(plus_68 (Plus_67 Eps_16 (Star_8 x_32412)) Eps_16 (Star_8 x_32412))))
(assert (forall ((x_31235 R_242) (x_32412 R_242) (x_31234 R_242) (x_32444 R_242) (x_32445 R_242))
	(plus_68 (Plus_67 (Plus_67 x_32444 x_32445) (Star_8 x_32412)) (Plus_67 x_32444 x_32445) (Star_8 x_32412))))
(assert (forall ((x_31235 R_242) (x_32412 R_242) (x_31234 R_242) (x_32446 R_242) (x_32447 R_242))
	(plus_68 (Plus_67 (Seq_16 x_32446 x_32447) (Star_8 x_32412)) (Seq_16 x_32446 x_32447) (Star_8 x_32412))))
(assert (forall ((x_31235 R_242) (x_32412 R_242) (x_31234 R_242) (x_32448 R_242))
	(plus_68 (Plus_67 (Star_8 x_32448) (Star_8 x_32412)) (Star_8 x_32448) (Star_8 x_32412))))
(declare-fun eqA_8 (Bool_202 A_34 A_34) Bool)
(assert (eqA_8 true_202 Y_1242 Y_1242))
(assert (eqA_8 false_202 Y_1242 X_31227))
(assert (eqA_8 false_202 X_31227 Y_1242))
(assert (eqA_8 true_202 X_31227 X_31227))
(declare-fun eps_17 (Bool_202 R_242) Bool)
(assert (forall ((y_1246 R_242))
	(eps_17 true_202 (Star_8 y_1246))))
(assert (forall ((x_33267 Bool_202) (x_33268 Bool_202) (x_33269 Bool_202) (r_243 R_242) (q_71 R_242))
	(=> (and (eps_17 x_33268 r_243) (eps_17 x_33269 q_71) (and_202 x_33267 x_33268 x_33269)) (eps_17 x_33267 (Seq_16 r_243 q_71)))))
(assert (forall ((x_33270 Bool_202) (x_33271 Bool_202) (x_33272 Bool_202) (p_208 R_242) (q_72 R_242))
	(=> (and (eps_17 x_33271 p_208) (eps_17 x_33272 q_72) (or_206 x_33270 x_33271 x_33272)) (eps_17 x_33270 (Plus_67 p_208 q_72)))))
(assert (eps_17 true_202 Eps_16))
(assert (forall ((x_31238 R_242) (x_32449 A_34))
	(eps_17 false_202 (Atom_8 x_32449))))
(assert (forall ((x_31238 R_242))
	(eps_17 false_202 Nil_157)))
(declare-fun epsR_8 (R_242 R_242) Bool)
(assert (forall ((x_31239 R_242))
	(=> (eps_17 true_202 x_31239) (epsR_8 Eps_16 x_31239))))
(assert (forall ((x_31239 R_242))
	(=> (eps_17 false_202 x_31239) (epsR_8 Nil_157 x_31239))))
(declare-fun step_8 (R_242 R_242 A_34) Bool)
(assert (forall ((x_33280 R_242) (x_33281 R_242) (p_209 R_242) (y_1247 A_34))
	(=> (and (step_8 x_33281 p_209 y_1247) (seq_17 x_33280 x_33281 (Star_8 p_209))) (step_8 x_33280 (Star_8 p_209) y_1247))))
(assert (forall ((x_33283 R_242) (x_33284 R_242) (x_33285 R_242) (x_33286 R_242) (x_33287 R_242) (x_33288 R_242) (r_244 R_242) (q_73 R_242) (y_1247 A_34))
	(=> (and (step_8 x_33284 r_244 y_1247) (seq_17 x_33285 x_33284 q_73) (epsR_8 x_33286 r_244) (step_8 x_33287 q_73 y_1247) (seq_17 x_33288 x_33286 x_33287) (plus_68 x_33283 x_33285 x_33288)) (step_8 x_33283 (Seq_16 r_244 q_73) y_1247))))
(assert (forall ((x_33290 R_242) (x_33291 R_242) (x_33292 R_242) (p_210 R_242) (q_74 R_242) (y_1247 A_34))
	(=> (and (step_8 x_33291 p_210 y_1247) (step_8 x_33292 q_74 y_1247) (plus_68 x_33290 x_33291 x_33292)) (step_8 x_33290 (Plus_67 p_210 q_74) y_1247))))
(assert (forall ((a_35 A_34) (y_1247 A_34))
	(=> (eqA_8 true_202 a_35 y_1247) (step_8 Eps_16 (Atom_8 a_35) y_1247))))
(assert (forall ((a_35 A_34) (y_1247 A_34))
	(=> (eqA_8 false_202 a_35 y_1247) (step_8 Nil_157 (Atom_8 a_35) y_1247))))
(assert (forall ((x_31241 R_242) (y_1247 A_34))
	(step_8 Nil_157 Eps_16 y_1247)))
(assert (forall ((x_31241 R_242) (y_1247 A_34))
	(step_8 Nil_157 Nil_157 y_1247)))
(declare-fun recognise_8 (Bool_202 R_242 list_141) Bool)
(assert (forall ((x_33300 Bool_202) (x_33301 R_242) (z_1162 A_34) (xs_379 list_141) (x_31242 R_242))
	(=> (and (step_8 x_33301 x_31242 z_1162) (recognise_8 x_33300 x_33301 xs_379)) (recognise_8 x_33300 x_31242 (cons_141 z_1162 xs_379)))))
(assert (forall ((x_33303 Bool_202) (x_31242 R_242))
	(=> (eps_17 x_33303 x_31242) (recognise_8 x_33303 x_31242 nil_158))))
(assert (forall ((x_33305 Bool_202) (x_33306 Bool_202) (p_211 R_242) (q_75 R_242) (r_245 R_242) (s_295 list_141))
	(=> (and true (diseqBool_89 x_33305 x_33306) (recognise_8 x_33305 (Seq_16 p_211 (Plus_67 q_75 r_245)) s_295) (recognise_8 x_33306 (Plus_67 (Seq_16 p_211 q_75) (Seq_16 p_211 r_245)) s_295)) false)))
(check-sat)
