package com.spring.service;

import java.util.List;

import com.spring.model.CouponVO;
import com.spring.model.PaymentVO;
import com.spring.model.WishListVO;

public interface InterMyPageService {

	List<PaymentVO> myPage_member_pay(String email);

	List<WishListVO> myPage_member_wish(String email);

	List<CouponVO> myPage_member_coupon(String email);

	List<PaymentVO> myPage_leader_student(String study_num);

}
