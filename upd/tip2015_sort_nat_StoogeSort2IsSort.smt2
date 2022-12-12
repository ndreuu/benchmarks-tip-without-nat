
(set-logic HORN)
(define-fun zero_56 () Int 0)
(define-fun succ_55 ((x Int)) Int (+ x 1))
(declare-datatypes ((Bool_171 0)) (((false_171) (true_171))))
(declare-fun diseqBool_73 (Bool_171 Bool_171) Bool)
(declare-fun isfalse_73 (Bool_171) Bool)
(declare-fun istrue_73 (Bool_171) Bool)
(assert (isfalse_73 false_171))
(assert (istrue_73 true_171))
(assert (diseqBool_73 false_171 true_171))
(assert (diseqBool_73 true_171 false_171))
(declare-fun and_171 (Bool_171 Bool_171 Bool_171) Bool)
(declare-fun or_173 (Bool_171 Bool_171 Bool_171) Bool)
(declare-fun hence_171 (Bool_171 Bool_171 Bool_171) Bool)
(declare-fun not_172 (Bool_171 Bool_171) Bool)
(assert (and_171 false_171 false_171 false_171))
(assert (and_171 false_171 true_171 false_171))
(assert (and_171 false_171 false_171 true_171))
(assert (and_171 true_171 true_171 true_171))
(assert (or_173 false_171 false_171 false_171))
(assert (or_173 true_171 true_171 false_171))
(assert (or_173 true_171 false_171 true_171))
(assert (or_173 true_171 true_171 true_171))
(assert (hence_171 true_171 false_171 false_171))
(assert (hence_171 false_171 true_171 false_171))
(assert (hence_171 true_171 false_171 true_171))
(assert (hence_171 true_171 true_171 true_171))
(assert (not_172 true_171 false_171))
(assert (not_172 false_171 true_171))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_155 (Int Int) Bool)
(declare-fun iszero_55 (Int) Bool)
(declare-fun issucc_55 (Int) Bool)
(assert (forall ((x_26205 Int))
	(p_155 x_26205 (succ_55 x_26205))))
(assert (iszero_55 zero_56))
(assert (forall ((x_26207 Int))
	(issucc_55 (succ_55 x_26207))))
(assert (forall ((x_26208 Int))
	(diseqInt zero_56 (succ_55 x_26208))))
(assert (forall ((x_26209 Int))
	(diseqInt (succ_55 x_26209) zero_56)))
(assert (forall ((x_26210 Int) (x_26211 Int))
	(=> (diseqInt x_26210 x_26211) (diseqInt (succ_55 x_26210) (succ_55 x_26211)))))
(declare-datatypes ((list_121 0)) (((nil_134) (cons_121 (head_242 Int) (tail_242 list_121)))))
(declare-fun diseqlist_121 (list_121 list_121) Bool)
(declare-fun head_243 (Int list_121) Bool)
(declare-fun tail_243 (list_121 list_121) Bool)
(declare-fun isnil_134 (list_121) Bool)
(declare-fun iscons_121 (list_121) Bool)
(assert (forall ((x_26213 Int) (x_26214 list_121))
	(head_243 x_26213 (cons_121 x_26213 x_26214))))
(assert (forall ((x_26213 Int) (x_26214 list_121))
	(tail_243 x_26214 (cons_121 x_26213 x_26214))))
(assert (isnil_134 nil_134))
(assert (forall ((x_26216 Int) (x_26217 list_121))
	(iscons_121 (cons_121 x_26216 x_26217))))
(assert (forall ((x_26218 Int) (x_26219 list_121))
	(diseqlist_121 nil_134 (cons_121 x_26218 x_26219))))
(assert (forall ((x_26220 Int) (x_26221 list_121))
	(diseqlist_121 (cons_121 x_26220 x_26221) nil_134)))
(assert (forall ((x_26222 Int) (x_26223 list_121) (x_26224 Int) (x_26225 list_121))
	(=> (diseqInt x_26222 x_26224) (diseqlist_121 (cons_121 x_26222 x_26223) (cons_121 x_26224 x_26225)))))
(assert (forall ((x_26222 Int) (x_26223 list_121) (x_26224 Int) (x_26225 list_121))
	(=> (diseqlist_121 x_26223 x_26225) (diseqlist_121 (cons_121 x_26222 x_26223) (cons_121 x_26224 x_26225)))))
(declare-datatypes ((pair_44 0)) (((pair_45 (projpair_88 list_121) (projpair_89 list_121)))))
(declare-fun diseqpair_22 (pair_44 pair_44) Bool)
(declare-fun projpair_90 (list_121 pair_44) Bool)
(declare-fun projpair_91 (list_121 pair_44) Bool)
(declare-fun ispair_22 (pair_44) Bool)
(assert (forall ((x_26226 list_121) (x_26227 list_121))
	(projpair_90 x_26226 (pair_45 x_26226 x_26227))))
(assert (forall ((x_26226 list_121) (x_26227 list_121))
	(projpair_91 x_26227 (pair_45 x_26226 x_26227))))
(assert (forall ((x_26229 list_121) (x_26230 list_121))
	(ispair_22 (pair_45 x_26229 x_26230))))
(assert (forall ((x_26231 list_121) (x_26232 list_121) (x_26233 list_121) (x_26234 list_121))
	(=> (diseqlist_121 x_26231 x_26233) (diseqpair_22 (pair_45 x_26231 x_26232) (pair_45 x_26233 x_26234)))))
(assert (forall ((x_26231 list_121) (x_26232 list_121) (x_26233 list_121) (x_26234 list_121))
	(=> (diseqlist_121 x_26232 x_26234) (diseqpair_22 (pair_45 x_26231 x_26232) (pair_45 x_26233 x_26234)))))
(declare-fun take_26 (list_121 Int list_121) Bool)
(assert (forall ((x_26094 list_121) (z_976 Int) (xs_319 list_121) (z_975 Int))
	(=> (take_26 x_26094 z_975 xs_319) (take_26 (cons_121 z_976 x_26094) (succ_55 z_975) (cons_121 z_976 xs_319)))))
(assert (forall ((z_975 Int))
	(take_26 nil_134 (succ_55 z_975) nil_134)))
(assert (forall ((y_1008 list_121))
	(take_26 nil_134 zero_56 y_1008)))
(declare-fun plus_55 (Int Int Int) Bool)
(assert (forall ((x_26098 Int) (z_977 Int) (y_1009 Int))
	(=> (plus_55 x_26098 z_977 y_1009) (plus_55 (succ_55 x_26098) (succ_55 z_977) y_1009))))
(assert (forall ((x_26099 Int))
	(plus_55 x_26099 zero_56 x_26099)))
(declare-fun times_12 (Int Int Int) Bool)
(assert (forall ((x_26100 Int) (x_26101 Int) (z_978 Int) (y_1010 Int))
	(=> (and (times_12 x_26101 z_978 y_1010) (plus_55 x_26100 y_1010 x_26101)) (times_12 x_26100 (succ_55 z_978) y_1010))))
(assert (forall ((y_1010 Int))
	(times_12 zero_56 zero_56 y_1010)))
(declare-fun minus_175 (Int Int Int) Bool)
(assert (forall ((x_26104 Int) (y_1012 Int) (z_979 Int))
	(=> (minus_175 x_26104 z_979 y_1012) (minus_175 x_26104 (succ_55 z_979) (succ_55 y_1012)))))
(assert (forall ((z_979 Int))
	(minus_175 zero_56 (succ_55 z_979) zero_56)))
(assert (forall ((y_1011 Int))
	(minus_175 zero_56 zero_56 y_1011)))
(declare-fun lt_179 (Bool_171 Int Int) Bool)
(assert (forall ((x_26108 Bool_171) (n_57 Int) (z_980 Int))
	(=> (lt_179 x_26108 n_57 z_980) (lt_179 x_26108 (succ_55 n_57) (succ_55 z_980)))))
(assert (forall ((z_980 Int))
	(lt_179 true_171 zero_56 (succ_55 z_980))))
(assert (forall ((x_26063 Int))
	(lt_179 false_171 x_26063 zero_56)))
(declare-fun leq_19 (Bool_171 Int Int) Bool)
(assert (forall ((x_26112 Bool_171) (x_26065 Int) (z_981 Int))
	(=> (leq_19 x_26112 z_981 x_26065) (leq_19 x_26112 (succ_55 z_981) (succ_55 x_26065)))))
(assert (forall ((z_981 Int))
	(leq_19 false_171 (succ_55 z_981) zero_56)))
(assert (forall ((y_1014 Int))
	(leq_19 true_171 zero_56 y_1014)))
(declare-fun sort_17 (list_121 Int Int) Bool)
(assert (forall ((x_26066 Int) (y_1015 Int))
	(=> (leq_19 true_171 x_26066 y_1015) (sort_17 (cons_121 x_26066 (cons_121 y_1015 nil_134)) x_26066 y_1015))))
(assert (forall ((x_26066 Int) (y_1015 Int))
	(=> (leq_19 false_171 x_26066 y_1015) (sort_17 (cons_121 y_1015 (cons_121 x_26066 nil_134)) x_26066 y_1015))))
(declare-fun length_14 (Int list_121) Bool)
(assert (forall ((x_26120 Int) (x_26121 Int) (y_1016 Int) (l_16 list_121))
	(=> (and (length_14 x_26121 l_16) (plus_55 x_26120 (succ_55 zero_56) x_26121)) (length_14 x_26120 (cons_121 y_1016 l_16)))))
(assert (length_14 zero_56 nil_134))
(declare-fun insert_13 (list_121 Int list_121) Bool)
(assert (forall ((z_982 Int) (xs_320 list_121) (x_26068 Int))
	(=> (leq_19 true_171 x_26068 z_982) (insert_13 (cons_121 x_26068 (cons_121 z_982 xs_320)) x_26068 (cons_121 z_982 xs_320)))))
(assert (forall ((x_26128 list_121) (z_982 Int) (xs_320 list_121) (x_26068 Int))
	(=> (and (insert_13 x_26128 x_26068 xs_320) (leq_19 false_171 x_26068 z_982)) (insert_13 (cons_121 z_982 x_26128) x_26068 (cons_121 z_982 xs_320)))))
(assert (forall ((x_26068 Int))
	(insert_13 (cons_121 x_26068 nil_134) x_26068 nil_134)))
(declare-fun isort_13 (list_121 list_121) Bool)
(assert (forall ((x_26130 list_121) (x_26131 list_121) (y_1018 Int) (xs_321 list_121))
	(=> (and (isort_13 x_26131 xs_321) (insert_13 x_26130 y_1018 x_26131)) (isort_13 x_26130 (cons_121 y_1018 xs_321)))))
(assert (isort_13 nil_134 nil_134))
(declare-fun idiv_4 (Int Int Int) Bool)
(assert (forall ((x_26070 Int) (y_1019 Int))
	(=> (lt_179 true_171 x_26070 y_1019) (idiv_4 zero_56 x_26070 y_1019))))
(assert (forall ((x_26138 Int) (x_26139 Int) (x_26070 Int) (y_1019 Int))
	(=> (and (minus_175 x_26138 x_26070 y_1019) (idiv_4 x_26139 x_26138 y_1019) (lt_179 false_171 x_26070 y_1019)) (idiv_4 (succ_55 x_26139) x_26070 y_1019))))
(declare-fun drop_28 (list_121 Int list_121) Bool)
(assert (forall ((x_26140 list_121) (z_984 Int) (xs_322 list_121) (z_983 Int))
	(=> (drop_28 x_26140 z_983 xs_322) (drop_28 x_26140 (succ_55 z_983) (cons_121 z_984 xs_322)))))
(assert (forall ((z_983 Int))
	(drop_28 nil_134 (succ_55 z_983) nil_134)))
(assert (forall ((x_26143 list_121))
	(drop_28 x_26143 zero_56 x_26143)))
(declare-fun splitAt_9 (pair_44 Int list_121) Bool)
(assert (forall ((x_26145 list_121) (x_26146 list_121) (x_26072 Int) (y_1021 list_121))
	(=> (and (take_26 x_26145 x_26072 y_1021) (drop_28 x_26146 x_26072 y_1021)) (splitAt_9 (pair_45 x_26145 x_26146) x_26072 y_1021))))
(declare-fun x_26073 (list_121 list_121 list_121) Bool)
(assert (forall ((x_26148 list_121) (z_985 Int) (xs_323 list_121) (y_1022 list_121))
	(=> (x_26073 x_26148 xs_323 y_1022) (x_26073 (cons_121 z_985 x_26148) (cons_121 z_985 xs_323) y_1022))))
(assert (forall ((x_26149 list_121))
	(x_26073 x_26149 nil_134 x_26149)))
(declare-fun stoogesort_18 (list_121 list_121) Bool)
(declare-fun stoogesort_19 (list_121 list_121) Bool)
(declare-fun stoogesort_20 (list_121 list_121) Bool)
(assert (forall ((x_26154 list_121) (x_26155 list_121) (x_26150 Int) (x_26151 Int) (x_26152 Int) (ys_99 list_121) (zs_29 list_121) (x_26075 list_121))
	(=> (and (stoogesort_19 x_26155 ys_99) (x_26073 x_26154 x_26155 zs_29) (length_14 x_26150 x_26075) (times_12 x_26151 (succ_55 (succ_55 zero_56)) x_26150) (idiv_4 x_26152 (succ_55 x_26151) (succ_55 (succ_55 (succ_55 zero_56)))) (splitAt_9 (pair_45 ys_99 zs_29) x_26152 x_26075)) (stoogesort_18 x_26154 x_26075))))
(assert (forall ((x_26157 list_121) (x_26158 list_121) (x_26159 list_121) (x_26078 Int) (x_26079 list_121) (y_1024 Int) (y_1023 Int))
	(=> (and (stoogesort_18 x_26158 (cons_121 y_1023 (cons_121 y_1024 (cons_121 x_26078 x_26079)))) (stoogesort_20 x_26159 x_26158) (stoogesort_18 x_26157 x_26159)) (stoogesort_19 x_26157 (cons_121 y_1023 (cons_121 y_1024 (cons_121 x_26078 x_26079)))))))
(assert (forall ((x_26161 list_121) (y_1024 Int) (y_1023 Int))
	(=> (sort_17 x_26161 y_1023 y_1024) (stoogesort_19 x_26161 (cons_121 y_1023 (cons_121 y_1024 nil_134))))))
(assert (forall ((y_1023 Int))
	(stoogesort_19 (cons_121 y_1023 nil_134) (cons_121 y_1023 nil_134))))
(assert (stoogesort_19 nil_134 nil_134))
(assert (forall ((x_26168 list_121) (x_26169 list_121) (x_26165 Int) (x_26166 Int) (ys_100 list_121) (zs_30 list_121) (x_26080 list_121))
	(=> (and (stoogesort_19 x_26169 zs_30) (x_26073 x_26168 ys_100 x_26169) (length_14 x_26165 x_26080) (idiv_4 x_26166 x_26165 (succ_55 (succ_55 (succ_55 zero_56)))) (splitAt_9 (pair_45 ys_100 zs_30) x_26166 x_26080)) (stoogesort_20 x_26168 x_26080))))
(assert (forall ((x_26171 Int) (x_26172 Int) (x_26173 Int) (x_26174 Int) (x_26081 Int) (y_1025 Int) (z_987 Int))
	(=> (and true (diseqInt x_26172 x_26174) (times_12 x_26171 y_1025 z_987) (times_12 x_26172 x_26081 x_26171) (times_12 x_26173 x_26081 y_1025) (times_12 x_26174 x_26173 z_987)) false)))
(assert (forall ((x_26175 Int) (x_26176 Int) (x_26177 Int) (x_26178 Int) (x_26082 Int) (y_1026 Int) (z_988 Int))
	(=> (and true (diseqInt x_26176 x_26178) (plus_55 x_26175 y_1026 z_988) (plus_55 x_26176 x_26082 x_26175) (plus_55 x_26177 x_26082 y_1026) (plus_55 x_26178 x_26177 z_988)) false)))
(assert (forall ((x_26179 Int) (x_26180 Int) (x_26083 Int) (y_1027 Int))
	(=> (and true (diseqInt x_26179 x_26180) (times_12 x_26179 x_26083 y_1027) (times_12 x_26180 y_1027 x_26083)) false)))
(assert (forall ((x_26181 Int) (x_26182 Int) (x_26084 Int) (y_1028 Int))
	(=> (and true (diseqInt x_26181 x_26182) (plus_55 x_26181 x_26084 y_1028) (plus_55 x_26182 y_1028 x_26084)) false)))
(assert (forall ((x_26183 Int) (x_26184 Int) (x_26185 Int) (x_26186 Int) (x_26187 Int) (x_26085 Int) (y_1029 Int) (z_989 Int))
	(=> (and true (diseqInt x_26184 x_26187) (plus_55 x_26183 y_1029 z_989) (times_12 x_26184 x_26085 x_26183) (times_12 x_26185 x_26085 y_1029) (times_12 x_26186 x_26085 z_989) (plus_55 x_26187 x_26185 x_26186)) false)))
(assert (forall ((x_26188 Int) (x_26189 Int) (x_26190 Int) (x_26191 Int) (x_26192 Int) (x_26086 Int) (y_1030 Int) (z_990 Int))
	(=> (and true (diseqInt x_26189 x_26192) (plus_55 x_26188 x_26086 y_1030) (times_12 x_26189 x_26188 z_990) (times_12 x_26190 x_26086 z_990) (times_12 x_26191 y_1030 z_990) (plus_55 x_26192 x_26190 x_26191)) false)))
(assert (forall ((x_26193 Int) (x_26087 Int))
	(=> (and true (diseqInt x_26193 x_26087) (times_12 x_26193 x_26087 (succ_55 zero_56))) false)))
(assert (forall ((x_26194 Int) (x_26088 Int))
	(=> (and true (diseqInt x_26194 x_26088) (times_12 x_26194 (succ_55 zero_56) x_26088)) false)))
(assert (forall ((x_26195 Int) (x_26089 Int))
	(=> (and true (diseqInt x_26195 x_26089) (plus_55 x_26195 x_26089 zero_56)) false)))
(assert (forall ((x_26196 Int) (x_26090 Int))
	(=> (and true (diseqInt x_26196 x_26090) (plus_55 x_26196 zero_56 x_26090)) false)))
(assert (forall ((x_26197 Int) (x_26091 Int))
	(=> (and true (diseqInt x_26197 zero_56) (times_12 x_26197 x_26091 zero_56)) false)))
(assert (forall ((x_26198 Int) (x_26092 Int))
	(=> (and true (diseqInt x_26198 zero_56) (times_12 x_26198 zero_56 x_26092)) false)))
(assert (forall ((x_26199 list_121) (x_26200 list_121) (xs_324 list_121))
	(=> (and true (diseqlist_121 x_26199 x_26200) (stoogesort_19 x_26199 xs_324) (isort_13 x_26200 xs_324)) false)))
(check-sat)
