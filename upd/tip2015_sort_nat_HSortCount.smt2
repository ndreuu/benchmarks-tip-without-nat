
(set-logic HORN)
(declare-fun zero_47 () Int)
(declare-fun succ_46 (Int) Int)
(declare-datatypes ((Bool_155 0)) (((false_155) (true_155))))
(declare-fun diseqBool_66 (Bool_155 Bool_155) Bool)
(declare-fun isfalse_66 (Bool_155) Bool)
(declare-fun istrue_66 (Bool_155) Bool)
(assert (isfalse_66 false_155))
(assert (istrue_66 true_155))
(assert (diseqBool_66 false_155 true_155))
(assert (diseqBool_66 true_155 false_155))
(declare-fun and_155 (Bool_155 Bool_155 Bool_155) Bool)
(declare-fun or_157 (Bool_155 Bool_155 Bool_155) Bool)
(declare-fun hence_155 (Bool_155 Bool_155 Bool_155) Bool)
(declare-fun not_156 (Bool_155 Bool_155) Bool)
(assert (and_155 false_155 false_155 false_155))
(assert (and_155 false_155 true_155 false_155))
(assert (and_155 false_155 false_155 true_155))
(assert (and_155 true_155 true_155 true_155))
(assert (or_157 false_155 false_155 false_155))
(assert (or_157 true_155 true_155 false_155))
(assert (or_157 true_155 false_155 true_155))
(assert (or_157 true_155 true_155 true_155))
(assert (hence_155 true_155 false_155 false_155))
(assert (hence_155 false_155 true_155 false_155))
(assert (hence_155 true_155 false_155 true_155))
(assert (hence_155 true_155 true_155 true_155))
(assert (not_156 true_155 false_155))
(assert (not_156 false_155 true_155))
(declare-fun diseqInt (Int Int) Bool)
(declare-fun p_133 (Int Int) Bool)
(declare-fun iszero_46 (Int) Bool)
(declare-fun issucc_46 (Int) Bool)
(assert (forall ((x_22637 Int))
	(p_133 x_22637 (succ_46 x_22637))))
(assert (iszero_46 zero_47))
(assert (forall ((x_22639 Int))
	(issucc_46 (succ_46 x_22639))))
(assert (forall ((x_22640 Int))
	(diseqInt zero_47 (succ_46 x_22640))))
(assert (forall ((x_22641 Int))
	(diseqInt (succ_46 x_22641) zero_47)))
(assert (forall ((x_22642 Int) (x_22643 Int))
	(=> (diseqInt x_22642 x_22643) (diseqInt (succ_46 x_22642) (succ_46 x_22643)))))
(declare-datatypes ((list_110 0)) (((nil_121) (cons_110 (head_220 Int) (tail_220 list_110)))))
(declare-fun diseqlist_110 (list_110 list_110) Bool)
(declare-fun head_222 (Int list_110) Bool)
(declare-fun tail_222 (list_110 list_110) Bool)
(declare-fun isnil_121 (list_110) Bool)
(declare-fun iscons_110 (list_110) Bool)
(assert (forall ((x_22645 Int) (x_22646 list_110))
	(head_222 x_22645 (cons_110 x_22645 x_22646))))
(assert (forall ((x_22645 Int) (x_22646 list_110))
	(tail_222 x_22646 (cons_110 x_22645 x_22646))))
(assert (isnil_121 nil_121))
(assert (forall ((x_22648 Int) (x_22649 list_110))
	(iscons_110 (cons_110 x_22648 x_22649))))
(assert (forall ((x_22650 Int) (x_22651 list_110))
	(diseqlist_110 nil_121 (cons_110 x_22650 x_22651))))
(assert (forall ((x_22652 Int) (x_22653 list_110))
	(diseqlist_110 (cons_110 x_22652 x_22653) nil_121)))
(assert (forall ((x_22654 Int) (x_22655 list_110) (x_22656 Int) (x_22657 list_110))
	(=> (diseqInt x_22654 x_22656) (diseqlist_110 (cons_110 x_22654 x_22655) (cons_110 x_22656 x_22657)))))
(assert (forall ((x_22654 Int) (x_22655 list_110) (x_22656 Int) (x_22657 list_110))
	(=> (diseqlist_110 x_22655 x_22657) (diseqlist_110 (cons_110 x_22654 x_22655) (cons_110 x_22656 x_22657)))))
(declare-datatypes ((Heap_3 0)) (((Node_6 (projNode_36 Heap_3) (projNode_37 Int) (projNode_38 Heap_3)) (Nil_122))))
(declare-fun diseqHeap_3 (Heap_3 Heap_3) Bool)
(declare-fun projNode_39 (Heap_3 Heap_3) Bool)
(declare-fun projNode_40 (Int Heap_3) Bool)
(declare-fun projNode_41 (Heap_3 Heap_3) Bool)
(declare-fun isNode_6 (Heap_3) Bool)
(declare-fun isNil_122 (Heap_3) Bool)
(assert (forall ((x_22658 Heap_3) (x_22659 Int) (x_22660 Heap_3))
	(projNode_39 x_22658 (Node_6 x_22658 x_22659 x_22660))))
(assert (forall ((x_22658 Heap_3) (x_22659 Int) (x_22660 Heap_3))
	(projNode_40 x_22659 (Node_6 x_22658 x_22659 x_22660))))
(assert (forall ((x_22658 Heap_3) (x_22659 Int) (x_22660 Heap_3))
	(projNode_41 x_22660 (Node_6 x_22658 x_22659 x_22660))))
(assert (forall ((x_22663 Heap_3) (x_22664 Int) (x_22665 Heap_3))
	(isNode_6 (Node_6 x_22663 x_22664 x_22665))))
(assert (isNil_122 Nil_122))
(assert (forall ((x_22666 Heap_3) (x_22667 Int) (x_22668 Heap_3))
	(diseqHeap_3 (Node_6 x_22666 x_22667 x_22668) Nil_122)))
(assert (forall ((x_22669 Heap_3) (x_22670 Int) (x_22671 Heap_3))
	(diseqHeap_3 Nil_122 (Node_6 x_22669 x_22670 x_22671))))
(assert (forall ((x_22672 Heap_3) (x_22673 Int) (x_22674 Heap_3) (x_22675 Heap_3) (x_22676 Int) (x_22677 Heap_3))
	(=> (diseqHeap_3 x_22672 x_22675) (diseqHeap_3 (Node_6 x_22672 x_22673 x_22674) (Node_6 x_22675 x_22676 x_22677)))))
(assert (forall ((x_22672 Heap_3) (x_22673 Int) (x_22674 Heap_3) (x_22675 Heap_3) (x_22676 Int) (x_22677 Heap_3))
	(=> (diseqInt x_22673 x_22676) (diseqHeap_3 (Node_6 x_22672 x_22673 x_22674) (Node_6 x_22675 x_22676 x_22677)))))
(assert (forall ((x_22672 Heap_3) (x_22673 Int) (x_22674 Heap_3) (x_22675 Heap_3) (x_22676 Int) (x_22677 Heap_3))
	(=> (diseqHeap_3 x_22674 x_22677) (diseqHeap_3 (Node_6 x_22672 x_22673 x_22674) (Node_6 x_22675 x_22676 x_22677)))))
(declare-datatypes ((list_111 0)) (((nil_123) (cons_111 (head_221 Heap_3) (tail_221 list_111)))))
(declare-fun diseqlist_111 (list_111 list_111) Bool)
(declare-fun head_223 (Heap_3 list_111) Bool)
(declare-fun tail_223 (list_111 list_111) Bool)
(declare-fun isnil_123 (list_111) Bool)
(declare-fun iscons_111 (list_111) Bool)
(assert (forall ((x_22679 Heap_3) (x_22680 list_111))
	(head_223 x_22679 (cons_111 x_22679 x_22680))))
(assert (forall ((x_22679 Heap_3) (x_22680 list_111))
	(tail_223 x_22680 (cons_111 x_22679 x_22680))))
(assert (isnil_123 nil_123))
(assert (forall ((x_22682 Heap_3) (x_22683 list_111))
	(iscons_111 (cons_111 x_22682 x_22683))))
(assert (forall ((x_22684 Heap_3) (x_22685 list_111))
	(diseqlist_111 nil_123 (cons_111 x_22684 x_22685))))
(assert (forall ((x_22686 Heap_3) (x_22687 list_111))
	(diseqlist_111 (cons_111 x_22686 x_22687) nil_123)))
(assert (forall ((x_22688 Heap_3) (x_22689 list_111) (x_22690 Heap_3) (x_22691 list_111))
	(=> (diseqHeap_3 x_22688 x_22690) (diseqlist_111 (cons_111 x_22688 x_22689) (cons_111 x_22690 x_22691)))))
(assert (forall ((x_22688 Heap_3) (x_22689 list_111) (x_22690 Heap_3) (x_22691 list_111))
	(=> (diseqlist_111 x_22689 x_22691) (diseqlist_111 (cons_111 x_22688 x_22689) (cons_111 x_22690 x_22691)))))
(declare-fun toHeap_4 (list_111 list_110) Bool)
(assert (forall ((x_22579 list_111) (y_880 Int) (z_874 list_110))
	(=> (toHeap_4 x_22579 z_874) (toHeap_4 (cons_111 (Node_6 Nil_122 y_880 Nil_122) x_22579) (cons_110 y_880 z_874)))))
(assert (toHeap_4 nil_123 nil_121))
(declare-fun plus_45 (Int Int Int) Bool)
(assert (forall ((x_22582 Int) (z_875 Int) (y_881 Int))
	(=> (plus_45 x_22582 z_875 y_881) (plus_45 (succ_46 x_22582) (succ_46 z_875) y_881))))
(assert (forall ((x_22583 Int))
	(plus_45 x_22583 zero_47 x_22583)))
(declare-fun leq_17 (Bool_155 Int Int) Bool)
(assert (forall ((x_22584 Bool_155) (x_22559 Int) (z_876 Int))
	(=> (leq_17 x_22584 z_876 x_22559) (leq_17 x_22584 (succ_46 z_876) (succ_46 x_22559)))))
(assert (forall ((z_876 Int))
	(leq_17 false_155 (succ_46 z_876) zero_47)))
(assert (forall ((y_882 Int))
	(leq_17 true_155 zero_47 y_882)))
(declare-fun hmerge_3 (Heap_3 Heap_3 Heap_3) Bool)
(assert (forall ((x_22588 Heap_3))
	(hmerge_3 x_22588 Nil_122 x_22588)))
(assert (forall ((z_877 Heap_3) (x_22561 Int) (x_22562 Heap_3))
	(hmerge_3 (Node_6 z_877 x_22561 x_22562) (Node_6 z_877 x_22561 x_22562) Nil_122)))
(assert (forall ((x_22592 Heap_3) (x_22563 Heap_3) (x_22564 Int) (x_22565 Heap_3) (z_877 Heap_3) (x_22561 Int) (x_22562 Heap_3))
	(=> (and (hmerge_3 x_22592 x_22562 (Node_6 x_22563 x_22564 x_22565)) (leq_17 true_155 x_22561 x_22564)) (hmerge_3 (Node_6 x_22592 x_22561 z_877) (Node_6 z_877 x_22561 x_22562) (Node_6 x_22563 x_22564 x_22565)))))
(assert (forall ((x_22595 Heap_3) (x_22563 Heap_3) (x_22564 Int) (x_22565 Heap_3) (z_877 Heap_3) (x_22561 Int) (x_22562 Heap_3))
	(=> (and (hmerge_3 x_22595 (Node_6 z_877 x_22561 x_22562) x_22565) (leq_17 false_155 x_22561 x_22564)) (hmerge_3 (Node_6 x_22595 x_22564 x_22563) (Node_6 z_877 x_22561 x_22562) (Node_6 x_22563 x_22564 x_22565)))))
(declare-fun hpairwise_1 (list_111 list_111) Bool)
(assert (forall ((x_22597 Heap_3) (x_22598 list_111) (r_183 Heap_3) (qs_1 list_111) (q_46 Heap_3))
	(=> (and (hmerge_3 x_22597 q_46 r_183) (hpairwise_1 x_22598 qs_1)) (hpairwise_1 (cons_111 x_22597 x_22598) (cons_111 q_46 (cons_111 r_183 qs_1))))))
(assert (forall ((q_46 Heap_3))
	(hpairwise_1 (cons_111 q_46 nil_123) (cons_111 q_46 nil_123))))
(assert (hpairwise_1 nil_123 nil_123))
(declare-fun hmerging_1 (Heap_3 list_111) Bool)
(assert (forall ((x_22601 Heap_3) (x_22602 list_111) (z_878 Heap_3) (x_22568 list_111) (q_47 Heap_3))
	(=> (and (hpairwise_1 x_22602 (cons_111 q_47 (cons_111 z_878 x_22568))) (hmerging_1 x_22601 x_22602)) (hmerging_1 x_22601 (cons_111 q_47 (cons_111 z_878 x_22568))))))
(assert (forall ((q_47 Heap_3))
	(hmerging_1 q_47 (cons_111 q_47 nil_123))))
(assert (hmerging_1 Nil_122 nil_123))
(declare-fun toHeap_5 (Heap_3 list_110) Bool)
(assert (forall ((x_22606 Heap_3) (x_22607 list_111) (x_22569 list_110))
	(=> (and (toHeap_4 x_22607 x_22569) (hmerging_1 x_22606 x_22607)) (toHeap_5 x_22606 x_22569))))
(declare-fun toList_3 (list_110 Heap_3) Bool)
(assert (toList_3 nil_121 Nil_122))
(assert (forall ((x_22611 Heap_3) (x_22612 list_110) (q_48 Heap_3) (y_886 Int) (r_184 Heap_3))
	(=> (and (hmerge_3 x_22611 q_48 r_184) (toList_3 x_22612 x_22611)) (toList_3 (cons_110 y_886 x_22612) (Node_6 q_48 y_886 r_184)))))
(declare-fun hsort_3 (list_110 list_110) Bool)
(assert (forall ((x_22613 list_110) (x_22614 Heap_3) (x_22571 list_110))
	(=> (and (toHeap_5 x_22614 x_22571) (toList_3 x_22613 x_22614)) (hsort_3 x_22613 x_22571))))
(declare-fun count_18 (Int Int list_110) Bool)
(assert (forall ((x_22616 Int) (x_22617 Int) (ys_82 list_110) (x_22572 Int))
	(=> (and (count_18 x_22617 x_22572 ys_82) (plus_45 x_22616 (succ_46 zero_47) x_22617)) (count_18 x_22616 x_22572 (cons_110 x_22572 ys_82)))))
(assert (forall ((x_22619 Int) (z_879 Int) (ys_82 list_110) (x_22572 Int))
	(=> (and (diseqInt x_22572 z_879) (count_18 x_22619 x_22572 ys_82)) (count_18 x_22619 x_22572 (cons_110 z_879 ys_82)))))
(assert (forall ((x_22572 Int))
	(count_18 zero_47 x_22572 nil_121)))
(assert (forall ((x_22622 Int) (x_22623 Int) (x_22624 Int) (x_22625 Int) (x_22573 Int) (y_888 Int) (z_880 Int))
	(=> (and true (diseqInt x_22623 x_22625) (plus_45 x_22622 y_888 z_880) (plus_45 x_22623 x_22573 x_22622) (plus_45 x_22624 x_22573 y_888) (plus_45 x_22625 x_22624 z_880)) false)))
(assert (forall ((x_22626 Int) (x_22627 Int) (x_22574 Int) (y_889 Int))
	(=> (and true (diseqInt x_22626 x_22627) (plus_45 x_22626 x_22574 y_889) (plus_45 x_22627 y_889 x_22574)) false)))
(assert (forall ((x_22628 Int) (x_22575 Int))
	(=> (and true (diseqInt x_22628 x_22575) (plus_45 x_22628 x_22575 zero_47)) false)))
(assert (forall ((x_22629 Int) (x_22576 Int))
	(=> (and true (diseqInt x_22629 x_22576) (plus_45 x_22629 zero_47 x_22576)) false)))
(assert (forall ((x_22630 list_110) (x_22631 Int) (x_22632 Int) (x_22577 Int) (xs_273 list_110))
	(=> (and true (diseqInt x_22631 x_22632) (hsort_3 x_22630 xs_273) (count_18 x_22631 x_22577 x_22630) (count_18 x_22632 x_22577 xs_273)) false)))
(check-sat)
