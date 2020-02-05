package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.model.CouponVO;
import com.spring.model.InterMyPageDAO;
import com.spring.model.MemberVO;
import com.spring.model.PaymentVO;
import com.spring.model.StudyVO;

@Service
public class MyPageService implements InterMyPageService {

	@Autowired  
	private InterMyPageDAO dao;

	
	@Override
	public List<PaymentVO> myPage_member_pay(MemberVO membervo) {
		List<PaymentVO> payList = dao.myPage_member_pay(membervo);
		return payList;
	}
	
	
	@Override
	public List<CouponVO> myPage_member_coupon(MemberVO membervo) {
		List<CouponVO> couponList = dao.myPage_member_coupon(membervo);
		return couponList;
	}


	@Override
	public List<StudyVO> myPage_member_wish(MemberVO membervo) {
		List<StudyVO> wishList = dao.myPage_member_wish(membervo);
		return wishList;
	}
	
	
	@Override
	public List<StudyVO> member_study(MemberVO membervo) {
		List<StudyVO> studyList = dao.member_study(membervo);
		return studyList;
	}


	@Override
	public List<PaymentVO> myPage_leader_student(String study_num) {
		List<PaymentVO> studentList = dao.myPage_leader_student(study_num);
		return studentList;
	}
	
	
	@Override
	public List<StudyVO> leader_study(MemberVO membervo) {
		List<StudyVO> studyList = dao.leader_study(membervo);
		return studyList;
	}
	

	@Override
	public int edit(MemberVO membervo) {
		int n = dao.edit(membervo);
		return n;
	}


	@Override
	public int del(MemberVO membervo) {
		boolean bool = dao.checkPW(membervo);
		
		if(!bool) {
			return 0;
		}
		else {
			int n = dao.del(membervo);
			return n;
		}
	}
	
	
}