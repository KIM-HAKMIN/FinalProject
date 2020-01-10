package com.spring.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.main.service.InterMainService;


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

	
}
