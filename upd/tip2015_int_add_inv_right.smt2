
(set-logic HORN)
(declare-fun zero_42 () Int)
(declare-fun succ_42 (Int) Int)
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_125 (Int Int) Bool)
(declare-fun iszero_42 (Int) Bool)
(declare-fun issucc_42 (Int) Bool)
(assert (forall ((x_22094 Int))
	(p_125 x_22094 (succ_42 x_22094))))
(assert (iszero_42 zero_42))
(assert (forall ((x_22096 Int))
	(issucc_42 (succ_42 x_22096))))
(assert (forall ((x_22097 Int))
	(diseqInt zero_42 (succ_42 x_22097))))
(assert (forall ((x_22098 Int))
	(diseqInt (succ_42 x_22098) zero_42)))
(assert (forall ((x_22099 Int) (x_22100 Int))
	(=> (diseqInt x_22099 x_22100) (diseqInt (succ_42 x_22099) (succ_42 x_22100)))))
(declare-datatypes ((Integer_2 0)) (((P_124 (projP_4 Int)) (N_47 (projN_4 Int)))))
(declare-fun diseqInteger_2 (Integer_2 Integer_2) Bool)
(declare-fun projP_5 (Int Integer_2) Bool)
(declare-fun projN_5 (Int Integer_2) Bool)
(declare-fun isP_2 (Integer_2) Bool)
(declare-fun isN_2 (Integer_2) Bool)
(assert (forall ((x_22101 Int))
	(projP_5 x_22101 (P_124 x_22101))))
(assert (forall ((x_22103 Int))
	(projN_5 x_22103 (N_47 x_22103))))
(assert (forall ((x_22105 Int))
	(isP_2 (P_124 x_22105))))
(assert (forall ((x_22106 Int))
	(isN_2 (N_47 x_22106))))
(assert (forall ((x_22107 Int) (x_22108 Int))
	(diseqInteger_2 (P_124 x_22107) (N_47 x_22108))))
(assert (forall ((x_22109 Int) (x_22110 Int))
	(diseqInteger_2 (N_47 x_22109) (P_124 x_22110))))
(assert (forall ((x_22111 Int) (x_22112 Int))
	(=> (diseqInt x_22111 x_22112) (diseqInteger_2 (P_124 x_22111) (P_124 x_22112)))))
(assert (forall ((x_22113 Int) (x_22114 Int))
	(=> (diseqInt x_22113 x_22114) (diseqInteger_2 (N_47 x_22113) (N_47 x_22114)))))
(declare-fun zero_43 (Integer_2) Bool)
(assert (zero_43 (P_124 zero_42)))
(declare-fun plus_38 (Int Int Int) Bool)
(assert (forall ((x_22052 Int) (z_834 Int) (y_833 Int))
	(=> (plus_38 x_22052 z_834 y_833) (plus_38 (succ_42 x_22052) (succ_42 z_834) y_833))))
(assert (forall ((x_22053 Int))
	(plus_38 x_22053 zero_42 x_22053)))
(declare-fun neg_2 (Integer_2 Integer_2) Bool)
(assert (forall ((x_22055 Int) (n_48 Int))
	(=> (plus_38 x_22055 (succ_42 zero_42) n_48) (neg_2 (P_124 x_22055) (N_47 n_48)))))
(assert (forall ((z_835 Int))
	(neg_2 (N_47 z_835) (P_124 (succ_42 z_835)))))
(assert (neg_2 (P_124 zero_42) (P_124 zero_42)))
(declare-fun x_22039 (Integer_2 Int Int) Bool)
(assert (forall ((x_22041 Int) (z_836 Int) (fail_6 Integer_2))
	(=> (x_22039 fail_6 x_22041 z_836) (x_22039 fail_6 (succ_42 x_22041) (succ_42 z_836)))))
(assert (forall ((x_22043 Int))
	(x_22039 (N_47 (succ_42 x_22043)) zero_42 (succ_42 x_22043))))
(assert (forall ((x_22042 Int))
	(x_22039 (P_124 (succ_42 x_22042)) (succ_42 x_22042) zero_42)))
(assert (x_22039 (P_124 zero_42) zero_42 zero_42))
(declare-fun plus_39 (Integer_2 Integer_2 Integer_2) Bool)
(assert (forall ((x_22071 Int) (x_22072 Int) (n_49 Int) (m_22 Int))
	(=> (and (plus_38 x_22071 (succ_42 zero_42) m_22) (plus_38 x_22072 x_22071 n_49)) (plus_39 (N_47 x_22072) (N_47 m_22) (N_47 n_49)))))
(assert (forall ((x_22073 Integer_2) (x_22074 Int) (n_50 Int) (m_22 Int))
	(=> (and (plus_38 x_22074 (succ_42 zero_42) m_22) (x_22039 x_22073 n_50 x_22074)) (plus_39 x_22073 (N_47 m_22) (P_124 n_50)))))
(assert (forall ((x_22076 Integer_2) (x_22077 Int) (o_1 Int) (m_23 Int))
	(=> (and (plus_38 x_22077 (succ_42 zero_42) o_1) (x_22039 x_22076 m_23 x_22077)) (plus_39 x_22076 (P_124 m_23) (N_47 o_1)))))
(assert (forall ((x_22080 Int) (n_51 Int) (m_23 Int))
	(=> (plus_38 x_22080 m_23 n_51) (plus_39 (P_124 x_22080) (P_124 m_23) (P_124 n_51)))))
(assert (forall ((x_22081 Integer_2) (x_22082 Integer_2) (x_22083 Integer_2) (x_22045 Integer_2))
	(=> (and true (diseqInteger_2 x_22082 x_22083) (neg_2 x_22081 x_22045) (plus_39 x_22082 x_22045 x_22081) (zero_43 x_22083)) false)))
(assert (forall ((x_22084 Int) (x_22085 Int) (x_22086 Int) (x_22087 Int) (x_22046 Int) (y_837 Int) (z_837 Int))
	(=> (and true (diseqInt x_22085 x_22087) (plus_38 x_22084 y_837 z_837) (plus_38 x_22085 x_22046 x_22084) (plus_38 x_22086 x_22046 y_837) (plus_38 x_22087 x_22086 z_837)) false)))
(assert (forall ((x_22088 Int) (x_22089 Int) (x_22047 Int) (y_838 Int))
	(=> (and true (diseqInt x_22088 x_22089) (plus_38 x_22088 x_22047 y_838) (plus_38 x_22089 y_838 x_22047)) false)))
(assert (forall ((x_22090 Int) (x_22048 Int))
	(=> (and true (diseqInt x_22090 x_22048) (plus_38 x_22090 x_22048 zero_42)) false)))
(assert (forall ((x_22091 Int) (x_22049 Int))
	(=> (and true (diseqInt x_22091 x_22049) (plus_38 x_22091 zero_42 x_22049)) false)))
(check-sat)
