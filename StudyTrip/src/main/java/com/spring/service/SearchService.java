package com.spring.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.model.InterSearchDAO;
import com.spring.model.LeaderBoardVO;
import com.spring.model.StudyVO;

@Service
public class SearchService implements InterSearchService {

	@Autowired   // Type에 따라 알아서 Bean 을 주입해준다.
	private InterSearchDAO dao;
	
	@Override
	public List<StudyVO> getStudyListAll() {
		List<StudyVO> stvo =dao.getStudyListAll();
		
		return stvo;
	}

	@Override
	public List<StudyVO> getStudySearchListAll(HashMap<String, Object> paraMap) {
		List<StudyVO> stvo = dao.getStudySearchListAll(paraMap);
		
		return stvo;
	}

	@Override
	public String getStudy_num() {
		String study_num = dao.getStudy_num();
		return study_num;
	}

	@Override
	public int addStudy(HashMap<String, String> studyMap) {
		int n = dao.addStudy(studyMap);
		return n;
	}
	
	@Override
	public int addTitleimage(HashMap<String, String> paraMap) {
		int n = dao.addTitleimage(paraMap);
		return n;
	}

	@Override
	public int addStudyimage(HashMap<String, String> paraMap) {
		int n = dao.addStudyimage(paraMap);
		return n;
	}

	@Override
	public StudyVO searchDetail(String study_num) {
		StudyVO stvo = dao.searchDetail(study_num);
		return stvo;
	}

	@Override
	public List<HashMap<String, String>> searchDetailImg(String study_num) {
		List<HashMap<String, String>> viewStudyImageList = dao.searchDetailImg(study_num);
		return viewStudyImageList;
	}

	@Override
	public int searchWish(HashMap<String, String> paraMap) {
		int n = dao.searchWish(paraMap);
		return n;
	}

	@Override
	public int deleteWishList(HashMap<String, String> paraMap) {
		int n = dao.deleteWishList(paraMap);
		return n;
	}

	@Override
	public int insertWishList(HashMap<String, String> paraMap) {
		int n = dao.insertWishList(paraMap);
		return n;
	}

	@Override
	public int AddLeaderBoard(LeaderBoardVO leaderVO) {
		
		int groupno = dao.getGroupnoMax()+1;
		leaderVO.setGroupno(groupno);
		int n = dao.AddLeaderBoard(leaderVO);
		return n;
	}

	@Override
	public List<LeaderBoardVO> ListLeaderBoard(String fk_study_num) {
		
		List<LeaderBoardVO> boardList = dao.ListLeaderBoard(fk_study_num);
		
		return boardList;
	}

	@Override
	public int DeleteLeaderBoard(String study_qna_num) {
		int n = dao.DeleteLeaderBoard(study_qna_num);
		return n;
	}

	@Override
	public int EditeLeaderBoard(HashMap<String, String> paraMap) {
		int n = dao.EditeLeaderBoard(paraMap);
		return n;
	}

	@Override
	public int AnswerLeaderBoard(LeaderBoardVO leaderVO) {
		
		
		String content = leaderVO.getContent();
		
		leaderVO = dao.SearchGroupNo(leaderVO);	
		
		leaderVO.setContent(content);
		int n = dao.AnswerLeaderBoard(leaderVO);
		
		return n;
	}











}
