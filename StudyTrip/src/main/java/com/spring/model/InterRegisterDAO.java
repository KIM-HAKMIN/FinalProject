package com.spring.model;

public interface InterRegisterDAO {

	int register_member(MemberVO mvo);

	int register_leader(MemberVO mvo);

	boolean isEmailExist(String email);

}
