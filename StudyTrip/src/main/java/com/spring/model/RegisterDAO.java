package com.spring.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RegisterDAO implements InterRegisterDAO {

	@Autowired   
	private SqlSessionTemplate sqlsession;
	
	
	@Override
	public int register_member(MemberVO mvo) { 
		int n = sqlsession.insert("member.register_member", mvo);
		return n;
	}

	@Override
	public int register_leader(MemberVO mvo) {
		int n = sqlsession.insert("member.register_leader", mvo);
		return n;
	}

	@Override
	public boolean isEmailExist(String email) {
		int n = sqlsession.selectOne("member.isEmailExist", email); 
		
		if(n==1)
			return true;
		else
			return false;
	}
	
	
}
