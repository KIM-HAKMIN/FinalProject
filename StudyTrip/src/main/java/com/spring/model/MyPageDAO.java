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
	public List<PaymentVO> myPage_member_pay(String email) {
		List<PaymentVO> payList = sqlsession.selectList("mypage.myPage_member_pay", email);  
		return payList;
	}


	@Override
	public List<WishListVO> myPage_member_wish(String email) {
		List<WishListVO> wishList = sqlsession.selectList("mypage.myPage_member_wish", email);  
		return wishList;
	}


	@Override
	public List<CouponVO> myPage_member_coupon(String email) {
		List<CouponVO> couponList = sqlsession.selectList("mypage.myPage_member_coupon", email);  
		return couponList;
	}


	@Override
	public List<PaymentVO> myPage_leader_student(String study_num) {
		List<PaymentVO> studentList = sqlsession.selectList("mypage.myPage_leader_student", study_num);  
		return studentList;
	}
	
	
}
