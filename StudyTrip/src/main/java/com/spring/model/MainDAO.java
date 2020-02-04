package com.spring.model;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.MemberVO;

@Repository
public class MainDAO implements InterMainDAO {

	@Autowired   // Type에 따라 알아서 Bean 을 주입해준다.
	private SqlSessionTemplate sqlsession;
	
	
	
	@Override
	public String getToday() {

		String today = sqlsession.selectOne("main.getToday");
		
		return today;
	}



	@Override
	public MemberVO getLoginMember(HashMap<String, String> paraMap) {
		MemberVO loginuser = sqlsession.selectOne("main.getLoginMember", paraMap);
		return loginuser;
	}



	@Override
	public void setLastLoginDate(HashMap<String, String> paraMap) {
		sqlsession.update("main.setLastLoginDate",paraMap);
		
	}

}
