package com.spring.model;

import java.util.HashMap;
import java.util.List;

public interface InterFAQDAO {

	BoardVO getView(String seq);

	int getTotalCountWithNOsearch();

	List<BoardVO> boardListWithPaging(HashMap<String, String> paraMap);

	int add(BoardVO boardvo);

	boolean checkPW(BoardVO boardvo);

	int deleteBoard(BoardVO boardvo);

	int updateBoard(BoardVO boardvo);

}
