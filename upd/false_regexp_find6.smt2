
(set-logic HORN)
(declare-datatypes ((Bool_380 0)) (((false_380) (true_380))))
(declare-fun diseqBool_173 (Bool_380 Bool_380) Bool)
(declare-fun isfalse_173 (Bool_380) Bool)
(declare-fun istrue_173 (Bool_380) Bool)
(assert (isfalse_173 false_380))
(assert (istrue_173 true_380))
(assert (diseqBool_173 false_380 true_380))
(assert (diseqBool_173 true_380 false_380))
(declare-fun and_381 (Bool_380 Bool_380 Bool_380) Bool)
(declare-fun or_392 (Bool_380 Bool_380 Bool_380) Bool)
(declare-fun hence_380 (Bool_380 Bool_380 Bool_380) Bool)
(declare-fun not_385 (Bool_380 Bool_380) Bool)
(assert (and_381 false_380 false_380 false_380))
(assert (and_381 false_380 true_380 false_380))
(assert (and_381 false_380 false_380 true_380))
(assert (and_381 true_380 true_380 true_380))
(assert (or_392 false_380 false_380 false_380))
(assert (or_392 true_380 true_380 false_380))
(assert (or_392 true_380 false_380 true_380))
(assert (or_392 true_380 true_380 true_380))
(assert (hence_380 true_380 false_380 false_380))
(assert (hence_380 false_380 true_380 false_380))
(assert (hence_380 true_380 false_380 true_380))
(assert (hence_380 true_380 true_380 true_380))
(assert (not_385 true_380 false_380))
(assert (not_385 false_380 true_380))
(declare-datatypes ((T_4 0)) (((A_64) (B_52) (C_30))))
(declare-fun diseqT_4 (T_4 T_4) Bool)
(declare-fun isA_11 (T_4) Bool)
(declare-fun isB_11 (T_4) Bool)
(declare-fun isC_11 (T_4) Bool)
(assert (isA_11 A_64))
(assert (isB_11 B_52))
(assert (isC_11 C_30))
(assert (diseqT_4 A_64 B_52))
(assert (diseqT_4 A_64 C_30))
(assert (diseqT_4 B_52 A_64))
(assert (diseqT_4 C_30 A_64))
(assert (diseqT_4 B_52 C_30))
(assert (diseqT_4 C_30 B_52))
(declare-datatypes ((list_297 0)) (((nil_329) (cons_295 (head_590 T_4) (tail_592 list_297)))))
(declare-fun diseqlist_295 (list_297 list_297) Bool)
(declare-fun head_591 (T_4 list_297) Bool)
(declare-fun tail_593 (list_297 list_297) Bool)
(declare-fun isnil_329 (list_297) Bool)
(declare-fun iscons_295 (list_297) Bool)
(assert (forall ((x_59249 T_4) (x_59250 list_297))
	(head_591 x_59249 (cons_295 x_59249 x_59250))))
(assert (forall ((x_59249 T_4) (x_59250 list_297))
	(tail_593 x_59250 (cons_295 x_59249 x_59250))))
(assert (isnil_329 nil_329))
(assert (forall ((x_59252 T_4) (x_59253 list_297))
	(iscons_295 (cons_295 x_59252 x_59253))))
(assert (forall ((x_59254 T_4) (x_59255 list_297))
	(diseqlist_295 nil_329 (cons_295 x_59254 x_59255))))
(assert (forall ((x_59256 T_4) (x_59257 list_297))
	(diseqlist_295 (cons_295 x_59256 x_59257) nil_329)))
(assert (forall ((x_59258 T_4) (x_59259 list_297) (x_59260 T_4) (x_59261 list_297))
	(=> (diseqT_4 x_59258 x_59260) (diseqlist_295 (cons_295 x_59258 x_59259) (cons_295 x_59260 x_59261)))))
(assert (forall ((x_59258 T_4) (x_59259 list_297) (x_59260 T_4) (x_59261 list_297))
	(=> (diseqlist_295 x_59259 x_59261) (diseqlist_295 (cons_295 x_59258 x_59259) (cons_295 x_59260 x_59261)))))
(declare-datatypes ((R_473 0)) (((Nil_330) (Eps_36) (Atom_18 (projAtom_36 T_4)) (x_59200 (proj_52 R_473) (proj_53 R_473)) (x_59201 (proj_54 R_473) (proj_55 R_473)) (Star_18 (projStar_36 R_473)))))
(declare-fun diseqR_18 (R_473 R_473) Bool)
(declare-fun projAtom_37 (T_4 R_473) Bool)
(declare-fun proj_56 (R_473 R_473) Bool)
(declare-fun proj_57 (R_473 R_473) Bool)
(declare-fun proj_58 (R_473 R_473) Bool)
(declare-fun proj_59 (R_473 R_473) Bool)
(declare-fun projStar_37 (R_473 R_473) Bool)
(declare-fun isNil_330 (R_473) Bool)
(declare-fun isEps_18 (R_473) Bool)
(declare-fun isAtom_18 (R_473) Bool)
(declare-fun isx_27 (R_473) Bool)
(declare-fun isx_28 (R_473) Bool)
(declare-fun isStar_18 (R_473) Bool)
(assert (forall ((x_59264 T_4))
	(projAtom_37 x_59264 (Atom_18 x_59264))))
(assert (forall ((x_59266 R_473) (x_59267 R_473))
	(proj_56 x_59266 (x_59200 x_59266 x_59267))))
(assert (forall ((x_59266 R_473) (x_59267 R_473))
	(proj_57 x_59267 (x_59200 x_59266 x_59267))))
(assert (forall ((x_59269 R_473) (x_59270 R_473))
	(proj_58 x_59269 (x_59201 x_59269 x_59270))))
(assert (forall ((x_59269 R_473) (x_59270 R_473))
	(proj_59 x_59270 (x_59201 x_59269 x_59270))))
(assert (forall ((x_59272 R_473))
	(projStar_37 x_59272 (Star_18 x_59272))))
(assert (isNil_330 Nil_330))
(assert (isEps_18 Eps_36))
(assert (forall ((x_59274 T_4))
	(isAtom_18 (Atom_18 x_59274))))
(assert (forall ((x_59275 R_473) (x_59276 R_473))
	(isx_27 (x_59200 x_59275 x_59276))))
(assert (forall ((x_59277 R_473) (x_59278 R_473))
	(isx_28 (x_59201 x_59277 x_59278))))
(assert (forall ((x_59279 R_473))
	(isStar_18 (Star_18 x_59279))))
(assert (diseqR_18 Nil_330 Eps_36))
(assert (forall ((x_59280 T_4))
	(diseqR_18 Nil_330 (Atom_18 x_59280))))
(assert (forall ((x_59281 R_473) (x_59282 R_473))
	(diseqR_18 Nil_330 (x_59200 x_59281 x_59282))))
(assert (forall ((x_59283 R_473) (x_59284 R_473))
	(diseqR_18 Nil_330 (x_59201 x_59283 x_59284))))
(assert (forall ((x_59285 R_473))
	(diseqR_18 Nil_330 (Star_18 x_59285))))
(assert (diseqR_18 Eps_36 Nil_330))
(assert (forall ((x_59286 T_4))
	(diseqR_18 (Atom_18 x_59286) Nil_330)))
(assert (forall ((x_59287 R_473) (x_59288 R_473))
	(diseqR_18 (x_59200 x_59287 x_59288) Nil_330)))
(assert (forall ((x_59289 R_473) (x_59290 R_473))
	(diseqR_18 (x_59201 x_59289 x_59290) Nil_330)))
(assert (forall ((x_59291 R_473))
	(diseqR_18 (Star_18 x_59291) Nil_330)))
(assert (forall ((x_59292 T_4))
	(diseqR_18 Eps_36 (Atom_18 x_59292))))
(assert (forall ((x_59293 R_473) (x_59294 R_473))
	(diseqR_18 Eps_36 (x_59200 x_59293 x_59294))))
(assert (forall ((x_59295 R_473) (x_59296 R_473))
	(diseqR_18 Eps_36 (x_59201 x_59295 x_59296))))
(assert (forall ((x_59297 R_473))
	(diseqR_18 Eps_36 (Star_18 x_59297))))
(assert (forall ((x_59298 T_4))
	(diseqR_18 (Atom_18 x_59298) Eps_36)))
(assert (forall ((x_59299 R_473) (x_59300 R_473))
	(diseqR_18 (x_59200 x_59299 x_59300) Eps_36)))
(assert (forall ((x_59301 R_473) (x_59302 R_473))
	(diseqR_18 (x_59201 x_59301 x_59302) Eps_36)))
(assert (forall ((x_59303 R_473))
	(diseqR_18 (Star_18 x_59303) Eps_36)))
(assert (forall ((x_59304 T_4) (x_59305 R_473) (x_59306 R_473))
	(diseqR_18 (Atom_18 x_59304) (x_59200 x_59305 x_59306))))
(assert (forall ((x_59307 T_4) (x_59308 R_473) (x_59309 R_473))
	(diseqR_18 (Atom_18 x_59307) (x_59201 x_59308 x_59309))))
(assert (forall ((x_59310 T_4) (x_59311 R_473))
	(diseqR_18 (Atom_18 x_59310) (Star_18 x_59311))))
(assert (forall ((x_59312 R_473) (x_59313 R_473) (x_59314 T_4))
	(diseqR_18 (x_59200 x_59312 x_59313) (Atom_18 x_59314))))
(assert (forall ((x_59315 R_473) (x_59316 R_473) (x_59317 T_4))
	(diseqR_18 (x_59201 x_59315 x_59316) (Atom_18 x_59317))))
(assert (forall ((x_59318 R_473) (x_59319 T_4))
	(diseqR_18 (Star_18 x_59318) (Atom_18 x_59319))))
(assert (forall ((x_59320 R_473) (x_59321 R_473) (x_59322 R_473) (x_59323 R_473))
	(diseqR_18 (x_59200 x_59320 x_59321) (x_59201 x_59322 x_59323))))
(assert (forall ((x_59324 R_473) (x_59325 R_473) (x_59326 R_473))
	(diseqR_18 (x_59200 x_59324 x_59325) (Star_18 x_59326))))
(assert (forall ((x_59327 R_473) (x_59328 R_473) (x_59329 R_473) (x_59330 R_473))
	(diseqR_18 (x_59201 x_59327 x_59328) (x_59200 x_59329 x_59330))))
(assert (forall ((x_59331 R_473) (x_59332 R_473) (x_59333 R_473))
	(diseqR_18 (Star_18 x_59331) (x_59200 x_59332 x_59333))))
(assert (forall ((x_59334 R_473) (x_59335 R_473) (x_59336 R_473))
	(diseqR_18 (x_59201 x_59334 x_59335) (Star_18 x_59336))))
(assert (forall ((x_59337 R_473) (x_59338 R_473) (x_59339 R_473))
	(diseqR_18 (Star_18 x_59337) (x_59201 x_59338 x_59339))))
(assert (forall ((x_59340 T_4) (x_59341 T_4))
	(=> (diseqT_4 x_59340 x_59341) (diseqR_18 (Atom_18 x_59340) (Atom_18 x_59341)))))
(assert (forall ((x_59342 R_473) (x_59343 R_473) (x_59344 R_473) (x_59345 R_473))
	(=> (diseqR_18 x_59342 x_59344) (diseqR_18 (x_59200 x_59342 x_59343) (x_59200 x_59344 x_59345)))))
(assert (forall ((x_59342 R_473) (x_59343 R_473) (x_59344 R_473) (x_59345 R_473))
	(=> (diseqR_18 x_59343 x_59345) (diseqR_18 (x_59200 x_59342 x_59343) (x_59200 x_59344 x_59345)))))
(assert (forall ((x_59346 R_473) (x_59347 R_473) (x_59348 R_473) (x_59349 R_473))
	(=> (diseqR_18 x_59346 x_59348) (diseqR_18 (x_59201 x_59346 x_59347) (x_59201 x_59348 x_59349)))))
(assert (forall ((x_59346 R_473) (x_59347 R_473) (x_59348 R_473) (x_59349 R_473))
	(=> (diseqR_18 x_59347 x_59349) (diseqR_18 (x_59201 x_59346 x_59347) (x_59201 x_59348 x_59349)))))
(assert (forall ((x_59350 R_473) (x_59351 R_473))
	(=> (diseqR_18 x_59350 x_59351) (diseqR_18 (Star_18 x_59350) (Star_18 x_59351)))))
(declare-fun eps_37 (Bool_380 R_473) Bool)
(assert (forall ((y_2553 R_473))
	(eps_37 true_380 (Star_18 y_2553))))
(assert (forall ((x_59209 Bool_380) (x_59210 Bool_380) (x_59211 Bool_380) (r_474 R_473) (q_163 R_473))
	(=> (and (eps_37 x_59210 r_474) (eps_37 x_59211 q_163) (and_381 x_59209 x_59210 x_59211)) (eps_37 x_59209 (x_59201 r_474 q_163)))))
(assert (forall ((x_59212 Bool_380) (x_59213 Bool_380) (x_59214 Bool_380) (p_430 R_473) (q_164 R_473))
	(=> (and (eps_37 x_59213 p_430) (eps_37 x_59214 q_164) (or_392 x_59212 x_59213 x_59214)) (eps_37 x_59212 (x_59200 p_430 q_164)))))
(assert (eps_37 true_380 Eps_36))
(assert (forall ((x_59203 R_473) (x_59207 T_4))
	(eps_37 false_380 (Atom_18 x_59207))))
(assert (forall ((x_59203 R_473))
	(eps_37 false_380 Nil_330)))
(declare-fun step_18 (R_473 R_473 T_4) Bool)
(assert (forall ((x_59219 R_473) (p_431 R_473) (y_2554 T_4))
	(=> (step_18 x_59219 p_431 y_2554) (step_18 (x_59201 x_59219 (Star_18 p_431)) (Star_18 p_431) y_2554))))
(assert (forall ((x_59222 R_473) (x_59223 R_473) (r_475 R_473) (q_165 R_473) (y_2554 T_4))
	(=> (and (step_18 x_59222 r_475 y_2554) (step_18 x_59223 q_165 y_2554) (eps_37 true_380 r_475)) (step_18 (x_59200 (x_59201 x_59222 q_165) x_59223) (x_59201 r_475 q_165) y_2554))))
(assert (forall ((x_59226 R_473) (r_475 R_473) (q_165 R_473) (y_2554 T_4))
	(=> (and (step_18 x_59226 r_475 y_2554) (eps_37 false_380 r_475)) (step_18 (x_59200 (x_59201 x_59226 q_165) Nil_330) (x_59201 r_475 q_165) y_2554))))
(assert (forall ((x_59228 R_473) (x_59229 R_473) (p_432 R_473) (q_166 R_473) (y_2554 T_4))
	(=> (and (step_18 x_59228 p_432 y_2554) (step_18 x_59229 q_166 y_2554)) (step_18 (x_59200 x_59228 x_59229) (x_59200 p_432 q_166) y_2554))))
(assert (forall ((b_53 T_4))
	(step_18 Eps_36 (Atom_18 b_53) b_53)))
(assert (forall ((b_53 T_4) (y_2554 T_4))
	(=> (diseqT_4 b_53 y_2554) (step_18 Nil_330 (Atom_18 b_53) y_2554))))
(assert (forall ((x_59205 R_473) (y_2554 T_4))
	(step_18 Nil_330 Eps_36 y_2554)))
(assert (forall ((x_59205 R_473) (y_2554 T_4))
	(step_18 Nil_330 Nil_330 y_2554)))
(declare-fun rec_4 (Bool_380 R_473 list_297) Bool)
(assert (forall ((x_59234 Bool_380) (x_59235 R_473) (z_2288 T_4) (xs_753 list_297) (x_59206 R_473))
	(=> (and (step_18 x_59235 x_59206 z_2288) (rec_4 x_59234 x_59235 xs_753)) (rec_4 x_59234 x_59206 (cons_295 z_2288 xs_753)))))
(assert (forall ((x_59237 Bool_380) (x_59206 R_473))
	(=> (eps_37 x_59237 x_59206) (rec_4 x_59237 x_59206 nil_329))))
(assert (forall ((p_433 R_473))
	(=> (and true (rec_4 true_380 p_433 (cons_295 A_64 (cons_295 B_52 (cons_295 A_64 (cons_295 B_52 (cons_295 B_52 nil_329))))))) false)))
(check-sat)
