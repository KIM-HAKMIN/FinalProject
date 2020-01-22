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
public class themaController {	
		
	@Autowired   // Type에 따라 알아서 Bean 을 주입해준다.
	private InterMainService service;
	
	
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
	
	@RequestMapping(value="/themasearchend.st")
	public ModelAndView Test6(ModelAndView mav) {
		
		mav.setViewName("thema/themasearchend");
		
		
		return mav;
	}
	
	@RequestMapping(value="/themasearchcheck.st")
	public ModelAndView Test7(ModelAndView mav) {
		
		mav.setViewName("thema/themasearchcheck");
		
		
		return mav;
	}
}
