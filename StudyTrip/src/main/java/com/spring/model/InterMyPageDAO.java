package com.spring.model;

import java.util.List;

public interface InterMyPageDAO {

	List<PaymentVO> myPage_member_pay(MemberVO membervo);
	
	List<CouponVO> myPage_member_coupon(MemberVO membervo);

	List<StudyVO> myPage_member_wish(MemberVO membervo);

	List<StudyVO> member_study(MemberVO membervo);

	List<PaymentVO> myPage_leader_student(String study_num);

	List<StudyVO> leader_study(MemberVO membervo);

	int edit(MemberVO membervo);

	int del(MemberVO membervo);

	boolean checkPW(MemberVO membervo);
	

}