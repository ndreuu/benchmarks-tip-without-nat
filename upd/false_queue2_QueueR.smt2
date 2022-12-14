
(set-logic HORN)
(define-fun Z_2490 () Int 0)
(define-fun S_573 ((x Int)) Int (+ x 1))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun unS_815 (Int Int) Bool)
(declare-fun isZ_530 (Int) Bool)
(declare-fun isS_530 (Int) Bool)
(assert (forall ((x_78203 Int))
	(unS_815 x_78203 (S_573 x_78203))))
(assert (isZ_530 Z_2490))
(assert (forall ((x_78205 Int))
	(isS_530 (S_573 x_78205))))
(assert (forall ((x_78206 Int))
	(diseqInt Z_2490 (S_573 x_78206))))
(assert (forall ((x_78207 Int))
	(diseqInt (S_573 x_78207) Z_2490)))
(assert (forall ((x_78208 Int) (x_78209 Int))
	(=> (diseqInt x_78208 x_78209) (diseqInt (S_573 x_78208) (S_573 x_78209)))))
(declare-fun add_435 (Int Int Int) Bool)
(declare-fun minus_428 (Int Int Int) Bool)
(declare-fun le_407 (Int Int) Bool)
(declare-fun ge_407 (Int Int) Bool)
(declare-fun lt_427 (Int Int) Bool)
(declare-fun gt_410 (Int Int) Bool)
(declare-fun mult_408 (Int Int Int) Bool)
(declare-fun div_407 (Int Int Int) Bool)
(declare-fun mod_409 (Int Int Int) Bool)
(assert (forall ((y_2830 Int))
	(add_435 y_2830 Z_2490 y_2830)))
(assert (forall ((x_78197 Int) (y_2830 Int) (r_548 Int))
	(=> (add_435 r_548 x_78197 y_2830) (add_435 (S_573 r_548) (S_573 x_78197) y_2830))))
(assert (forall ((y_2830 Int))
	(minus_428 Z_2490 Z_2490 y_2830)))
(assert (forall ((x_78197 Int) (y_2830 Int) (r_548 Int))
	(=> (minus_428 r_548 x_78197 y_2830) (minus_428 (S_573 r_548) (S_573 x_78197) y_2830))))
(assert (forall ((y_2830 Int))
	(le_407 Z_2490 y_2830)))
(assert (forall ((x_78197 Int) (y_2830 Int))
	(=> (le_407 x_78197 y_2830) (le_407 (S_573 x_78197) (S_573 y_2830)))))
(assert (forall ((y_2830 Int))
	(ge_407 y_2830 Z_2490)))
(assert (forall ((x_78197 Int) (y_2830 Int))
	(=> (ge_407 x_78197 y_2830) (ge_407 (S_573 x_78197) (S_573 y_2830)))))
(assert (forall ((y_2830 Int))
	(lt_427 Z_2490 (S_573 y_2830))))
(assert (forall ((x_78197 Int) (y_2830 Int))
	(=> (lt_427 x_78197 y_2830) (lt_427 (S_573 x_78197) (S_573 y_2830)))))
(assert (forall ((y_2830 Int))
	(gt_410 (S_573 y_2830) Z_2490)))
(assert (forall ((x_78197 Int) (y_2830 Int))
	(=> (gt_410 x_78197 y_2830) (gt_410 (S_573 x_78197) (S_573 y_2830)))))
(assert (forall ((y_2830 Int))
	(mult_408 Z_2490 Z_2490 y_2830)))
(assert (forall ((x_78197 Int) (y_2830 Int) (r_548 Int) (z_2491 Int))
	(=> (and (mult_408 r_548 x_78197 y_2830) (add_435 z_2491 r_548 y_2830)) (mult_408 z_2491 (S_573 x_78197) y_2830))))
(assert (forall ((x_78197 Int) (y_2830 Int))
	(=> (lt_427 x_78197 y_2830) (div_407 Z_2490 x_78197 y_2830))))
(assert (forall ((x_78197 Int) (y_2830 Int) (r_548 Int) (z_2491 Int))
	(=> (and (ge_407 x_78197 y_2830) (minus_428 z_2491 x_78197 y_2830) (div_407 r_548 z_2491 y_2830)) (div_407 (S_573 r_548) x_78197 y_2830))))
(assert (forall ((x_78197 Int) (y_2830 Int))
	(=> (lt_427 x_78197 y_2830) (mod_409 x_78197 x_78197 y_2830))))
(assert (forall ((x_78197 Int) (y_2830 Int) (r_548 Int) (z_2491 Int))
	(=> (and (ge_407 x_78197 y_2830) (minus_428 z_2491 x_78197 y_2830) (mod_409 r_548 z_2491 y_2830)) (mod_409 r_548 x_78197 y_2830))))
(declare-datatypes ((pair_146 0)) (((pair_147 (projpair_292 Int) (projpair_293 Int)))))
(declare-fun diseqpair_73 (pair_146 pair_146) Bool)
(declare-fun projpair_296 (Int pair_146) Bool)
(declare-fun projpair_297 (Int pair_146) Bool)
(declare-fun ispair_73 (pair_146) Bool)
(assert (forall ((x_78210 Int) (x_78211 Int))
	(projpair_296 x_78210 (pair_147 x_78210 x_78211))))
(assert (forall ((x_78210 Int) (x_78211 Int))
	(projpair_297 x_78211 (pair_147 x_78210 x_78211))))
(assert (forall ((x_78213 Int) (x_78214 Int))
	(ispair_73 (pair_147 x_78213 x_78214))))
(assert (forall ((x_78215 Int) (x_78216 Int) (x_78217 Int) (x_78218 Int))
	(=> (diseqInt x_78215 x_78217) (diseqpair_73 (pair_147 x_78215 x_78216) (pair_147 x_78217 x_78218)))))
(assert (forall ((x_78215 Int) (x_78216 Int) (x_78217 Int) (x_78218 Int))
	(=> (diseqInt x_78216 x_78218) (diseqpair_73 (pair_147 x_78215 x_78216) (pair_147 x_78217 x_78218)))))
(declare-datatypes ((list_341 0)) (((nil_384) (cons_337 (head_674 Int) (tail_678 list_341)))))
(declare-fun diseqlist_337 (list_341 list_341) Bool)
(declare-fun head_675 (Int list_341) Bool)
(declare-fun tail_680 (list_341 list_341) Bool)
(declare-fun isnil_384 (list_341) Bool)
(declare-fun iscons_337 (list_341) Bool)
(assert (forall ((x_78220 Int) (x_78221 list_341))
	(head_675 x_78220 (cons_337 x_78220 x_78221))))
(assert (forall ((x_78220 Int) (x_78221 list_341))
	(tail_680 x_78221 (cons_337 x_78220 x_78221))))
(assert (isnil_384 nil_384))
(assert (forall ((x_78223 Int) (x_78224 list_341))
	(iscons_337 (cons_337 x_78223 x_78224))))
(assert (forall ((x_78225 Int) (x_78226 list_341))
	(diseqlist_337 nil_384 (cons_337 x_78225 x_78226))))
(assert (forall ((x_78227 Int) (x_78228 list_341))
	(diseqlist_337 (cons_337 x_78227 x_78228) nil_384)))
(assert (forall ((x_78229 Int) (x_78230 list_341) (x_78231 Int) (x_78232 list_341))
	(=> (diseqInt x_78229 x_78231) (diseqlist_337 (cons_337 x_78229 x_78230) (cons_337 x_78231 x_78232)))))
(assert (forall ((x_78229 Int) (x_78230 list_341) (x_78231 Int) (x_78232 list_341))
	(=> (diseqlist_337 x_78230 x_78232) (diseqlist_337 (cons_337 x_78229 x_78230) (cons_337 x_78231 x_78232)))))
(declare-datatypes ((pair_148 0)) (((pair_149 (projpair_294 list_341) (projpair_295 list_341)))))
(declare-fun diseqpair_74 (pair_148 pair_148) Bool)
(declare-fun projpair_298 (list_341 pair_148) Bool)
(declare-fun projpair_299 (list_341 pair_148) Bool)
(declare-fun ispair_74 (pair_148) Bool)
(assert (forall ((x_78233 list_341) (x_78234 list_341))
	(projpair_298 x_78233 (pair_149 x_78233 x_78234))))
(assert (forall ((x_78233 list_341) (x_78234 list_341))
	(projpair_299 x_78234 (pair_149 x_78233 x_78234))))
(assert (forall ((x_78236 list_341) (x_78237 list_341))
	(ispair_74 (pair_149 x_78236 x_78237))))
(assert (forall ((x_78238 list_341) (x_78239 list_341) (x_78240 list_341) (x_78241 list_341))
	(=> (diseqlist_337 x_78238 x_78240) (diseqpair_74 (pair_149 x_78238 x_78239) (pair_149 x_78240 x_78241)))))
(assert (forall ((x_78238 list_341) (x_78239 list_341) (x_78240 list_341) (x_78241 list_341))
	(=> (diseqlist_337 x_78239 x_78241) (diseqpair_74 (pair_149 x_78238 x_78239) (pair_149 x_78240 x_78241)))))
(declare-datatypes ((Q_238 0)) (((Q_239 (projQ_16 list_341) (projQ_17 list_341)))))
(declare-fun diseqQ_4 (Q_238 Q_238) Bool)
(declare-fun projQ_18 (list_341 Q_238) Bool)
(declare-fun projQ_19 (list_341 Q_238) Bool)
(declare-fun isQ_6 (Q_238) Bool)
(assert (forall ((x_78242 list_341) (x_78243 list_341))
	(projQ_18 x_78242 (Q_239 x_78242 x_78243))))
(assert (forall ((x_78242 list_341) (x_78243 list_341))
	(projQ_19 x_78243 (Q_239 x_78242 x_78243))))
(assert (forall ((x_78245 list_341) (x_78246 list_341))
	(isQ_6 (Q_239 x_78245 x_78246))))
(assert (forall ((x_78247 list_341) (x_78248 list_341) (x_78249 list_341) (x_78250 list_341))
	(=> (diseqlist_337 x_78247 x_78249) (diseqQ_4 (Q_239 x_78247 x_78248) (Q_239 x_78249 x_78250)))))
(assert (forall ((x_78247 list_341) (x_78248 list_341) (x_78249 list_341) (x_78250 list_341))
	(=> (diseqlist_337 x_78248 x_78250) (diseqQ_4 (Q_239 x_78247 x_78248) (Q_239 x_78249 x_78250)))))
(declare-datatypes ((Maybe_14 0)) (((Nothing_14) (Just_14 (projJust_28 Int)))))
(declare-fun diseqMaybe_14 (Maybe_14 Maybe_14) Bool)
(declare-fun projJust_30 (Int Maybe_14) Bool)
(declare-fun isNothing_14 (Maybe_14) Bool)
(declare-fun isJust_14 (Maybe_14) Bool)
(assert (forall ((x_78252 Int))
	(projJust_30 x_78252 (Just_14 x_78252))))
(assert (isNothing_14 Nothing_14))
(assert (forall ((x_78254 Int))
	(isJust_14 (Just_14 x_78254))))
(assert (forall ((x_78255 Int))
	(diseqMaybe_14 Nothing_14 (Just_14 x_78255))))
(assert (forall ((x_78256 Int))
	(diseqMaybe_14 (Just_14 x_78256) Nothing_14)))
(assert (forall ((x_78257 Int) (x_78258 Int))
	(=> (diseqInt x_78257 x_78258) (diseqMaybe_14 (Just_14 x_78257) (Just_14 x_78258)))))
(declare-datatypes ((Maybe_15 0)) (((Nothing_15) (Just_15 (projJust_29 Q_238)))))
(declare-fun diseqMaybe_15 (Maybe_15 Maybe_15) Bool)
(declare-fun projJust_31 (Q_238 Maybe_15) Bool)
(declare-fun isNothing_15 (Maybe_15) Bool)
(declare-fun isJust_15 (Maybe_15) Bool)
(assert (forall ((x_78260 Q_238))
	(projJust_31 x_78260 (Just_15 x_78260))))
(assert (isNothing_15 Nothing_15))
(assert (forall ((x_78262 Q_238))
	(isJust_15 (Just_15 x_78262))))
(assert (forall ((x_78263 Q_238))
	(diseqMaybe_15 Nothing_15 (Just_15 x_78263))))
(assert (forall ((x_78264 Q_238))
	(diseqMaybe_15 (Just_15 x_78264) Nothing_15)))
(assert (forall ((x_78265 Q_238) (x_78266 Q_238))
	(=> (diseqQ_4 x_78265 x_78266) (diseqMaybe_15 (Just_15 x_78265) (Just_15 x_78266)))))
(declare-datatypes ((E_41 0)) (((Empty_10) (EnqL_8 (projEnqL_16 Int) (projEnqL_17 E_41)) (EnqR_8 (projEnqR_16 E_41) (projEnqR_17 Int)) (DeqL_8 (projDeqL_8 E_41)) (DeqR_8 (projDeqR_8 E_41)) (App_4 (projApp_16 E_41) (projApp_17 E_41)))))
(declare-fun diseqE_4 (E_41 E_41) Bool)
(declare-fun projEnqL_18 (Int E_41) Bool)
(declare-fun projEnqL_19 (E_41 E_41) Bool)
(declare-fun projEnqR_18 (E_41 E_41) Bool)
(declare-fun projEnqR_19 (Int E_41) Bool)
(declare-fun projDeqL_9 (E_41 E_41) Bool)
(declare-fun projDeqR_9 (E_41 E_41) Bool)
(declare-fun projApp_18 (E_41 E_41) Bool)
(declare-fun projApp_19 (E_41 E_41) Bool)
(declare-fun isEmpty_4 (E_41) Bool)
(declare-fun isEnqL_4 (E_41) Bool)
(declare-fun isEnqR_4 (E_41) Bool)
(declare-fun isDeqL_4 (E_41) Bool)
(declare-fun isDeqR_4 (E_41) Bool)
(declare-fun isApp_4 (E_41) Bool)
(assert (forall ((x_78268 Int) (x_78269 E_41))
	(projEnqL_18 x_78268 (EnqL_8 x_78268 x_78269))))
(assert (forall ((x_78268 Int) (x_78269 E_41))
	(projEnqL_19 x_78269 (EnqL_8 x_78268 x_78269))))
(assert (forall ((x_78271 E_41) (x_78272 Int))
	(projEnqR_18 x_78271 (EnqR_8 x_78271 x_78272))))
(assert (forall ((x_78271 E_41) (x_78272 Int))
	(projEnqR_19 x_78272 (EnqR_8 x_78271 x_78272))))
(assert (forall ((x_78274 E_41))
	(projDeqL_9 x_78274 (DeqL_8 x_78274))))
(assert (forall ((x_78276 E_41))
	(projDeqR_9 x_78276 (DeqR_8 x_78276))))
(assert (forall ((x_78278 E_41) (x_78279 E_41))
	(projApp_18 x_78278 (App_4 x_78278 x_78279))))
(assert (forall ((x_78278 E_41) (x_78279 E_41))
	(projApp_19 x_78279 (App_4 x_78278 x_78279))))
(assert (isEmpty_4 Empty_10))
(assert (forall ((x_78281 Int) (x_78282 E_41))
	(isEnqL_4 (EnqL_8 x_78281 x_78282))))
(assert (forall ((x_78283 E_41) (x_78284 Int))
	(isEnqR_4 (EnqR_8 x_78283 x_78284))))
(assert (forall ((x_78285 E_41))
	(isDeqL_4 (DeqL_8 x_78285))))
(assert (forall ((x_78286 E_41))
	(isDeqR_4 (DeqR_8 x_78286))))
(assert (forall ((x_78287 E_41) (x_78288 E_41))
	(isApp_4 (App_4 x_78287 x_78288))))
(assert (forall ((x_78289 Int) (x_78290 E_41))
	(diseqE_4 Empty_10 (EnqL_8 x_78289 x_78290))))
(assert (forall ((x_78291 E_41) (x_78292 Int))
	(diseqE_4 Empty_10 (EnqR_8 x_78291 x_78292))))
(assert (forall ((x_78293 E_41))
	(diseqE_4 Empty_10 (DeqL_8 x_78293))))
(assert (forall ((x_78294 E_41))
	(diseqE_4 Empty_10 (DeqR_8 x_78294))))
(assert (forall ((x_78295 E_41) (x_78296 E_41))
	(diseqE_4 Empty_10 (App_4 x_78295 x_78296))))
(assert (forall ((x_78297 Int) (x_78298 E_41))
	(diseqE_4 (EnqL_8 x_78297 x_78298) Empty_10)))
(assert (forall ((x_78299 E_41) (x_78300 Int))
	(diseqE_4 (EnqR_8 x_78299 x_78300) Empty_10)))
(assert (forall ((x_78301 E_41))
	(diseqE_4 (DeqL_8 x_78301) Empty_10)))
(assert (forall ((x_78302 E_41))
	(diseqE_4 (DeqR_8 x_78302) Empty_10)))
(assert (forall ((x_78303 E_41) (x_78304 E_41))
	(diseqE_4 (App_4 x_78303 x_78304) Empty_10)))
(assert (forall ((x_78305 Int) (x_78306 E_41) (x_78307 E_41) (x_78308 Int))
	(diseqE_4 (EnqL_8 x_78305 x_78306) (EnqR_8 x_78307 x_78308))))
(assert (forall ((x_78309 Int) (x_78310 E_41) (x_78311 E_41))
	(diseqE_4 (EnqL_8 x_78309 x_78310) (DeqL_8 x_78311))))
(assert (forall ((x_78312 Int) (x_78313 E_41) (x_78314 E_41))
	(diseqE_4 (EnqL_8 x_78312 x_78313) (DeqR_8 x_78314))))
(assert (forall ((x_78315 Int) (x_78316 E_41) (x_78317 E_41) (x_78318 E_41))
	(diseqE_4 (EnqL_8 x_78315 x_78316) (App_4 x_78317 x_78318))))
(assert (forall ((x_78319 E_41) (x_78320 Int) (x_78321 Int) (x_78322 E_41))
	(diseqE_4 (EnqR_8 x_78319 x_78320) (EnqL_8 x_78321 x_78322))))
(assert (forall ((x_78323 E_41) (x_78324 Int) (x_78325 E_41))
	(diseqE_4 (DeqL_8 x_78323) (EnqL_8 x_78324 x_78325))))
(assert (forall ((x_78326 E_41) (x_78327 Int) (x_78328 E_41))
	(diseqE_4 (DeqR_8 x_78326) (EnqL_8 x_78327 x_78328))))
(assert (forall ((x_78329 E_41) (x_78330 E_41) (x_78331 Int) (x_78332 E_41))
	(diseqE_4 (App_4 x_78329 x_78330) (EnqL_8 x_78331 x_78332))))
(assert (forall ((x_78333 E_41) (x_78334 Int) (x_78335 E_41))
	(diseqE_4 (EnqR_8 x_78333 x_78334) (DeqL_8 x_78335))))
(assert (forall ((x_78336 E_41) (x_78337 Int) (x_78338 E_41))
	(diseqE_4 (EnqR_8 x_78336 x_78337) (DeqR_8 x_78338))))
(assert (forall ((x_78339 E_41) (x_78340 Int) (x_78341 E_41) (x_78342 E_41))
	(diseqE_4 (EnqR_8 x_78339 x_78340) (App_4 x_78341 x_78342))))
(assert (forall ((x_78343 E_41) (x_78344 E_41) (x_78345 Int))
	(diseqE_4 (DeqL_8 x_78343) (EnqR_8 x_78344 x_78345))))
(assert (forall ((x_78346 E_41) (x_78347 E_41) (x_78348 Int))
	(diseqE_4 (DeqR_8 x_78346) (EnqR_8 x_78347 x_78348))))
(assert (forall ((x_78349 E_41) (x_78350 E_41) (x_78351 E_41) (x_78352 Int))
	(diseqE_4 (App_4 x_78349 x_78350) (EnqR_8 x_78351 x_78352))))
(assert (forall ((x_78353 E_41) (x_78354 E_41))
	(diseqE_4 (DeqL_8 x_78353) (DeqR_8 x_78354))))
(assert (forall ((x_78355 E_41) (x_78356 E_41) (x_78357 E_41))
	(diseqE_4 (DeqL_8 x_78355) (App_4 x_78356 x_78357))))
(assert (forall ((x_78358 E_41) (x_78359 E_41))
	(diseqE_4 (DeqR_8 x_78358) (DeqL_8 x_78359))))
(assert (forall ((x_78360 E_41) (x_78361 E_41) (x_78362 E_41))
	(diseqE_4 (App_4 x_78360 x_78361) (DeqL_8 x_78362))))
(assert (forall ((x_78363 E_41) (x_78364 E_41) (x_78365 E_41))
	(diseqE_4 (DeqR_8 x_78363) (App_4 x_78364 x_78365))))
(assert (forall ((x_78366 E_41) (x_78367 E_41) (x_78368 E_41))
	(diseqE_4 (App_4 x_78366 x_78367) (DeqR_8 x_78368))))
(assert (forall ((x_78369 Int) (x_78370 E_41) (x_78371 Int) (x_78372 E_41))
	(=> (diseqInt x_78369 x_78371) (diseqE_4 (EnqL_8 x_78369 x_78370) (EnqL_8 x_78371 x_78372)))))
(assert (forall ((x_78369 Int) (x_78370 E_41) (x_78371 Int) (x_78372 E_41))
	(=> (diseqE_4 x_78370 x_78372) (diseqE_4 (EnqL_8 x_78369 x_78370) (EnqL_8 x_78371 x_78372)))))
(assert (forall ((x_78373 E_41) (x_78374 Int) (x_78375 E_41) (x_78376 Int))
	(=> (diseqE_4 x_78373 x_78375) (diseqE_4 (EnqR_8 x_78373 x_78374) (EnqR_8 x_78375 x_78376)))))
(assert (forall ((x_78373 E_41) (x_78374 Int) (x_78375 E_41) (x_78376 Int))
	(=> (diseqInt x_78374 x_78376) (diseqE_4 (EnqR_8 x_78373 x_78374) (EnqR_8 x_78375 x_78376)))))
(assert (forall ((x_78377 E_41) (x_78378 E_41))
	(=> (diseqE_4 x_78377 x_78378) (diseqE_4 (DeqL_8 x_78377) (DeqL_8 x_78378)))))
(assert (forall ((x_78379 E_41) (x_78380 E_41))
	(=> (diseqE_4 x_78379 x_78380) (diseqE_4 (DeqR_8 x_78379) (DeqR_8 x_78380)))))
(assert (forall ((x_78381 E_41) (x_78382 E_41) (x_78383 E_41) (x_78384 E_41))
	(=> (diseqE_4 x_78381 x_78383) (diseqE_4 (App_4 x_78381 x_78382) (App_4 x_78383 x_78384)))))
(assert (forall ((x_78381 E_41) (x_78382 E_41) (x_78383 E_41) (x_78384 E_41))
	(=> (diseqE_4 x_78382 x_78384) (diseqE_4 (App_4 x_78381 x_78382) (App_4 x_78383 x_78384)))))
(declare-fun take_55 (list_341 Int list_341) Bool)
(assert (forall ((x_78023 Int) (y_2809 list_341))
	(=> (le_407 x_78023 Z_2490) (take_55 nil_384 x_78023 y_2809))))
(assert (forall ((x_78198 Int) (x_78073 list_341) (z_2476 Int) (xs_819 list_341) (x_78023 Int))
	(=> (and (gt_410 x_78023 Z_2490) (take_55 x_78073 x_78198 xs_819) (minus_428 x_78198 x_78023 (S_573 Z_2490))) (take_55 (cons_337 z_2476 x_78073) x_78023 (cons_337 z_2476 xs_819)))))
(assert (forall ((x_78023 Int) (y_2809 list_341))
	(=> (le_407 x_78023 Z_2490) (take_55 nil_384 x_78023 y_2809))))
(assert (forall ((x_78023 Int))
	(=> (gt_410 x_78023 Z_2490) (take_55 nil_384 x_78023 nil_384))))
(declare-fun tail_679 (list_341 list_341) Bool)
(assert (forall ((x_78076 list_341) (y_2810 Int))
	(tail_679 x_78076 (cons_337 y_2810 x_78076))))
(assert (tail_679 nil_384 nil_384))
(declare-fun length_65 (Int list_341) Bool)
(assert (forall ((x_78078 Int) (x_78079 Int) (y_2811 Int) (l_54 list_341))
	(=> (and (length_65 x_78079 l_54) (add_435 x_78078 (S_573 Z_2490) x_78079)) (length_65 x_78078 (cons_337 y_2811 l_54)))))
(assert (length_65 Z_2490 nil_384))
(declare-fun last_13 (Maybe_14 list_341) Bool)
(assert (forall ((x_78081 Maybe_14) (x_78027 Int) (x_78028 list_341) (y_2812 Int))
	(=> (last_13 x_78081 (cons_337 x_78027 x_78028)) (last_13 x_78081 (cons_337 y_2812 (cons_337 x_78027 x_78028))))))
(assert (forall ((y_2812 Int))
	(last_13 (Just_14 y_2812) (cons_337 y_2812 nil_384))))
(assert (last_13 Nothing_14 nil_384))
(declare-fun init_5 (list_341 list_341) Bool)
(assert (forall ((x_78086 list_341) (x_78030 Int) (x_78031 list_341) (y_2813 Int))
	(=> (init_5 x_78086 (cons_337 x_78030 x_78031)) (init_5 (cons_337 y_2813 x_78086) (cons_337 y_2813 (cons_337 x_78030 x_78031))))))
(assert (forall ((y_2813 Int))
	(init_5 nil_384 (cons_337 y_2813 nil_384))))
(assert (init_5 nil_384 nil_384))
(declare-fun fstR_1 (Maybe_14 Q_238) Bool)
(assert (forall ((x_78036 Int) (x_78037 list_341) (x_78034 Int) (y_2815 Int) (x_78033 list_341))
	(fstR_1 (Just_14 y_2815) (Q_239 (cons_337 x_78034 (cons_337 x_78036 x_78037)) (cons_337 y_2815 x_78033)))))
(assert (forall ((x_78038 Int) (x_78034 Int) (x_78033 list_341))
	(fstR_1 (Just_14 x_78038) (Q_239 (cons_337 x_78034 nil_384) (cons_337 x_78038 x_78033)))))
(assert (forall ((y_2815 Int) (x_78033 list_341))
	(fstR_1 (Just_14 y_2815) (Q_239 nil_384 (cons_337 y_2815 x_78033)))))
(assert (forall ((x_78036 Int) (x_78037 list_341) (x_78034 Int))
	(fstR_1 Nothing_14 (Q_239 (cons_337 x_78034 (cons_337 x_78036 x_78037)) nil_384))))
(assert (forall ((x_78034 Int))
	(fstR_1 (Just_14 x_78034) (Q_239 (cons_337 x_78034 nil_384) nil_384))))
(assert (fstR_1 Nothing_14 (Q_239 nil_384 nil_384)))
(declare-fun fromMaybe_8 (Int Int Maybe_14) Bool)
(assert (forall ((x_78097 Int) (x_78040 Int))
	(fromMaybe_8 x_78097 x_78040 (Just_14 x_78097))))
(assert (forall ((x_78040 Int))
	(fromMaybe_8 x_78040 x_78040 Nothing_14)))
(declare-fun fromMaybe_9 (Q_238 Q_238 Maybe_15) Bool)
(assert (forall ((x_78099 Q_238) (x_78041 Q_238))
	(fromMaybe_9 x_78099 x_78041 (Just_15 x_78099))))
(assert (forall ((x_78041 Q_238))
	(fromMaybe_9 x_78041 x_78041 Nothing_15)))
(declare-fun empty_11 (Q_238) Bool)
(assert (empty_11 (Q_239 nil_384 nil_384)))
(declare-fun drop_63 (list_341 Int list_341) Bool)
(assert (forall ((x_78102 list_341) (x_78042 Int))
	(=> (le_407 x_78042 Z_2490) (drop_63 x_78102 x_78042 x_78102))))
(assert (forall ((x_78200 Int) (x_78103 list_341) (z_2482 Int) (xs_821 list_341) (x_78042 Int))
	(=> (and (gt_410 x_78042 Z_2490) (drop_63 x_78103 x_78200 xs_821) (minus_428 x_78200 x_78042 (S_573 Z_2490))) (drop_63 x_78103 x_78042 (cons_337 z_2482 xs_821)))))
(assert (forall ((x_78105 list_341) (x_78042 Int))
	(=> (le_407 x_78042 Z_2490) (drop_63 x_78105 x_78042 x_78105))))
(assert (forall ((x_78042 Int))
	(=> (gt_410 x_78042 Z_2490) (drop_63 nil_384 x_78042 nil_384))))
(declare-fun halve_4 (pair_148 list_341) Bool)
(assert (forall ((x_78109 list_341) (x_78110 list_341) (x_78107 Int) (k_21 Int) (x_78043 list_341))
	(=> (and (take_55 x_78109 k_21 x_78043) (drop_63 x_78110 k_21 x_78043) (length_65 x_78107 x_78043) (div_407 k_21 x_78107 (S_573 (S_573 Z_2490)))) (halve_4 (pair_149 x_78109 x_78110) x_78043))))
(declare-fun x_78044 (list_341 list_341 list_341) Bool)
(assert (forall ((x_78112 list_341) (z_2483 Int) (xs_822 list_341) (y_2819 list_341))
	(=> (x_78044 x_78112 xs_822 y_2819) (x_78044 (cons_337 z_2483 x_78112) (cons_337 z_2483 xs_822) y_2819))))
(assert (forall ((x_78113 list_341))
	(x_78044 x_78113 nil_384 x_78113)))
(declare-fun list_342 (list_341 E_41) Bool)
(assert (forall ((x_78114 list_341) (x_78115 list_341) (x_78116 list_341) (a_88 E_41) (b_84 E_41))
	(=> (and (list_342 x_78115 a_88) (list_342 x_78116 b_84) (x_78044 x_78114 x_78115 x_78116)) (list_342 x_78114 (App_4 a_88 b_84)))))
(assert (forall ((x_78118 list_341) (x_78119 list_341) (e_42 E_41))
	(=> (and (list_342 x_78119 e_42) (init_5 x_78118 x_78119)) (list_342 x_78118 (DeqR_8 e_42)))))
(assert (forall ((x_78121 list_341) (x_78122 list_341) (e_43 E_41))
	(=> (and (list_342 x_78122 e_43) (tail_679 x_78121 x_78122)) (list_342 x_78121 (DeqL_8 e_43)))))
(assert (forall ((x_78124 list_341) (x_78125 list_341) (e_44 E_41) (z_2484 Int))
	(=> (and (list_342 x_78125 e_44) (x_78044 x_78124 x_78125 (cons_337 z_2484 nil_384))) (list_342 x_78124 (EnqR_8 e_44 z_2484)))))
(assert (forall ((x_78128 list_341) (y_2820 Int) (e_45 E_41))
	(=> (list_342 x_78128 e_45) (list_342 (cons_337 y_2820 x_78128) (EnqL_8 y_2820 e_45)))))
(assert (list_342 nil_384 Empty_10))
(declare-fun reverse_17 (list_341 list_341) Bool)
(assert (forall ((x_78130 list_341) (x_78131 list_341) (y_2821 Int) (xs_823 list_341))
	(=> (and (reverse_17 x_78131 xs_823) (x_78044 x_78130 x_78131 (cons_337 y_2821 nil_384))) (reverse_17 x_78130 (cons_337 y_2821 xs_823)))))
(assert (reverse_17 nil_384 nil_384))
(declare-fun enqL_9 (Q_238 Int Q_238) Bool)
(assert (forall ((z_2485 Int) (x_78049 list_341) (xs_824 list_341) (x_78048 Int))
	(enqL_9 (Q_239 (cons_337 x_78048 xs_824) (cons_337 z_2485 x_78049)) x_78048 (Q_239 xs_824 (cons_337 z_2485 x_78049)))))
(assert (forall ((x_78137 list_341) (as_12 list_341) (bs_14 list_341) (xs_824 list_341) (x_78048 Int))
	(=> (and (reverse_17 x_78137 bs_14) (halve_4 (pair_149 as_12 bs_14) (cons_337 x_78048 xs_824))) (enqL_9 (Q_239 as_12 x_78137) x_78048 (Q_239 xs_824 nil_384)))))
(declare-fun mkQ_4 (Q_238 list_341 list_341) Bool)
(assert (forall ((x_78052 Int) (x_78053 list_341) (z_2486 Int) (x_78051 list_341))
	(mkQ_4 (Q_239 (cons_337 z_2486 x_78051) (cons_337 x_78052 x_78053)) (cons_337 z_2486 x_78051) (cons_337 x_78052 x_78053))))
(assert (forall ((x_78141 list_341) (as_13 list_341) (bs_15 list_341) (z_2486 Int) (x_78051 list_341))
	(=> (and (reverse_17 x_78141 bs_15) (halve_4 (pair_149 as_13 bs_15) (cons_337 z_2486 x_78051))) (mkQ_4 (Q_239 as_13 x_78141) (cons_337 z_2486 x_78051) nil_384))))
(assert (forall ((x_78144 list_341) (as_14 list_341) (bs_16 list_341) (y_2823 list_341))
	(=> (and (reverse_17 x_78144 bs_16) (halve_4 (pair_149 as_14 bs_16) y_2823)) (mkQ_4 (Q_239 x_78144 as_14) nil_384 y_2823))))
(declare-fun x_78054 (Q_238 Q_238 Q_238) Bool)
(assert (forall ((x_78145 Q_238) (x_78146 list_341) (x_78147 list_341) (x_78148 list_341) (x_78149 list_341) (vs_8 list_341) (ws_4 list_341) (xs_825 list_341) (ys_229 list_341))
	(=> (and (reverse_17 x_78146 ys_229) (x_78044 x_78147 xs_825 x_78146) (reverse_17 x_78148 vs_8) (x_78044 x_78149 x_78148 ws_4) (mkQ_4 x_78145 x_78147 x_78149)) (x_78054 x_78145 (Q_239 xs_825 ys_229) (Q_239 vs_8 ws_4)))))
(declare-fun deqL_9 (Maybe_15 Q_238) Bool)
(assert (forall ((x_78152 Q_238) (x_78057 Int) (xs_826 list_341) (z_2487 list_341))
	(=> (mkQ_4 x_78152 xs_826 z_2487) (deqL_9 (Just_15 x_78152) (Q_239 (cons_337 x_78057 xs_826) z_2487)))))
(assert (forall ((x_78060 Int) (x_78061 list_341) (x_78058 Int))
	(deqL_9 Nothing_15 (Q_239 nil_384 (cons_337 x_78058 (cons_337 x_78060 x_78061))))))
(assert (forall ((x_78155 Q_238) (x_78058 Int))
	(=> (empty_11 x_78155) (deqL_9 (Just_15 x_78155) (Q_239 nil_384 (cons_337 x_78058 nil_384))))))
(assert (deqL_9 Nothing_15 (Q_239 nil_384 nil_384)))
(declare-fun deqR_9 (Maybe_15 Q_238) Bool)
(assert (forall ((x_78157 Q_238) (x_78065 Int) (x_78066 list_341) (x_78063 Int) (y_2827 Int) (ys_230 list_341))
	(=> (mkQ_4 x_78157 (cons_337 x_78063 (cons_337 x_78065 x_78066)) ys_230) (deqR_9 (Just_15 x_78157) (Q_239 (cons_337 x_78063 (cons_337 x_78065 x_78066)) (cons_337 y_2827 ys_230))))))
(assert (forall ((x_78159 Q_238) (x_78067 Int) (x_78068 list_341) (x_78063 Int))
	(=> (mkQ_4 x_78159 (cons_337 x_78063 nil_384) x_78068) (deqR_9 (Just_15 x_78159) (Q_239 (cons_337 x_78063 nil_384) (cons_337 x_78067 x_78068))))))
(assert (forall ((x_78164 Q_238) (y_2827 Int) (ys_230 list_341))
	(=> (mkQ_4 x_78164 nil_384 ys_230) (deqR_9 (Just_15 x_78164) (Q_239 nil_384 (cons_337 y_2827 ys_230))))))
(assert (forall ((x_78065 Int) (x_78066 list_341) (x_78063 Int))
	(deqR_9 Nothing_15 (Q_239 (cons_337 x_78063 (cons_337 x_78065 x_78066)) nil_384))))
(assert (forall ((x_78169 Q_238) (x_78063 Int))
	(=> (empty_11 x_78169) (deqR_9 (Just_15 x_78169) (Q_239 (cons_337 x_78063 nil_384) nil_384)))))
(assert (deqR_9 Nothing_15 (Q_239 nil_384 nil_384)))
(declare-fun enqR_9 (Q_238 Q_238 Int) Bool)
(assert (forall ((x_78171 Q_238) (xs_827 list_341) (ys_231 list_341) (y_2828 Int))
	(=> (mkQ_4 x_78171 xs_827 (cons_337 y_2828 ys_231)) (enqR_9 x_78171 (Q_239 xs_827 ys_231) y_2828))))
(declare-fun queue_4 (Q_238 E_41) Bool)
(assert (forall ((x_78173 Q_238) (x_78174 Q_238) (x_78175 Q_238) (a_89 E_41) (b_85 E_41))
	(=> (and (queue_4 x_78174 a_89) (queue_4 x_78175 b_85) (x_78054 x_78173 x_78174 x_78175)) (queue_4 x_78173 (App_4 a_89 b_85)))))
(assert (forall ((x_78178 Q_238) (x_78179 Maybe_15) (r_547 Q_238) (e_46 E_41))
	(=> (and (deqR_9 x_78179 r_547) (fromMaybe_9 x_78178 r_547 x_78179) (queue_4 r_547 e_46)) (queue_4 x_78178 (DeqR_8 e_46)))))
(assert (forall ((x_78182 Q_238) (x_78183 Maybe_15) (q_240 Q_238) (e_47 E_41))
	(=> (and (deqL_9 x_78183 q_240) (fromMaybe_9 x_78182 q_240 x_78183) (queue_4 q_240 e_47)) (queue_4 x_78182 (DeqL_8 e_47)))))
(assert (forall ((x_78185 Q_238) (x_78186 Q_238) (e_48 E_41) (z_2489 Int))
	(=> (and (queue_4 x_78186 e_48) (enqR_9 x_78185 x_78186 z_2489)) (queue_4 x_78185 (EnqR_8 e_48 z_2489)))))
(assert (forall ((x_78188 Q_238) (x_78189 Q_238) (y_2829 Int) (e_49 E_41))
	(=> (and (queue_4 x_78189 e_49) (enqL_9 x_78188 y_2829 x_78189)) (queue_4 x_78188 (EnqL_8 y_2829 e_49)))))
(assert (forall ((x_78191 Q_238))
	(=> (empty_11 x_78191) (queue_4 x_78191 Empty_10))))
(assert (forall ((x_78193 Q_238) (x_78194 Maybe_14) (x_78195 list_341) (x_78196 Maybe_14) (e_50 E_41))
	(=> (and true (diseqMaybe_14 x_78194 x_78196) (queue_4 x_78193 e_50) (fstR_1 x_78194 x_78193) (list_342 x_78195 e_50) (last_13 x_78196 x_78195)) false)))
(check-sat)