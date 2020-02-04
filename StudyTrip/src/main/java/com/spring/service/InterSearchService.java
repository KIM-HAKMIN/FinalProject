package com.spring.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.model.StudyVO;

public interface InterSearchService {

	List<StudyVO> getStudyListAll();	// 모든 스터디 목록을 보여준다

	List<StudyVO> getStudySearchListAll(HashMap<String, Object> paraMap); // 조건이 있는 스터디 목록을 보여준다

	String getStudy_num(); // 스터디 번호를 채번한다

	int addStudy(HashMap<String, String> studyMap); // 스터디를 등록시켜 준다

	int addStudyimage(HashMap<String, String> paraMap); // 스터디 이미지 사진을 등록시켜준다

	StudyVO searchDetail(String study_num); // 한개의 스터디의 상세페이지 정보를 가져온다

	int addTitleimage(HashMap<String, String> paraMap); // 스터디에 타이틀 사진을 등록해준다

	List<HashMap<String, String>> searchDetailImg(String study_num);		// 스터디 캐러셀 사진 주소를 가져온다
	
	
	
}
