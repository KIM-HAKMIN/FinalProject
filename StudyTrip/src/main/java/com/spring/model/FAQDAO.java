package com.spring.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FAQDAO implements InterFAQDAO {

	@Autowired   
	private SqlSessionTemplate sqlsession;
	
	
	@Override
	public FAQVO getView(String seq) {
		FAQVO boardvo = sqlsession.selectOne("board.getView", seq);
		return boardvo;
	}

	@Override
	public int getTotalCountWithNOsearch() {
		int count = sqlsession.selectOne("board.getTotalCountWithNOsearch");
		return count;
	}	

	@Override
	public List<FAQVO> boardListWithPaging(HashMap<String, String> paraMap) {
		List<FAQVO> boardList = sqlsession.selectList("board.boardListWithPaging", paraMap);
		return boardList;
	}

	@Override
	public int add(FAQVO boardvo) {
		int n = sqlsession.insert("board.add", boardvo);
		return n;
	}

	@Override
	public boolean checkPW(FAQVO boardvo) {
		int n = sqlsession.selectOne("board.checkPW", boardvo); 
		
		if(n==1)
			return true;
		else
			return false;
	}

	@Override
	public int deleteBoard(FAQVO boardvo) {
		int n = sqlsession.delete("board.deleteBoard", boardvo);  
		return n;
	}

	@Override
	public int updateBoard(FAQVO boardvo) {
		int n = sqlsession.update("board.updateBoard", boardvo);
		return n;
	}

}