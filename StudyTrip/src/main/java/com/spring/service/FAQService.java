package com.spring.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.model.FAQVO;
import com.spring.model.InterFAQDAO;

@Service
public class FAQService implements InterFAQService {

	@Autowired  
	private InterFAQDAO dao;
	
	
	@Override
	public FAQVO getViewWithNoAddCount(String seq) {
		FAQVO boardvo = dao.getView(seq);
		return boardvo;
	}

	@Override
	public int getTotalCountWithNOsearch() {
		int count = dao.getTotalCountWithNOsearch();
		return count;
	}

	@Override
	public List<FAQVO> boardListWithPaging(HashMap<String, String> paraMap) {
		List<FAQVO> boardList = dao.boardListWithPaging(paraMap);
		return boardList;
	}

	@Override
	public int add(FAQVO boardvo) {
		int n = dao.add(boardvo);	
		return n;
	}

	@Override
	public int del(FAQVO boardvo) {
		boolean bool = dao.checkPW(boardvo);
		
		if(!bool) {
			return 0;
		}
		else {
			int n = dao.deleteBoard(boardvo);
			return n;  
		}	
	}

	@Override
	public int edit(FAQVO boardvo) {
		boolean bool = dao.checkPW(boardvo);
		
		if(!bool) 
			return 0;
		else {
			int n = dao.updateBoard(boardvo);
			return n;
		}
	}

}
