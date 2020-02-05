package com.spring.model;

public class PaymentVO {
	
	private String pay_num;   
	private String fk_useremail;        
	private String name;        
	private String phone;            
	private String email;       
	private String price;   
	private String couponstatus;            
	private String pay_date;       
	private String fk_study_num;   
	
	
	public PaymentVO() { }


	public PaymentVO(String pay_num, String fk_useremail, String name, String phone, String email, String price,
			String couponstatus, String pay_date, String fk_study_num) {
		super();
		this.pay_num = pay_num;
		this.fk_useremail = fk_useremail;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.price = price;
		this.couponstatus = couponstatus;
		this.pay_date = pay_date;
		this.fk_study_num = fk_study_num;
	}


	public String getPay_num() {
		return pay_num;
	}


	public void setPay_num(String pay_num) {
		this.pay_num = pay_num;
	}


	public String getFk_useremail() {
		return fk_useremail;
	}


	public void setFk_useremail(String fk_useremail) {
		this.fk_useremail = fk_useremail;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public String getCouponstatus() {
		return couponstatus;
	}


	public void setCouponstatus(String couponstatus) {
		this.couponstatus = couponstatus;
	}


	public String getPay_date() {
		return pay_date;
	}


	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}


	public String getFk_study_num() {
		return fk_study_num;
	}


	public void setFk_study_num(String fk_study_num) {
		this.fk_study_num = fk_study_num;
	}
	
	
}