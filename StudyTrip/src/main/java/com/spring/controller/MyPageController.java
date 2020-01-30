package com.spring.controller;

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
	
	
	// 위시리스트 삭제 

	
	
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

	
	
	// Q&A 개수 알아오기 
	
	
	
	// 스터디별 수강생 조회
	@RequestMapping(value="/myPage_leader_student.st")
	public ModelAndView myPage_leader_student(HttpServletRequest request, ModelAndView mav) {
		
		String study_num = request.getParameter("study_num");
		
		List<PaymentVO> studentList = service.myPage_leader_student(study_num);  
		
		mav.addObject("studentList", studentList);  
		
		mav.setViewName("myPage/leader.tiles1");
		
		return mav;  
	}
	

	
	// 공통 : 스터디 목록  
	
	
	
	// 공통 : 회원정보수정(POST)	- select --> update   // jsp에서 받아오기 위해 jsp 수정
/*
	@RequestMapping(value="/FAQ_edit.st",  method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView FAQ_edit(HttpServletRequest request, ModelAndView mav) {

		String email = request.getParameter("email");
		
		MemberVO membervo = service.getViewWithNoAddCount(email);

		mav.addObject("membervo", membervo);
		mav.setViewName("FAQ/edit.tiles1");
	
		return mav;
	}
	
	
	@RequestMapping(value="/FAQ_editEnd.st",  method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView FAQ_editEnd(HttpServletRequest request, FAQVO boardvo, ModelAndView mav) {
		
		int n = service.edit(boardvo);
		
		if(n==0) {
			mav.addObject("msg", "암호가 일치하지 않아 글 수정이 불가합니다.");
		}
		else {
			mav.addObject("msg", "글수정 성공!!");
		}
		
		mav.addObject("loc", request.getContextPath()+"/FAQ_view.st?seq="+boardvo.getSeq());
		mav.setViewName("msg");
	
		return mav;
	}
	
*/	

	
	// 공통 : 회원탈퇴(POST) - 비번 확인하기 - update
	/*
	 @RequestMapping(value="/myPage_del.st",  method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView myPage_del(HttpServletRequest request, ModelAndView mav) {

		String seq = request.getParameter("seq");
		
		mav.addObject("seq", seq);
		
		mav.setViewName("FAQ/del.tiles1");
	
		return mav;
	}
	
	
	@RequestMapping(value="/myPage_delEnd.st",  method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView myPage_delEnd(HttpServletRequest request, ModelAndView mav) {

		String seq = request.getParameter("seq");
		String pw = request.getParameter("pw");
		
		FAQVO boardvo = new FAQVO();
		boardvo.setSeq(seq);
		boardvo.setPw(pw);
		
		int n = service.del(boardvo);  
		
		if(n == 0) {
			 mav.addObject("msg", "암호가 일치하지 않아 글삭제가 불가합니다.");
		}
		else {
			mav.addObject("msg", "글삭제 성공!!");
		}
		
		mav.addObject("loc", request.getContextPath()+"/FAQ_list.st"); 
		mav.setViewName("msg");
	
		return mav;
	}
	 */
	
	
	
	
	
	
	
	

	
	
}