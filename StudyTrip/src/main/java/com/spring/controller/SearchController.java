package com.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service.InterMainService;


@Controller
public class SearchController {

	@Autowired   // Type에 따라 알아서 Bean 을 주입해준다.
	private InterMainService service;
	
	@RequestMapping(value="/search.st")
	public ModelAndView search(ModelAndView mav) {
		
		
		mav.setViewName("search/searchPage.tiles1");
		
		
		return mav;
	}
	
	@RequestMapping(value="/studyDetail.st")
	public ModelAndView searchDetail(ModelAndView mav) {
		
		
		mav.setViewName("search/studyDetail.tiles1");
		
		
		return mav;
	}
	
	

	
}
