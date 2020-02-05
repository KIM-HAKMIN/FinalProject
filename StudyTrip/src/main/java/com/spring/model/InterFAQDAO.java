package com.spring.model;

import java.util.HashMap;
import java.util.List;

public interface InterFAQDAO {

	FAQVO getView(String seq);

	int getTotalCountWithNOsearch();

	List<FAQVO> boardListWithPaging(HashMap<String, String> paraMap);

	int add(FAQVO boardvo);

	boolean checkPW(FAQVO boardvo);

	int deleteBoard(FAQVO boardvo);

	int updateBoard(FAQVO boardvo);

}