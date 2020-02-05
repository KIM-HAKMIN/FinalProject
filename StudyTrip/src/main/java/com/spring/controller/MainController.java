package com.spring.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.common.SHA256;
import com.spring.model.MemberVO;
import com.spring.service.InterMainService;


@Controller
public class MainController {

	@Autowired   // Type에 따라 알아서 Bean 을 주입해준다.
	private InterMainService service;
	
	@RequestMapping(value="/main.st")
	public ModelAndView Test(ModelAndView mav) {
		
		String date = service.getToday();
		
		mav.addObject("date",date);
		mav.setViewName("main/mainTest.tiles1");
		
		
		return mav;
	}

	@RequestMapping(value="/login.st")
	public ModelAndView Login(ModelAndView mav) {

		mav.setViewName("login/login.tiles1");
		
		
		return mav;
	}
	
	
//	=== #41. 로그인 폼 페이지 요청 ===
		@RequestMapping(value="/loginEnd.st",method= {RequestMethod.POST})
		public ModelAndView loginEnd(HttpServletRequest request, ModelAndView mav) {
			
			String userid = request.getParameter("userid");
			String pwd = request.getParameter("pwd");
			
			HashMap<String, String> paraMap = new HashMap<String, String>(); 
		    paraMap.put("userid", userid);
		//    paraMap.put("pwd", pwd);
		    paraMap.put("pwd", SHA256.encrypt(pwd));
		      
		    MemberVO loginuser = service.getLoginMember(paraMap);
		    /////////////////////////////////////////////////////
		      
		      HttpSession session = request.getSession();
		      
		      if(loginuser == null) {
		         String msg = "아이디 또는 암호가 틀립니다.";
		         String loc = "javascript:history.back()";
		         
		         mav.addObject("msg", msg);
		         mav.addObject("loc", loc);
		         
		         mav.setViewName("msg");
		         //  /Board/src/main/webapp/WEB-INF/views/msg.jsp 파일을 생성한다.
		      }
		      else {
		         
		         if(loginuser.isIdleStatus() == true) {
		            // 로그인을 한지 1년이 지나서 휴면상태로 빠진 경우
		            String msg = "로그인을 한지 1년이 지나서 휴면상태로 빠졌습니다. 관리자에게 문의 바랍니다.";
		         
		             /// 로그인을 한지 1년이 지났으면 로그인을 하지 못하도록 막아버리는 것 ///
		         //   String loc = "javascript:history.back()";
		            ////////////////////////////////////////////////////////
		            
		            ////// 로그인을 한지 1년이 지났지만 정상적으로 로그인 처리를 해주는 것 ///
		            String loc = "/studytrip/main.st";
		            session.setAttribute("loginuser", loginuser);
		            /////////////////////////////////////////////////////////
		            
		            mav.addObject("msg", msg);
		            mav.addObject("loc", loc);
		            
		            mav.setViewName("msg");
		         }
		         else {
		            if(loginuser.isRequirePwdChange() == true) {
		               // 암호를 최근 3개월 동안 변경하지 않은 경우
		               session.setAttribute("loginuser", loginuser);
		               
		               String msg = "암호를 최근 3개월 동안 변경하지 않으셨습니다. 암호변경을 위해 나의정보 페이지로 이동합니다."; 
		               String loc = request.getContextPath()+"/myinfo.action";
		               
		               mav.addObject("msg", msg);
		               mav.addObject("loc", loc);
		               
		               mav.setViewName("msg");
		            }
		            else {
		               // 아무런 이상없이 로그인 하는 경우
		               session.setAttribute("loginuser", loginuser);
		               
		               if(session.getAttribute("gobackURL") != null) {
		                  // 세션에 저장된 돌아갈 페이지의 주소(gobackURL)이 있다라면
		                  
		                  String gobackURL = (String) session.getAttribute("gobackURL");
		                  mav.addObject("gobackURL", gobackURL); // request 영역에 저장시키는 것이다.
		                  
		                  session.removeAttribute("gobackURL");
		               }
		               
		               mav.setViewName("login/loginEnd.tiles1");
		               //  /Board/src/main/webapp/WEB-INF/views/tiles1/login/loginEnd.jsp 파일을 생성한다.
		            }
		         }
		         
		      }
		      
		      return mav;
		}
		
//		=== #50. 로그아웃  요청 ===
		@RequestMapping(value="/logout.st")
		public ModelAndView logout(HttpServletRequest request, ModelAndView mav) {
			
			HttpSession session = request.getSession();
			session.invalidate();
			
			String msg = "로그아웃 되었습니다."; 
			String loc = request.getContextPath()+"/main.st";
               
            mav.addObject("msg", msg);
            mav.addObject("loc", loc);
			
            mav.setViewName("msg");
			
			return mav;
		}
		
	
	@RequestMapping(value="/payment.st")
	public ModelAndView payment(ModelAndView mav) {

		mav.setViewName("main/payment.tiles1");
		
		
		return mav;
	}
	
	
	
}
