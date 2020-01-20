package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service.InterMainService;

@Controller
public class FAQController {

	@Autowired  
	private InterMainService service;
	
	@RequestMapping(value="/FAQ_view.st")
	public ModelAndView FAQ_view(ModelAndView mav) {
		
		mav.setViewName("FAQ/view.tiles1");
		
		return mav;
	}
	
	@RequestMapping(value="/FAQ_list.st")
	public ModelAndView FAQ_list(ModelAndView mav) {

		mav.setViewName("FAQ/list.tiles1");
	
		return mav;
	}
	
	@RequestMapping(value="/FAQ_add.st")
	public ModelAndView FAQ_add(ModelAndView mav) {

		mav.setViewName("FAQ/add.tiles1");
	
		return mav;
	}
	
	@RequestMapping(value="/FAQ_addEnd.st")
	public ModelAndView FAQ_addEnd(ModelAndView mav) {

		mav.setViewName("FAQ/addEnd.tiles1");
	
		return mav;
	}
	
	@RequestMapping(value="/FAQ_del.st")
	public ModelAndView FAQ_del(ModelAndView mav) {

		mav.setViewName("FAQ/del.tiles1");
	
		return mav;
	}
	
	@RequestMapping(value="/FAQ_edit.st")
	public ModelAndView FAQ_edit(ModelAndView mav) {

		mav.setViewName("FAQ/edit.tiles1");
	
		return mav;
	}
	
}
