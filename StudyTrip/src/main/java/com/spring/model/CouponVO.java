package com.spring.model;

public class CouponVO {
	private String coupon_num ;
	private String coupon_name;      
	private String issuedate;         
	private String expi_date;       
	private String coupon_status;     


	public CouponVO() { }


	public CouponVO(String coupon_num, String coupon_name, String issuedate, String expi_date, String coupon_status) {
		super();
		this.coupon_num = coupon_num;
		this.coupon_name = coupon_name;
		this.issuedate = issuedate;
		this.expi_date = expi_date;
		this.coupon_status = coupon_status;
	}


	public String getCoupon_num() {
		return coupon_num;
	}


	public void setCoupon_num(String coupon_num) {
		this.coupon_num = coupon_num;
	}


	public String getCoupon_name() {
		return coupon_name;
	}


	public void setCoupon_name(String coupon_name) {
		this.coupon_name = coupon_name;
	}


	public String getIssuedate() {
		return issuedate;
	}


	public void setIssuedate(String issuedate) {
		this.issuedate = issuedate;
	}


	public String getExpi_date() {
		return expi_date;
	}


	public void setExpi_date(String expi_date) {
		this.expi_date = expi_date;
	}


	public String getCoupon_status() {
		return coupon_status;
	}


	public void setCoupon_status(String coupon_status) {
		this.coupon_status = coupon_status;
	}

	
	
}