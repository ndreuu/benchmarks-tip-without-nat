
(set-logic HORN)
(define-fun Z_19 () Int 0)
(define-fun S_5 ((x Int)) Int (+ x 1))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun projS_5 (Int Int) Bool)
(declare-fun isZ_5 (Int) Bool)
(declare-fun isS_5 (Int) Bool)
(assert (forall ((x_248 Int))
	(projS_5 x_248 (S_5 x_248))))
(assert (isZ_5 Z_19))
(assert (forall ((x_250 Int))
	(isS_5 (S_5 x_250))))
(assert (forall ((x_251 Int))
	(diseqInt Z_19 (S_5 x_251))))
(assert (forall ((x_252 Int))
	(diseqInt (S_5 x_252) Z_19)))
(assert (forall ((x_253 Int) (x_254 Int))
	(=> (diseqInt x_253 x_254) (diseqInt (S_5 x_253) (S_5 x_254)))))
(declare-datatypes ((list_5 0)) (((nil_5) (cons_5 (head_10 Int) (tail_10 list_5)))))
(declare-fun diseqlist_5 (list_5 list_5) Bool)
(declare-fun head_11 (Int list_5) Bool)
(declare-fun tail_11 (list_5 list_5) Bool)
(declare-fun isnil_5 (list_5) Bool)
(declare-fun iscons_5 (list_5) Bool)
(assert (forall ((x_256 Int) (x_257 list_5))
	(head_11 x_256 (cons_5 x_256 x_257))))
(assert (forall ((x_256 Int) (x_257 list_5))
	(tail_11 x_257 (cons_5 x_256 x_257))))
(assert (isnil_5 nil_5))
(assert (forall ((x_259 Int) (x_260 list_5))
	(iscons_5 (cons_5 x_259 x_260))))
(assert (forall ((x_261 Int) (x_262 list_5))
	(diseqlist_5 nil_5 (cons_5 x_261 x_262))))
(assert (forall ((x_263 Int) (x_264 list_5))
	(diseqlist_5 (cons_5 x_263 x_264) nil_5)))
(assert (forall ((x_265 Int) (x_266 list_5) (x_267 Int) (x_268 list_5))
	(=> (diseqInt x_265 x_267) (diseqlist_5 (cons_5 x_265 x_266) (cons_5 x_267 x_268)))))
(assert (forall ((x_265 Int) (x_266 list_5) (x_267 Int) (x_268 list_5))
	(=> (diseqlist_5 x_266 x_268) (diseqlist_5 (cons_5 x_265 x_266) (cons_5 x_267 x_268)))))
(declare-fun last_0 (Int list_5) Bool)
(assert (forall ((x_233 Int) (x_228 Int) (x_229 list_5) (y_18 Int))
	(=> (last_0 x_233 (cons_5 x_228 x_229)) (last_0 x_233 (cons_5 y_18 (cons_5 x_228 x_229))))))
(assert (forall ((x_235 Int))
	(last_0 x_235 (cons_5 x_235 nil_5))))
(assert (last_0 Z_19 nil_5))
(declare-fun x_230 (list_5 list_5 list_5) Bool)
(assert (forall ((x_238 list_5) (z_21 Int) (xs_8 list_5) (y_19 list_5))
	(=> (x_230 x_238 xs_8 y_19) (x_230 (cons_5 z_21 x_238) (cons_5 z_21 xs_8) y_19))))
(assert (forall ((x_239 list_5))
	(x_230 x_239 nil_5 x_239)))
(assert (forall ((x_240 list_5) (x_241 Int) (x_242 Int) (x_232 Int) (y_20 list_5) (xs_9 list_5))
	(=> (and true (diseqInt x_241 x_242) true (x_230 x_240 xs_9 (cons_5 x_232 y_20)) (last_0 x_241 x_240) (last_0 x_242 (cons_5 x_232 y_20))) false)))
(assert (forall ((x_243 list_5) (x_244 Int) (x_245 Int) (xs_9 list_5))
	(=> (and true (diseqInt x_244 x_245) false (x_230 x_243 xs_9 nil_5) (last_0 x_244 x_243) (last_0 x_245 nil_5)) false)))
(check-sat)
