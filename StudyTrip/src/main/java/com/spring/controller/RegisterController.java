package com.spring.controller;

import java.io.File;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.common.FileManager;
import com.spring.common.SHA256;
import com.spring.mail.GoogleMail;
import com.spring.model.MemberVO;
import com.spring.service.InterRegisterService;

@Controller
public class RegisterController {

	@Autowired  
	private InterRegisterService service;
	
	@Autowired
	private FileManager fileManager;
	
	@Autowired
	private GoogleMail mail;
	
	
	@RequestMapping(value="/register_member.st", method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView register_member(ModelAndView mav, HttpServletRequest request) {	
	
		mav.setViewName("register/member.tiles2");
	
		return mav;
	}
	
	@RequestMapping(value="/register_leader.st", method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView register_leader(ModelAndView mav) {
		
		mav.setViewName("register/leader.tiles2");

		return mav;
	}

	
	@RequestMapping(value="/register_memberEnd.st", method= {RequestMethod.POST})
	public String register_memberEnd(MultipartHttpServletRequest mrequest, MemberVO mvo) {	

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
		

		String name = mrequest.getParameter("name");
		String email = mrequest.getParameter("email");
		String pwd = mrequest.getParameter("pwd");          
		String hp = mrequest.getParameter("hp");    
		String route= mrequest.getParameter("route");     
		
		mvo.setName(name);  
		mvo.setUseremail(email);
		mvo.setPwd(SHA256.encrypt(pwd));
		mvo.setHp(hp);
		mvo.setRoute(route);
		
		
		int n = service.register_member(mvo); 
		
		mrequest.setAttribute("n", n);
		
		///////////////// 회원가입에 대한 축하 이메일 발송하기  ///////////////////
		if(n==1) {
			StringBuilder sb = new StringBuilder(); 
		   	sb.append("StudyTrip의 회원이 되신 것을 축하드립니다. <br/> 새로운 사람들도 만나고 영어 실력도 향상시켜 보세요~!");
		   	
		   	String emailContents = sb.toString();	   	
		 	System.out.println("~~~~~~ emailContents : " + emailContents);
		   	
		   	try {
				mail.emailSend(email, emailContents);
			} catch (Exception e) {
				e.printStackTrace();
			}	
		}
		/////////////////////////////////////////////////////////////
		
		return "msg";
	}

		
	
	@RequestMapping(value="/register_leaderEnd.st", method= {RequestMethod.POST, RequestMethod.GET})
	public String register_leaderEnd(MultipartHttpServletRequest mrequest, MemberVO mvo) {	
	
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


		String name = mrequest.getParameter("name");
		String email = mrequest.getParameter("email");
		String pwd = mrequest.getParameter("pwd");          
		String hp = mrequest.getParameter("hp");    
		String qualifi = mrequest.getParameter("qualifi");      
		
		mvo.setName(name);  
		mvo.setUseremail(email);
		mvo.setPwd(SHA256.encrypt(pwd));
		mvo.setHp(hp);
		mvo.setRoute(qualifi);
		
		
		int n = service.register_leader(mvo); 
		
		mrequest.setAttribute("n", n);
		
		///////////////// 리더가입에 대한 축하 이메일 발송하기  ///////////////////
		if(n==1) {
			StringBuilder sb = new StringBuilder(); 
		   	sb.append("StudyTrip의 리더가 되신 것을 축하드립니다. <br/> 리더로서 자신의 역량을 펼쳐주세요~!");
		   	
		   	String emailContents = sb.toString();	   	
		 	System.out.println("~~~~~~ emailContents : " + emailContents);
		   	
		   	try {
				mail.emailSend(email, emailContents);
			} catch (Exception e) {
				e.printStackTrace();
			}	
		}
		/////////////////////////////////////////////////////////////
		
		return "msg";
	}
	
	
	
	// ==== 이메일 중복검사 ==== //
/*
	@ResponseBody
	@RequestMapping(value="/emailExist.st", produces="text/plain;charset=UTF-8", method= {RequestMethod.POST})
	public String emailExist(HttpServletRequest request) {  
		String email = request.getParameter("email");

		boolean isEmailExist = service.isEmailExist(email);
						
		JSONObject jsObj = new JSONObject();  
		
		jsObj.put("isEmailExist", isEmailExist);
		
		System.out.println("jsObj.toString() : "+jsObj.toString());
           
		return jsObj.toString();
	}
*/
	@RequestMapping(value="/emailExist.st", method= {RequestMethod.POST}) 
	public String emailExist(HttpServletRequest request) {  
		String email = request.getParameter("email");

		boolean isEmailExist = service.isEmailExist(email);
						
		JSONObject jsObj = new JSONObject();  
		
		jsObj.put("isEmailExist", isEmailExist);
		
		String result = jsObj.toString();
		
	//	System.out.println(result);
		
		request.setAttribute("result", result);
           
		return "jsonResult";
	}
		
	
}