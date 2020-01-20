package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service.InterMainService;

@Controller
public class RegisterController {

	@Autowired  
	private InterMainService service;
	
	@RequestMapping(value="/register_member.st")
	public ModelAndView register_member(ModelAndView mav) {

		mav.setViewName("register/member.tiles2");
	
		return mav;
	}
	
	@RequestMapping(value="/register_leader.st")
	public ModelAndView register_leader(ModelAndView mav) {
		
		mav.setViewName("register/leader.tiles2");

		return mav;
	}

	
}
