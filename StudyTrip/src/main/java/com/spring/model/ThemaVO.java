package com.spring.model;

public class ThemaVO {
	
	private String  research_num;   //상세조사번호
	private String point;		// 포인트
	private String name;		// 이름
	private String lv;			// 레벨
	private String age;			// 나이
	private String phone;		// 휴대폰번호
	private int gender;			// 성별
	private String write_date;	// 작성일자
	private String prefer_area;	// 선호지역
	private String prefer_date;	// 선호날짜
	
	public ThemaVO() {}
	
	public ThemaVO(String research_num, String point, String name, String lv, String age, String phone, int gender,
			String write_date, String prefer_area, String prefer_date) {
		super();
		this.research_num = research_num;
		this.point = point;
		this.name = name;
		this.lv = lv;
		this.age = age;
		this.phone = phone;
		this.gender = gender;
		this.write_date = write_date;
		this.prefer_area = prefer_area;
		this.prefer_date = prefer_date;
	}

	public String getResearch_num() {
		return research_num;
	}

	public void setResearch_num(String research_num) {
		this.research_num = research_num;
	}

	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLv() {
		return lv;
	}

	public void setLv(String lv) {
		this.lv = lv;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getWrite_date() {
		return write_date;
	}

	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}

	public String getPrefer_area() {
		return prefer_area;
	}

	public void setPrefer_area(String prefer_area) {
		this.prefer_area = prefer_area;
	}

	public String getPrefer_date() {
		return prefer_date;
	}

	public void setPrefer_date(String prefer_date) {
		this.prefer_date = prefer_date;
	}
	
	
}
