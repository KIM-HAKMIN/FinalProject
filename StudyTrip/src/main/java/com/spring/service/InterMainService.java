package com.spring.service;

import java.util.HashMap;

import com.spring.model.MemberVO;

public interface InterMainService {

	String getToday();

	MemberVO getLoginMember(HashMap<String, String> paraMap);


}
