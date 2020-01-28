package com.spring.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.StudyVO;
import com.spring.service.InterSearchService;


@Controller
public class SearchController {

	@Autowired   // Type에 따라 알아서 Bean 을 주입해준다.
	private InterSearchService service;
	
	@RequestMapping(value="/search.st")
	public ModelAndView search(ModelAndView mav, HttpServletRequest request) {
		
		String area = request.getParameter("area");
		String level = request.getParameter("level");
		String day = request.getParameter("day");
		
		HashMap<String, String> paraMap = null;
		List<StudyVO> stvo= new ArrayList<StudyVO>();

		
		if(area!=null&&level!=null&&day!=null) {
			
			paraMap= new HashMap<String, String>();
			
			paraMap.put("area", area);
			paraMap.put("level", level);
			paraMap.put("day", day);
			
		} 
		
		else{

			stvo = service.getStudyListAll();	// 모든 스터디목록을 보여줍니다.	
			
		}
		
		
		
		System.out.println("장소는: " + area);
		System.out.println("레벨은: " + level);
		System.out.println("주말유무는: " + day);
		
		mav.setViewName("search/searchPage.tiles1");
		
		
		return mav;
	}
	
	@RequestMapping(value="/studyDetail.st")
	public ModelAndView searchDetail(ModelAndView mav, HttpServletRequest request) {
		
		String study_num = request.getParameter("study_num");
		
		System.out.println("study_num : "+study_num);
		
		
		mav.setViewName("search/studyDetail.tiles1");
		
		
		return mav;
	}

	@RequestMapping(value="/studyRegister.st")
	public ModelAndView studyRegister(ModelAndView mav) {
		
		
		mav.setViewName("search/studyRegister.tiles1");
		
		
		return mav;
	}	

	@RequestMapping(value="/studyEdit.st")
	public ModelAndView studyEdit(ModelAndView mav) {
		
		
		mav.setViewName("search/studyEdit.tiles1");
		
		
		return mav;
	}	

	
}
