package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service.InterMainService;

@Controller
public class MyPageController {

	@Autowired  
	private InterMainService service;
	
	@RequestMapping(value="/myPage_member.st")
	public ModelAndView myPage_member(ModelAndView mav) {

		mav.setViewName("myPage/member.tiles1");
	
		return mav;
	}
	
	@RequestMapping(value="/myPage_leader.st")
	public ModelAndView myPage_leader(ModelAndView mav) {
		
		mav.setViewName("myPage/leader.tiles1");

		return mav;
	}

	
}