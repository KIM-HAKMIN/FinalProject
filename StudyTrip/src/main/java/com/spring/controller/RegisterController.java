package com.spring.controller;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.common.SHA256;
import com.spring.mail.GoogleMail;
import com.spring.model.MemberVO;
import com.spring.service.InterRegisterService;

@Controller
public class RegisterController {

	@Autowired  
	private InterRegisterService service;
	
	@Autowired
	private GoogleMail mail;
	
	
<<<<<<< HEAD
	@RequestMapping(value="/register_member.st", method= {RequestMethod.POST ,RequestMethod.GET})
=======
	@RequestMapping(value="/register_member.st", method= {RequestMethod.POST, RequestMethod.GET})
>>>>>>> branch 'master' of https://github.com/KIM-HAKMIN/FinalProject.git
	public ModelAndView register_member(ModelAndView mav, HttpServletRequest request) {	
	
		mav.setViewName("register/member.tiles2");
	
		return mav;
	}
	
<<<<<<< HEAD
	@RequestMapping(value="/register_leader.st", method= {RequestMethod.POST,RequestMethod.GET})
=======
	@RequestMapping(value="/register_leader.st", method= {RequestMethod.POST, RequestMethod.GET})
>>>>>>> branch 'master' of https://github.com/KIM-HAKMIN/FinalProject.git
	public ModelAndView register_leader(ModelAndView mav) {
		
		mav.setViewName("register/leader.tiles2");

		return mav;
	}

	
<<<<<<< HEAD
	@RequestMapping(value="/register_memberEnd.st", method= {RequestMethod.POST,RequestMethod.GET})
=======
	@RequestMapping(value="/register_memberEnd.st", method= {RequestMethod.POST, RequestMethod.GET})
>>>>>>> branch 'master' of https://github.com/KIM-HAKMIN/FinalProject.git
	public ModelAndView register_memberEnd(HttpServletRequest request, ModelAndView mav) {	
	
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");          
		String hp = request.getParameter("hp");
		String profile = request.getParameter("profile");       
		String route= request.getParameter("route");     
		
		MemberVO mvo = new MemberVO();  
		mvo.setName(name);  
		mvo.setUseremail(email);
		mvo.setPwd(SHA256.encrypt(pwd));
		mvo.setHp(hp);
		mvo.setProfile(profile);
		mvo.setRoute(route);
		
		int n = service.register_member(mvo);  
		
		if(n == 0) {
			mav.addObject("msg", "회원가입 실패!");
		}
		else {
			mav.addObject("msg", "회원이 되신걸 축하드립니다!");
		}
		
		mav.addObject("loc", request.getContextPath()+"/main.st"); 
		mav.setViewName("msg");
	
		return mav;
	}
	
	
<<<<<<< HEAD
	@RequestMapping(value="/register_leaderEnd.st", method= {RequestMethod.POST,RequestMethod.GET})
=======
	@RequestMapping(value="/register_leaderEnd.st", method= {RequestMethod.POST, RequestMethod.GET})
>>>>>>> branch 'master' of https://github.com/KIM-HAKMIN/FinalProject.git
	public ModelAndView register_leaderEnd(HttpServletRequest request, ModelAndView mav) {	
	
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");          
		String hp = request.getParameter("hp");
		String profile= request.getParameter("profile");     
		String qualifi = request.getParameter("qualifi");       
		
		MemberVO mvo = new MemberVO();  
		mvo.setName(name);  
		mvo.setUseremail(email);
		mvo.setPwd(SHA256.encrypt(pwd));
		mvo.setHp(hp);
		mvo.setProfile(profile);
		mvo.setQualifi(qualifi);
		
		int n = service.register_leader(mvo);  
		
		if(n == 0) {
			 mav.addObject("msg", "회원가입 실패!");
		}
		else {
			mav.addObject("msg", "리더가 되신걸 축하드립니다!");
		}
		
		mav.addObject("loc", request.getContextPath()+"/main.st"); 
		mav.setViewName("msg");
	
		return mav;
	}
	
	
	
	// ===== 이메일 중복검사 ===== //
	@ResponseBody
	@RequestMapping(value="/emailExist.st", produces="text/plain;charset=UTF-8", method= {RequestMethod.POST, RequestMethod.GET})
	public String emailExist(HttpServletRequest request) {
	String email = request.getParameter("email");

		boolean isEmailExist = service.isEmailExist(email);
						
		JSONObject jsObj = new JSONObject();  
		
		jsObj.put("isEmailExist", isEmailExist);

		return jsObj.toString();
	}
	
	
	
	// ====== 인증메일 보내기 ====== //
<<<<<<< HEAD
	@RequestMapping(value="/emailSend.st", method={RequestMethod.POST,RequestMethod.GET} ) 
=======
	@RequestMapping(value="/emailSend.st", method= {RequestMethod.POST, RequestMethod.GET}) 
>>>>>>> branch 'master' of https://github.com/KIM-HAKMIN/FinalProject.git
	public String emailSend(HttpServletRequest request) throws Throwable {

	    String emailAddress = request.getParameter("email");
		
		StringBuilder sb = new StringBuilder(); 
		int randomNo = new Random().nextInt(900000) + 100000;
	   	sb.append(randomNo);	   	
	   	String emailContents = sb.toString();
	   	
	   	mail.emailSend(emailAddress, emailContents);
		
	   	return "";	   
	}
	

}
