package com.spring.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyPageDAO implements InterMyPageDAO {

	@Autowired   
	private SqlSessionTemplate sqlsession;

	
	@Override
	public List<PaymentVO> myPage_member_pay(MemberVO membervo) {
		List<PaymentVO> payList = sqlsession.selectList("mypage.myPage_member_pay", membervo);  
		return payList;
	}
	
	
	@Override
	public List<CouponVO> myPage_member_coupon(MemberVO membervo) {
		List<CouponVO> couponList = sqlsession.selectList("mypage.myPage_member_coupon", membervo);  
		return couponList;
	}


	@Override
	public List<StudyVO> myPage_member_wish(MemberVO membervo) {
		List<StudyVO> wishList = sqlsession.selectList("mypage.myPage_member_wish", membervo);  
		return wishList;
	}
	
	
	@Override
	public List<StudyVO> member_study(MemberVO membervo) {
		List<StudyVO> StudyList = sqlsession.selectList("mypage.member_study", membervo);  
		return StudyList;
	}


	@Override
	public List<PaymentVO> myPage_leader_student(String study_num) {
		List<PaymentVO> studentList = sqlsession.selectList("mypage.myPage_leader_student", study_num);  
		return studentList;
	}
	
	
	@Override
	public List<StudyVO> leader_study(MemberVO membervo) {
		List<StudyVO> StudyList = sqlsession.selectList("mypage.leader_study", membervo);  
		return StudyList;
	}


	@Override
	public int edit(MemberVO membervo) {
		int n = sqlsession.update("mypage.myPage_update", membervo);
		return n;
	}


	@Override
	public int del(MemberVO membervo) {
		int n = sqlsession.update("mypage.myPage_delete", membervo);  
		return n;
	}


	@Override
	public boolean checkPW(MemberVO membervo) {
		int n = sqlsession.selectOne("mypage.checkPW", membervo); 
		
		if(n==1)
			return true;
		else
			return false;
	}
	
	
}