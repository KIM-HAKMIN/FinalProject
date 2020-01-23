package com.spring.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SearchDAO implements InterSearchDAO {

	@Autowired
	private SqlSessionTemplate sqlsession;	
	
	@Override
	public List<StudyVO> getgetStudyListAll() {
		System.out.println("여기까지왔습니다");
		return null;
	}

}
