package com.spring.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.main.service.InterMainService;

@Controller
public class LevelTestController {
	
	@Autowired   // Type에 따라 알아서 Bean 을 주입해준다.
	private InterMainService service;
	
	@RequestMapping(value="/leveltest.st")
	public ModelAndView Test(ModelAndView mav) {
		
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
		
		mav.setViewName("thema/thema.tiles2");
		
		
		return mav;
	}
}
