package com.spring.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service.InterMainService;

@Controller
public class LevelTestController {
	
	@Autowired   // Type에 따라 알아서 Bean 을 주입해준다.
	private InterMainService service;
	
	@RequestMapping(value="/levelteststart.st")
	public ModelAndView Test1_1(ModelAndView mav, HttpServletRequest request) {
		
		
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");				
		Calendar time = Calendar.getInstance();		       
		String format_time1 = format1.format(time.getTime());		        		
		mav.addObject("format_time1",format_time1);			
		
		mav.setViewName("leveltest/leveltest.tiles2");	
		return mav;
	}
	
	
	@RequestMapping(value="/leveltest.st")
	public ModelAndView Test(ModelAndView mav, HttpServletRequest request) {
		
		//실시간
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");				
		Calendar time = Calendar.getInstance();		       
		String format_time1 = format1.format(time.getTime());		        		
		mav.addObject("format_time1",format_time1);		
		
		//다른뷰단으로 이름넘기기
		String name_sub = request.getParameter("name");
		mav.addObject("name_sub",name_sub);
	//  이름확인용
	//	System.out.println("name_sub:"+name_sub);
		
		mav.setViewName("leveltest/leveltestform.tiles2");						
		
		return mav;
	}
	
	@RequestMapping(value="/leveltestform.st")
	public ModelAndView Test2(ModelAndView mav) {
		
		//실시간
		SimpleDateFormat format2 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");				
		Calendar time = Calendar.getInstance();		       
		String format_time2 = format2.format(time.getTime());		        		
		mav.addObject("format_time2",format_time2);	
		
	//	mav.setViewName("leveltest/leveltestform.tiles2");	
		
		return mav;
	}
	
	@RequestMapping(value="/leveltestend.st")
	public ModelAndView Test3(ModelAndView mav) {
		
		mav.setViewName("leveltest/leveltestend.tiles1");	
		
		return mav;
	}
	
}
