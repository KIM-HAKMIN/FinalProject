package com.spring.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainDAO implements InterMainDAO {

	@Autowired   // Type에 따라 알아서 Bean 을 주입해준다.
	private SqlSessionTemplate sqlsession;
	
	
	
	@Override
	public String getToday() {

		String today = sqlsession.selectOne("main.getToday");
		
		return today;
	}

}
