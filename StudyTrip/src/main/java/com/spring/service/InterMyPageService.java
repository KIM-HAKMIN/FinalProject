package com.spring.service;

import java.util.List;

import com.spring.model.CouponVO;
import com.spring.model.MemberVO;
import com.spring.model.PaymentVO;
import com.spring.model.StudyVO;

public interface InterMyPageService {

	List<PaymentVO> myPage_member_pay(MemberVO membervo);
	
	List<CouponVO> myPage_member_coupon(MemberVO membervo);

	List<StudyVO> myPage_member_wish(MemberVO membervo);

	List<StudyVO> member_study(MemberVO membervo);
	
	List<PaymentVO> myPage_leader_student(String study_num);
	
	List<StudyVO> leader_study(MemberVO membervo);

	int edit(MemberVO membervo);

	int del(MemberVO membervo);


}