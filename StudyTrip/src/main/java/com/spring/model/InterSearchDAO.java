package com.spring.model;

import java.util.HashMap;
import java.util.List;

public interface InterSearchDAO {

	List<StudyVO> getStudyListAll();		// 모든스터디를 조회해준다.

	List<StudyVO> getStudySearchListAll(HashMap<String, Object> paraMap);	// 검색조건에 따른 스터디를 조회해준다.

	String getStudy_num();	// 스터디번호를 채번해온다

	int addStudy(HashMap<String, String> studyMap);	// 스터디를 등록시켜준다.

	int addStudyimage(HashMap<String, String> paraMap); // 스터시 이미지를 저장시켜준다.

	StudyVO searchDetail(String study_num);	// 해당스터디의 상세페이지 정보를 가져온다.

	int addTitleimage(HashMap<String, String> paraMap); // 스터디테이블에 타이틀 이미지를 추가해준다.

	List<HashMap<String, String>> searchDetailImg(String study_num);		// 스터디 디테일의 캐러셀 이미지를 가져온다.

	int searchWish(HashMap<String, String> paraMap);					// 위시 등록여부를 조회해준다.

	int deleteWishList(HashMap<String, String> paraMap);				// 스터디를 위시리스트에서 삭제한다.

	int insertWishList(HashMap<String, String> paraMap);				// 스터디를 위시리스트에 추가한다.

	int AddLeaderBoard(LeaderBoardVO leaderVO);							// 스터디 리더보드에 글을 추가한다.

	int getGroupnoMax();												// 리더보드의 groupno 번호를 가져온다.

	List<LeaderBoardVO> ListLeaderBoard(String fk_study_num);			// 상세페이지에 리더보드 리스트를 보여준다.

	int DeleteLeaderBoard(String study_qna_num);						// 스터디 리더보드에 글을 삭제한다.

	int EditeLeaderBoard(HashMap<String, String> paraMap);				// 스터디 상세보기의 리더 QnA글을 수정한다.

	int AnswerLeaderBoard(LeaderBoardVO leaderVO);						// 스터디 QnA의 답변을 달아준다.

	LeaderBoardVO SearchGroupNo(LeaderBoardVO leaderVO);				// 대댓글을 위한 그룹넘버와 정보를 받아온다.

}
