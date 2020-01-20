package com.spring.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.common.AES256;
import com.spring.model.BoardVO;
import com.spring.model.InterFAQDAO;

@Service
public class FAQService implements InterFAQService {

	@Autowired  
	private InterFAQDAO dao;
	
	@Autowired   
	private AES256 aes;
	
	
	@Override
	public BoardVO getViewWithNoAddCount(String seq) {
		BoardVO boardvo = dao.getView(seq);
		return boardvo;
	}

	@Override
	public int getTotalCountWithNOsearch() {
		int count = dao.getTotalCountWithNOsearch();
		return count;
	}

	@Override
	public List<BoardVO> boardListWithPaging(HashMap<String, String> paraMap) {
		List<BoardVO> boardList = dao.boardListWithPaging(paraMap);
		return boardList;
	}

	@Override
	public int add(BoardVO boardvo) {
		int n = dao.add(boardvo);	
		return n;
	}

	@Override
	public int del(BoardVO boardvo) {
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
	public int edit(BoardVO boardvo) {
		boolean bool = dao.checkPW(boardvo);
		
		if(!bool) 
			return 0;
		else {
			int n = dao.updateBoard(boardvo);
			return n;
		}
	}

}
