package com.spring.model;

import java.util.HashMap;

public interface InterMainDAO {

	String getToday();

	MemberVO getLoginMember(HashMap<String, String> paraMap);

	void setLastLoginDate(HashMap<String, String> paraMap);

}
