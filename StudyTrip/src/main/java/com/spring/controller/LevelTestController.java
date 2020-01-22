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
	
	@RequestMapping(value="/leveltest.st")
	public ModelAndView Test(ModelAndView mav, HttpServletRequest request) {
		
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat format2 = new SimpleDateFormat ( "yyyy년 MM월dd일 HH시mm분ss초");
				
		Calendar time = Calendar.getInstance();
		       
		String format_time1 = format1.format(time.getTime());
		String format_time2 = format2.format(time.getTime());
		        
	//	System.out.println(format_time1);
		
		
		
		mav.setViewName("leveltest/leveltest.tiles2");
		
		
		
		return mav;
	}
	
	@RequestMapping(value="/leveltestform.st")
	public ModelAndView Test2(ModelAndView mav) {
		
		mav.setViewName("leveltest/leveltestform.tiles2");	
		
		return mav;
	}
	
	@RequestMapping(value="/thema.st")
	public ModelAndView Test3(ModelAndView mav) {
		
		mav.setViewName("thema/thema.tiles1");
		
		
		return mav;
	}
	
	@RequestMapping(value="/themaform.st")
	public ModelAndView Test4(ModelAndView mav) {
		
		mav.setViewName("thema/themaform");
		
		
		return mav;
	}
	
	@RequestMapping(value="/themasearch.st")
	public ModelAndView Test5(ModelAndView mav) {
		
		mav.setViewName("thema/themasearch");
		
		
		return mav;
	}
	
}
