package com.spring.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SearchDAO implements InterSearchDAO {

	@Autowired
	private SqlSessionTemplate sqlsession;	
	
	@Override
	public List<StudyVO> getStudyListAll() {
		List<StudyVO> stvo = sqlsession.selectList("search.getStudyListAll");
		return stvo;
	}

	@Override
	public List<StudyVO> getStudySearchListAll(HashMap<String, Object> paraMap) {
		List<StudyVO> stvo =sqlsession.selectList("search.getStudySearchListAll", paraMap);
		return stvo;
	}

	@Override
	public String getStudy_num() {
		String study_num = sqlsession.selectOne("search.getStudy_num");
		return study_num;
	}

	@Override
	public int addStudy(HashMap<String, String> studyMap) {
		int n = sqlsession.insert("search.addStudy", studyMap);
		return n;
	}

	@Override
	public int addStudyimage(HashMap<String, String> paraMap) {
		int n = sqlsession.insert("search.addStudyimage", paraMap);
		return n;
	}
	
	@Override
	public int addTitleimage(HashMap<String, String> paraMap) {
		int n = sqlsession.update("search.addTitleimage", paraMap);
		return n;
	}	
	

	@Override
	public StudyVO searchDetail(String study_num) {
		StudyVO stvo = sqlsession.selectOne("search.searchDetail", study_num);
		return stvo;
	}

	@Override
	public List<HashMap<String, String>> searchDetailImg(String study_num) {
		List<HashMap<String, String>> viewStudyImageList = sqlsession.selectList("search.searchDetailImg", study_num);
		
		return viewStudyImageList;
	}

	@Override
	public int searchWish(HashMap<String, String> paraMap) {
		int n = sqlsession.selectOne("search.searchWish", paraMap);
		return n;
	}

	@Override
	public int deleteWishList(HashMap<String, String> paraMap) {
		int n = sqlsession.delete("search.deleteWishList", paraMap);
		return n;
	}

	@Override
	public int insertWishList(HashMap<String, String> paraMap) {
		int n = sqlsession.insert("search.insertWishList", paraMap);
		return n;
	}


	@Override
	public int AddLeaderBoard(LeaderBoardVO leaderVO) {
		int n = sqlsession.insert("search.AddLeaderBoard", leaderVO);
		return n;
	}

	@Override
	public int getGroupnoMax() {
		
		int max = sqlsession.selectOne("search.getGroupnoMax");
		
		return max;
	}

	@Override
	public List<LeaderBoardVO> ListLeaderBoard(String fk_study_num) {
		List<LeaderBoardVO> boardList = sqlsession.selectList("search.ListLeaderBoard", fk_study_num);
		return boardList;
	}

	@Override
	public int DeleteLeaderBoard(String study_qna_num) {
		int n = sqlsession.delete("search.DeleteLeaderBoard", study_qna_num);
		return n;
	}

	@Override
	public int EditeLeaderBoard(HashMap<String, String> paraMap) {
		int n = sqlsession.update("search.EditeLeaderBoard", paraMap);
		return n;
	}

	@Override
	public LeaderBoardVO SearchGroupNo(LeaderBoardVO leaderVO) {
		
		leaderVO = sqlsession.selectOne("search.SearchGroupNo", leaderVO);	
		

		
		return leaderVO;
	}
	
	
	@Override
	public int AnswerLeaderBoard(LeaderBoardVO leaderVO) {

		int n = sqlsession.insert("search.AnswerLeaderBoard",leaderVO);
		
		return n;
	}








}


