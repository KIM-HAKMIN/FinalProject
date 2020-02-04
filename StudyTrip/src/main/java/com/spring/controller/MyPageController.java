package com.spring.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.common.SHA256;
import com.spring.model.CouponVO;
import com.spring.model.FAQVO;
import com.spring.model.MemberVO;
import com.spring.model.PaymentVO;
import com.spring.model.WishListVO;
import com.spring.service.InterMyPageService;

@Controller
public class MyPageController {

	@Autowired  
	private InterMyPageService service;
	
	
	@RequestMapping(value="/myPage_member.st")
	public ModelAndView myPage_member(HttpServletRequest request, ModelAndView mav) {

		String email = request.getParameter("email");
		
//		MemberVO membervo = service.getMembers(email);
		
//		mav.addObject("membervo", membervo);
		
		mav.setViewName("myPage/member.tiles1");
	
		return mav;
	}
	
	
	@RequestMapping(value="/myPage_leader.st")
	public ModelAndView myPage_leader(HttpServletRequest request, ModelAndView mav) {
		
		String email = request.getParameter("email");
		
//		MemberVO membervo = service.getMembers(email);
		
//		mav.addObject("membervo", membervo);
		
		mav.setViewName("myPage/leader.tiles1");

		return mav;
	}
	
	
	///////////////////////////////////////////////////////////////////////////////////		
	
/*	
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
*/	


	///////////////////////////////////////////////////////////////////////////////////	
	
	
/*	
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
*/	

	
	
	///////////////////////////////////////////////////////////////////////////////////	
	
	
	// 공통 : 스터디 목록  
	
	
	///////////////////////////////////////////////////////////////////////////////////	
	
	
/*	
	// 회원정보수정	
	@RequestMapping(value="/member_edit.st",  method= {RequestMethod.POST})
	public ModelAndView member_edit(MultipartHttpServletRequest mrequest, ModelAndView mav, MemberVO membervo) {
		
		MultipartFile attach = mvo.getAttach();	
		if( !attach.isEmpty() ) { 
			
			HttpSession session = mrequest.getSession();
		 	String root = session.getServletContext().getRealPath("/");
		 	String path = root + "resources" + File.separator + "files";
	
		  	String profile = "";
		 		 	
		 	byte[] bytes = null;
		 	
		 	try {
				bytes = attach.getBytes();
								
				profile = fileManager.doFileUpload(bytes, attach.getOriginalFilename(), path);

				mvo.setProfile(profile);			
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}

		String pwd = mrequest.getParameter("pwd");          
		String hp = mrequest.getParameter("hp");        

		membervo.setPwd(SHA256.encrypt(pwd));
		membervo.setHp(hp);

				
		int n = service.edit(membervo);
		
		if(n==0) {
			mav.addObject("msg", "암호가 일치하지 않아 회원정보 수정이 불가합니다.");
		}
		else {
			mav.addObject("msg", "회원정보를 수정하였습니다.");
		}
		
		mav.addObject("loc", "/studytrip/myPage_member.st");
		mav.setViewName("msg");
	
		return mav;
	}
	
	
	
	// 리더정보수정	
	@RequestMapping(value="/leader_edit.st",  method= {RequestMethod.POST})
	public ModelAndView leader_edit(HttpServletRequest request, ModelAndView mav, MemberVO membervo) {
		
		MultipartFile attach = mvo.getAttach();	
		if( !attach.isEmpty() ) { 
			
			HttpSession session = mrequest.getSession();
		 	String root = session.getServletContext().getRealPath("/");
		 	String path = root + "resources" + File.separator + "files";
	
		  	String profile = "";
		 		 	
		 	byte[] bytes = null;
		 	
		 	try {
				bytes = attach.getBytes();
								
				profile = fileManager.doFileUpload(bytes, attach.getOriginalFilename(), path);

				mvo.setProfile(profile);			
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}

		String pwd = mrequest.getParameter("pwd");          
		String hp = mrequest.getParameter("hp");        

		membervo.setPwd(SHA256.encrypt(pwd));
		membervo.setHp(hp);
		
		
		int n = service.edit(membervo);
		
		if(n==0) {
			mav.addObject("msg", "암호가 일치하지 않아 회원정보 수정이 불가합니다.");
		}
		else {
			mav.addObject("msg", "회원정보를 수정하였습니다.");
		}
		
		mav.addObject("loc", "/studytrip/myPage_leader.st");
		mav.setViewName("msg");
	
		return mav;
	}
	
	
	

	
	// 공통 : 회원탈퇴
	 @RequestMapping(value="/myPage_del.st",  method= {RequestMethod.POST})
	 public ModelAndView myPage_del(HttpServletRequest request, ModelAndView mav) {

		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		MemberVO membervo = new MemberVO();
		membervo.setUseremail(email);
		membervo.setPwd(pwd);
		
		mav.addObject("email", email);
		
		mav.setViewName("myPage/del.tiles1");
	
		return mav;
	}
	
	
	@RequestMapping(value="/myPage_delEnd.st",  method= {RequestMethod.POST})
	public ModelAndView myPage_delEnd(HttpServletRequest request, ModelAndView mav) {

		String email = request.getParameter("email");
		
		MemberVO membervo = new MemberVO();
		membervo.setUseremail(email);
		
		int n = service.del(membervo);  
		
		if(n == 0) {
			 mav.addObject("msg", "암호가 일치하지 않아 회원탈퇴가 불가합니다.");
		}
		else {
			mav.addObject("msg", "회원탈퇴가 되었습니다.");
		}
		
		mav.addObject("loc", "/studytrip/main.st"); 
		mav.setViewName("msg");
	
		return mav;
	}
	 
*/	
	
	
	
	
	
	
	

	
	
}