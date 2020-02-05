package com.spring.service;

import com.spring.model.MemberVO;

public interface InterRegisterService {

	int register_member(MemberVO mvo);

	int register_leader(MemberVO mvo);

	boolean isEmailExist(String email);

}