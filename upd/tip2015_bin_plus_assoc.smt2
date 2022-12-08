
(set-logic HORN)
(declare-datatypes ((Bin_13 0)) (((One_15) (ZeroAnd_13 (projZeroAnd_26 Bin_13)) (OneAnd_13 (projOneAnd_26 Bin_13)))))
(declare-fun diseqBin_13 (Bin_13 Bin_13) Bool)
(declare-fun projZeroAnd_27 (Bin_13 Bin_13) Bool)
(declare-fun projOneAnd_27 (Bin_13 Bin_13) Bool)
(declare-fun isOne_13 (Bin_13) Bool)
(declare-fun isZeroAnd_13 (Bin_13) Bool)
(declare-fun isOneAnd_13 (Bin_13) Bool)
(assert (forall ((x_51243 Bin_13))
	(projZeroAnd_27 x_51243 (ZeroAnd_13 x_51243))))
(assert (forall ((x_51245 Bin_13))
	(projOneAnd_27 x_51245 (OneAnd_13 x_51245))))
(assert (isOne_13 One_15))
(assert (forall ((x_51247 Bin_13))
	(isZeroAnd_13 (ZeroAnd_13 x_51247))))
(assert (forall ((x_51248 Bin_13))
	(isOneAnd_13 (OneAnd_13 x_51248))))
(assert (forall ((x_51249 Bin_13))
	(diseqBin_13 One_15 (ZeroAnd_13 x_51249))))
(assert (forall ((x_51250 Bin_13))
	(diseqBin_13 One_15 (OneAnd_13 x_51250))))
(assert (forall ((x_51251 Bin_13))
	(diseqBin_13 (ZeroAnd_13 x_51251) One_15)))
(assert (forall ((x_51252 Bin_13))
	(diseqBin_13 (OneAnd_13 x_51252) One_15)))
(assert (forall ((x_51253 Bin_13) (x_51254 Bin_13))
	(diseqBin_13 (ZeroAnd_13 x_51253) (OneAnd_13 x_51254))))
(assert (forall ((x_51255 Bin_13) (x_51256 Bin_13))
	(diseqBin_13 (OneAnd_13 x_51255) (ZeroAnd_13 x_51256))))
(assert (forall ((x_51257 Bin_13) (x_51258 Bin_13))
	(=> (diseqBin_13 x_51257 x_51258) (diseqBin_13 (ZeroAnd_13 x_51257) (ZeroAnd_13 x_51258)))))
(assert (forall ((x_51259 Bin_13) (x_51260 Bin_13))
	(=> (diseqBin_13 x_51259 x_51260) (diseqBin_13 (OneAnd_13 x_51259) (OneAnd_13 x_51260)))))
(declare-fun s_385 (Bin_13 Bin_13) Bool)
(assert (forall ((x_51219 Bin_13) (ys_175 Bin_13))
	(=> (s_385 x_51219 ys_175) (s_385 (ZeroAnd_13 x_51219) (OneAnd_13 ys_175)))))
(assert (forall ((xs_546 Bin_13))
	(s_385 (OneAnd_13 xs_546) (ZeroAnd_13 xs_546))))
(assert (s_385 (ZeroAnd_13 One_15) One_15))
(declare-fun plus_119 (Bin_13 Bin_13 Bin_13) Bool)
(assert (forall ((x_51223 Bin_13) (x_51224 Bin_13) (ys_176 Bin_13) (x_51216 Bin_13))
	(=> (and (plus_119 x_51223 x_51216 ys_176) (s_385 x_51224 x_51223)) (plus_119 (ZeroAnd_13 x_51224) (OneAnd_13 x_51216) (OneAnd_13 ys_176)))))
(assert (forall ((x_51226 Bin_13) (zs_59 Bin_13) (x_51216 Bin_13))
	(=> (plus_119 x_51226 x_51216 zs_59) (plus_119 (OneAnd_13 x_51226) (OneAnd_13 x_51216) (ZeroAnd_13 zs_59)))))
(assert (forall ((x_51227 Bin_13) (x_51216 Bin_13))
	(=> (s_385 x_51227 (OneAnd_13 x_51216)) (plus_119 x_51227 (OneAnd_13 x_51216) One_15))))
(assert (forall ((x_51230 Bin_13) (xs_547 Bin_13) (z_1702 Bin_13))
	(=> (plus_119 x_51230 z_1702 xs_547) (plus_119 (OneAnd_13 x_51230) (ZeroAnd_13 z_1702) (OneAnd_13 xs_547)))))
(assert (forall ((x_51232 Bin_13) (ys_177 Bin_13) (z_1702 Bin_13))
	(=> (plus_119 x_51232 z_1702 ys_177) (plus_119 (ZeroAnd_13 x_51232) (ZeroAnd_13 z_1702) (ZeroAnd_13 ys_177)))))
(assert (forall ((x_51233 Bin_13) (z_1702 Bin_13))
	(=> (s_385 x_51233 (ZeroAnd_13 z_1702)) (plus_119 x_51233 (ZeroAnd_13 z_1702) One_15))))
(assert (forall ((x_51235 Bin_13) (y_1907 Bin_13))
	(=> (s_385 x_51235 y_1907) (plus_119 x_51235 One_15 y_1907))))
(assert (forall ((x_51237 Bin_13) (x_51238 Bin_13) (x_51239 Bin_13) (x_51240 Bin_13) (x_51217 Bin_13) (y_1908 Bin_13) (z_1703 Bin_13))
	(=> (and true (diseqBin_13 x_51238 x_51240) (plus_119 x_51237 y_1908 z_1703) (plus_119 x_51238 x_51217 x_51237) (plus_119 x_51239 x_51217 y_1908) (plus_119 x_51240 x_51239 z_1703)) false)))
(check-sat)
