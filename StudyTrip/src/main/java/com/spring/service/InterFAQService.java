package com.spring.service;

import java.util.HashMap;
import java.util.List;

import com.spring.model.BoardVO;

public interface InterFAQService {

	BoardVO getViewWithNoAddCount(String seq);

	int getTotalCountWithNOsearch();

	List<BoardVO> boardListWithPaging(HashMap<String, String> paraMap);

	int add(BoardVO boardvo);

	int del(BoardVO boardvo);

	int edit(BoardVO boardvo);

}
