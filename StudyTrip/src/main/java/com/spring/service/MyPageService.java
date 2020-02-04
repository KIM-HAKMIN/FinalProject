package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.model.CouponVO;
import com.spring.model.InterMyPageDAO;
import com.spring.model.MemberVO;
import com.spring.model.PaymentVO;
import com.spring.model.WishListVO;

@Service
public class MyPageService implements InterMyPageService {

	@Autowired  
	private InterMyPageDAO dao;

	
	@Override
	public List<PaymentVO> myPage_member_pay(String email) {
		List<PaymentVO> payList = dao.myPage_member_pay(email);
		return payList;
	}


	@Override
	public List<WishListVO> myPage_member_wish(String email) {
		List<WishListVO> wishList = dao.myPage_member_wish(email);
		return wishList;
	}



	@Override
	public List<CouponVO> myPage_member_coupon(String email) {
		List<CouponVO> couponList = dao.myPage_member_coupon(email);
		return couponList;
	}



	@Override
	public List<PaymentVO> myPage_leader_student(String study_num) {
		List<PaymentVO> studentList = dao.myPage_leader_student(study_num);
		return studentList;
	}


	
}
