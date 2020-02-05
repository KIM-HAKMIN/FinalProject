package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.model.InterRegisterDAO;
import com.spring.model.MemberVO;

@Service
public class RegisterService implements InterRegisterService {

	@Autowired  
	private InterRegisterDAO dao;
	
	
	@Override
	public int register_member(MemberVO mvo) {
		int n = dao.register_member(mvo);
		return n;
	}

	@Override
	public int register_leader(MemberVO mvo) {
		int n = dao.register_leader(mvo);
		return n;
	}

	@Override
	public boolean isEmailExist(String email) {
		boolean isEmailExist = dao.isEmailExist(email);
		return isEmailExist;
	}

}