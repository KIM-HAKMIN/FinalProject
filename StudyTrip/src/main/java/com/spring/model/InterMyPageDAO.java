package com.spring.model;

import java.util.List;

public interface InterMyPageDAO {

	List<PaymentVO> myPage_member_pay(String email);

	List<WishListVO> myPage_member_wish(String email);

	List<CouponVO> myPage_member_coupon(String email);

	List<PaymentVO> myPage_leader_student(String study_num);

}
