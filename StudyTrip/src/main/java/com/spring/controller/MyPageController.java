package com.spring.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.common.SHA256;
import com.spring.model.CouponVO;
import com.spring.model.FAQVO;
import com.spring.model.MemberVO;
import com.spring.model.PaymentVO;
import com.spring.model.StudyVO;
import com.spring.service.InterMyPageService;

@Controller
public class MyPageController {

	@Autowired  
	private InterMyPageService service;
	
	
	@RequestMapping(value="/myPage_member.st")
	public ModelAndView myPage_member(HttpServletRequest request, ModelAndView mav) {

		mav.setViewName("myPage/member.tiles1");
	
		return mav;
	}
	
	
	@RequestMapping(value="/myPage_leader.st")
	public ModelAndView myPage_leader(HttpServletRequest request, ModelAndView mav) {
		
		mav.setViewName("myPage/leader.tiles1");

		return mav;
	}
	
	
	////////////////////////////////////// 일반회원 /////////////////////////////////////////		
	
	// 결제내역 조회
	@RequestMapping(value="/myPage_member_pay.st")
	public ModelAndView myPage_member_pay(HttpServletRequest request, ModelAndView mav) {
		
		HttpSession session = request.getSession();
		MemberVO membervo = (MemberVO) session.getAttribute("loginuser");
		
		List<PaymentVO> payList = service.myPage_member_pay(membervo);  
		
		mav.addObject("payList", payList);  
		
		mav.setViewName("myPage/member.tiles1");
		
		return mav;  
	}
	
	
	// 쿠폰 조회
	@RequestMapping(value="/myPage_member_coupon.st")
	public ModelAndView myPage_member_coupon(HttpServletRequest request, ModelAndView mav) {
		
		HttpSession session = request.getSession();
		MemberVO membervo = (MemberVO) session.getAttribute("loginuser");
		System.out.println("----membervo-----"+membervo);
		List<CouponVO> couponList = service.myPage_member_coupon(membervo);  
		
		mav.addObject("couponList", couponList);  
		
		mav.setViewName("myPage/member.tiles1");
		
		return mav;  
	}
	
	
	// 위시리스트 조회
	@RequestMapping(value="/myPage_member_wish.st")
	public ModelAndView myPage_member_wish(HttpServletRequest request, ModelAndView mav) {
		
		HttpSession session = request.getSession();
		MemberVO membervo = (MemberVO) session.getAttribute("loginuser");
		
		List<StudyVO> wishList = service.myPage_member_wish(membervo);  
		
		mav.addObject("wishList", wishList);  
		
		mav.setViewName("myPage/member.tiles1");
		
		return mav;  
	}
	

	// 회원 스터디 목록 
	@RequestMapping(value="/member_study.st")
	public ModelAndView member_study(HttpServletRequest request, ModelAndView mav) {
		
		HttpSession session = request.getSession();
		MemberVO membervo = (MemberVO) session.getAttribute("loginuser");
		
		List<StudyVO> study_num = service.member_study(membervo);  
		
		mav.addObject("studyList", study_num);  
		
		mav.setViewName("myPage/member.tiles1");
		
		return mav;  
	}


	
	//////////////////////////////////////// 리더 ///////////////////////////////////////	
		
	// 스터디별 수강생 조회(db 테이블 수정 필요)
	@RequestMapping(value="/myPage_leader_student.st")
	public ModelAndView myPage_leader_student(HttpServletRequest request, ModelAndView mav) {
		
		HttpSession session = request.getSession();
		MemberVO membervo = (MemberVO) session.getAttribute("loginuser");
		
		String study_num = request.getParameter("study_num");
		
		List<PaymentVO> studentList = service.myPage_leader_student(study_num);  
		
		mav.addObject("studentList", studentList);  
		
		mav.setViewName("myPage/leader.tiles1");
		
		return mav;  
	}
				
	
	// 리더 스터디 목록  
	@RequestMapping(value="/leader_study.st")
	public ModelAndView leader_study(HttpServletRequest request, ModelAndView mav) {
		
		HttpSession session = request.getSession();
		MemberVO membervo = (MemberVO) session.getAttribute("loginuser");
		
		List<StudyVO> studyList = service.leader_study(membervo);  
		
		mav.addObject("studyList", studyList);  
		
		mav.setViewName("myPage/leader.tiles1");
		
		return mav;  
	}
	
	
	
    //////////////////////////////////// 공유 : 회원 정보  ///////////////////////////////////
		
	// 회원정보수정	
	@RequestMapping(value="/member_edit.st", method= {RequestMethod.POST})
	public ModelAndView member_edit(HttpServletRequest request, ModelAndView mav) {
		
		HttpSession session = request.getSession();
		MemberVO membervo = (MemberVO) session.getAttribute("loginuser"); 
		
		String pwd = request.getParameter("pwd");          
		String hp = request.getParameter("hp");        

		membervo.setPwd(SHA256.encrypt(pwd));
		membervo.setHp(hp);

				
		int n = service.edit(membervo);
		
		if(n==0) {
			mav.addObject("msg", "회원정보를 수정하기 못했습니다.");
		}
		else {
			mav.addObject("msg", "회원정보를 수정하였습니다.");
		}
		
		mav.addObject("loc", "/studytrip/myPage_member.st");
		mav.setViewName("msg");
	
		return mav;
	}

	
	// 리더정보수정	
	@RequestMapping(value="/leader_edit.st", method= {RequestMethod.POST})
	public ModelAndView leader_edit(HttpServletRequest request, ModelAndView mav) {
		
		HttpSession session = request.getSession();
		MemberVO membervo = (MemberVO) session.getAttribute("loginuser"); 
		
		String pwd = request.getParameter("pwd");          
		String hp = request.getParameter("hp");        

		membervo.setPwd(SHA256.encrypt(pwd));
		membervo.setHp(hp);
				
		int n = service.edit(membervo);
		
		if(n==0) {
			mav.addObject("msg", "회원정보를 수정하기 못했습니다.");
		}
		else {
			mav.addObject("msg", "회원정보를 수정하였습니다.");
		}
		
		mav.addObject("loc", "/studytrip/myPage_leader.st");
		mav.setViewName("msg");
	
		return mav;
	}
	
	
	 // 회원탈퇴
	 @RequestMapping(value="/myPage_del.st")
	 public ModelAndView myPage_del(HttpServletRequest request, ModelAndView mav) {
			
		mav.setViewName("myPage/del.tiles1");
	
		return mav;
	}
	
	
	@RequestMapping(value="/myPage_delEnd.st")
	public ModelAndView myPage_delEnd(HttpServletRequest request, ModelAndView mav) {
		
		HttpSession session = request.getSession();
		MemberVO membervo = (MemberVO) session.getAttribute("loginuser");
				
		String pwd = request.getParameter("pwd");
		
		membervo.setPwd(SHA256.encrypt(pwd));
	    
		int n = service.del(membervo);  
		
		if(n == 0) {
			 mav.addObject("msg", "암호가 일치하지 않아 회원탈퇴가 불가합니다.");
			 mav.addObject("loc", "javascript:history.back()");
		}
		else {
			mav.addObject("msg", "회원탈퇴가 되었습니다.");
			session.invalidate();
			mav.addObject("loc", "/studytrip/main.st"); 
		}
		
		mav.setViewName("msg");
	
		return mav;
	}

	
}