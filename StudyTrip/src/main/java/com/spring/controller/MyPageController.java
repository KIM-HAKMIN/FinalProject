package com.spring.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.CouponVO;
import com.spring.model.PaymentVO;
import com.spring.model.WishListVO;
import com.spring.service.InterMyPageService;

@Controller
public class MyPageController {

	@Autowired  
	private InterMyPageService service;
	
	
	@RequestMapping(value="/myPage_member.st")
	public ModelAndView myPage_member(ModelAndView mav) {

		mav.setViewName("myPage/member.tiles1");
	
		return mav;
	}
	
	
	// 결제내역 조회
	@RequestMapping(value="/myPage_member_pay.st")
	public ModelAndView myPage_member_pay(HttpServletRequest request, ModelAndView mav) {
		
		String email = request.getParameter("email");
		
		List<PaymentVO> payList = service.myPage_member_pay(email);  
		
		mav.addObject("payList", payList);  
		
		mav.setViewName("myPage/member.tiles1");
		
		return mav;  
	}
	
	
	// 위시리스트 조회
	@RequestMapping(value="/myPage_member_wish.st")
	public ModelAndView myPage_member_wish(HttpServletRequest request, ModelAndView mav) {
		
		String email = request.getParameter("email");
		
		List<WishListVO> wishList = service.myPage_member_wish(email);  
		
		mav.addObject("wishList", wishList);  
		
		mav.setViewName("myPage/member.tiles1");
		
		return mav;  
	}
	
	
	// 위시리스트 삭제 --> 학민씨꺼 가져다 쓰기

	
	
	// 쿠폰 조회
	@RequestMapping(value="/myPage_member_coupon.st")
	public ModelAndView myPage_member_coupon(HttpServletRequest request, ModelAndView mav) {
		
		String email = request.getParameter("email");
		
		List<CouponVO> couponList = service.myPage_member_coupon(email);  
		
		mav.addObject("couponList", couponList);  
		
		mav.setViewName("myPage/member.tiles1");
		
		return mav;  
	}
	
	
	
	@RequestMapping(value="/myPage_leader.st")
	public ModelAndView myPage_leader(ModelAndView mav) {
		
		mav.setViewName("myPage/leader.tiles1");

		return mav;
	}

	// Q&A 개수 알아오기 --> 학민씨꺼 가져다 쓰기
	
	// 스터디별 수강생 조회
	@RequestMapping(value="/myPage_leader_student.st")
	public ModelAndView myPage_leader_student(HttpServletRequest request, ModelAndView mav) {
		
		String study_num = request.getParameter("study_num");
		
		List<PaymentVO> studentList = service.myPage_leader_student(study_num);  
		
		mav.addObject("studentList", studentList);  
		
		mav.setViewName("myPage/leader.tiles1");
		
		return mav;  
	}
	

	
	// 공통 : 스터디 목록  --> 학민씨꺼 가져다 쓰기
	
	// 공통 : 회원정보수정(POST)
	
	// 공통 : 회원탈퇴(POST)
	
}