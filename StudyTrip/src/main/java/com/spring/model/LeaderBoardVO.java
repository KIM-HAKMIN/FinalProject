package com.spring.model;

public class LeaderBoardVO {
	
	private String study_qna_num;	// P.K 스터디QnA번호
	private String fk_study_num;	// F.K 스터디번호
	private String fk_useremail;	// F.K 유저이메일
	private String content;			// 내용
	private String write_date;		// 작성일
	private int groupno;			// 그룹번호
	private int depthno;			// 순서번호
	private int fk_seq;				// 부모글번호
	private String name;		// 유저이메일
	private String pwd;				// 유저패스워드
	
	public String getStudy_qna_num() {
		return study_qna_num;
	}
	
	public void setStudy_qna_num(String study_qna_num) {
		this.study_qna_num = study_qna_num;
	}
	
	public String getFk_study_num() {
		return fk_study_num;
	}
	
	public void setFk_study_num(String fk_study_num) {
		this.fk_study_num = fk_study_num;
	}
	
	public String getFk_useremail() {
		return fk_useremail;
	}
	
	public void setFk_useremail(String fk_useremail) {
		this.fk_useremail = fk_useremail;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getWrite_date() {
		return write_date;
	}
	
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	
	public int getGroupno() {
		return groupno;
	}
	
	public void setGroupno(int groupno) {
		this.groupno = groupno;
	}
	
	public int getDepthno() {
		return depthno;
	}
	
	public void setDepthno(int depthno) {
		this.depthno = depthno;
	}
	
	public int getFk_seq() {
		return fk_seq;
	}
	
	public void setFk_seq(int fk_seq) {
		this.fk_seq = fk_seq;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	
	
	
	
}
