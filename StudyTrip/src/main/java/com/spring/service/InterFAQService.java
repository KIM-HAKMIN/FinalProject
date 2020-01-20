package com.spring.service;

import java.util.HashMap;
import java.util.List;

import com.spring.model.FAQVO;

public interface InterFAQService {

	FAQVO getViewWithNoAddCount(String seq);

	int getTotalCountWithNOsearch();

	List<FAQVO> boardListWithPaging(HashMap<String, String> paraMap);

	int add(FAQVO boardvo);

	int del(FAQVO boardvo);

	int edit(FAQVO boardvo);

}
