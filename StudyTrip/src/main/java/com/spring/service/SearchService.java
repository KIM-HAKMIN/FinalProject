package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.model.InterSearchDAO;
import com.spring.model.StudyVO;

@Service
public class SearchService implements InterSearchService {

	@Autowired   // Type에 따라 알아서 Bean 을 주입해준다.
	private InterSearchDAO dao;
	
	@Override
	public List<StudyVO> getStudyListAll() {
		List<StudyVO> stvo =dao.getgetStudyListAll();
		
		return stvo;
	}

}
