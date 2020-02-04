package com.spring.model;

import java.util.HashMap;
import java.util.List;

public interface InterSearchDAO {

	List<StudyVO> getStudyListAll();		// 모든스터디를 조회해준다.

	List<StudyVO> getStudySearchListAll(HashMap<String, Object> paraMap);	// 검색조건에 따른 스터디를 조회해준다.

	String getStudy_num();	// 스터디번호를 채번해온다

	int addStudy(HashMap<String, String> studyMap);	// 스터디를 등록시켜준다.

	int addStudyimage(HashMap<String, String> paraMap); // 스터시 이미지를 저장시켜준다.

	StudyVO searchDetail(String study_num);	// 해당스터디의 상세페이지 정보를 가져온다.

	int addTitleimage(HashMap<String, String> paraMap); // 스터디테이블에 타이틀 이미지를 추가해준다.

	List<HashMap<String, String>> searchDetailImg(String study_num);		// 스터디 디테일의 캐러셀 이미지를 가져온다.

}
