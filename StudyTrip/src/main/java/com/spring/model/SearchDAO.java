package com.spring.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SearchDAO implements InterSearchDAO {

	@Autowired
	private SqlSessionTemplate sqlsession;	
	
	@Override
	public List<StudyVO> getStudyListAll() {
		List<StudyVO> stvo = sqlsession.selectList("search.getStudyListAll");
		return stvo;
	}

	@Override
	public List<StudyVO> getStudySearchListAll(HashMap<String, Object> paraMap) {
		//List<StudyVO> stvo =sqlsession.selectList("search.getStudySearchListAll", paraMap);
		return null;
	}

	@Override
	public String getStudy_num() {
		String study_num = sqlsession.selectOne("search.getStudy_num");
		return study_num;
	}

	@Override
	public int addStudy(HashMap<String, String> studyMap) {
		int n = sqlsession.insert("search.addStudy", studyMap);
		return n;
	}

	@Override
	public int addStudyimage(HashMap<String, String> paraMap) {
		int n = sqlsession.insert("search.addStudyimage", paraMap);
		return n;
	}
	
	@Override
	public int addTitleimage(HashMap<String, String> paraMap) {
		int n = sqlsession.update("search.addTitleimage", paraMap);
		return n;
	}	
	

	@Override
	public StudyVO searchDetail(String study_num) {
		StudyVO stvo = sqlsession.selectOne("search.searchDetail", study_num);
		return stvo;
	}

	@Override
	public List<HashMap<String, String>> searchDetailImg(String study_num) {
		List<HashMap<String, String>> viewStudyImageList = sqlsession.selectList("search.searchDetailImg", study_num);
		
		return viewStudyImageList;
	}






}


