package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.model.StudyVO;

public interface InterSearchService {

	List<StudyVO> getStudyListAll();	// 모든 스터디 목록을 보여줍니다
	
}
