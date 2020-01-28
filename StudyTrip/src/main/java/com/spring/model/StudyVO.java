package com.spring.model;

public class StudyVO {

	private String fk_email;		//리더이메일
	private String study_num;		//스터디번호
	private String startday;		//시작일
	private String study_day;		//스터디 요일
	private String study_time;		//수업 시간
	private String area;			//스터디지역
	private String lv;				//스터디레벨
	private String title;			//스터디 타이틀
	private String price;			//스터디 가격
	private String study_week;		//스터디 총주
	private String profile;			//프로필사진
	private String study_img;		//스터디 간판 이미지
	private int status;				//스터디상태 0:종료 1:진행중 2:마감임박
	
	
	public String getFk_email() {
		return fk_email;
	}

	public void setFk_email(String fk_email) {
		this.fk_email = fk_email;
	}

	public String getStartday() {
		return startday;
	}

	public void setStartday(String startday) {
		this.startday = startday;
	}

	public String getStudy_day() {
		return study_day;
	}

	public void setStudy_day(String study_day) {
		this.study_day = study_day;
	}

	public String getStudy_time() {
		return study_time;
	}

	public void setStudy_time(String study_time) {
		this.study_time = study_time;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getLv() {
		return lv;
	}

	public void setLv(String lv) {
		this.lv = lv;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getStudy_week() {
		return study_week;
	}

	public void setStudy_week(String study_week) {
		this.study_week = study_week;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getStudy_img() {
		return study_img;
	}

	public void setStudy_img(String study_img) {
		this.study_img = study_img;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}


	
	
	
	
	
	
	

	

}
