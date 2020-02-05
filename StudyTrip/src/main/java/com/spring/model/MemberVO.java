package com.spring.model;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {

	private String useremail;     // 이메일
	private String name;          // 회원명
	private String pwd;           // 비밀번호
	private String hp;            // 휴대폰 번호
	private String profile;       // 프로필 사진
	private String qualifi;       // 리더 자격조건
	private String route;         // 일반회원 알게된 경로
	private String registerday;   // 가입일자 -> mapper(default:회원가입시)
	private int status;           // 회원탈퇴유무  (1:가입중 / 0:탈퇴) -> mapper(default:회원가입시)
	private int fk_auth_num;      // 권한번호 (1:회원, 2:리더) -> mapper
	private int fk_coupon_num;    // 권한번호 (회원가입시 : default) -> mapper
	
	////////////////// ///////////////////// ** 로그인 ** //////////////////////////////////////////////////////////////
	private String lastLoginDate;     // 마지막으로 로그인 한 날짜시간 기록용 
	private String lastPwdChangeDate; // 마지막으로 암호를 변경한 날짜시간 기록용
	
	private boolean requirePwdChange = false; 
	// 마지막으로 암호를 변경한 날짜가 현재시각으로 부터 3개월이 지났으면 true
	// 마지막으로 암호를 변경한 날짜가 현재시각으로 부터 3개월이 지나지 않았으면 false 
	
	private boolean idleStatus = false;  // 휴면유무(휴면이 아니라면 false, 휴면이면  true)
	// 마지막으로 로그인 한 날짜시간이 현재시각으로 부터 1년이 지났으면 true(휴면으로 지정)
	// 마지막으로 로그인 한 날짜시간이 현재시각으로 부터 1년이 지나지 않았으면 false 

	private int lastlogindategap;  // 로그인시 현재날짜와 최근 마지막으로 로그인한 날짜와의 개월수 차이 (12개월 동안 로그인을 안 했을 경우 해당 로그인계정을 비활성화 시키려고 함) 
	private int pwdchangegap;      // 로그인시 현재날짜와 최근 마지막으로 암호를 변경한 날짜와의 개월수 차이 (3개월 동안 암호를 변경 안 했을시 암호를 변경하라는 메시지를 보여주기 위함) 
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	private MultipartFile attach;
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	public MemberVO() { }


	public MemberVO(String useremail, String name, String pwd, String hp, String profile, String qualifi, String route,
			String registerday, int status, int fk_auth_num, int fk_coupon_num, String lastLoginDate,
			String lastPwdChangeDate, boolean requirePwdChange, boolean idleStatus, int lastlogindategap,
			int pwdchangegap) {
		super();
		this.useremail = useremail;
		this.name = name;
		this.pwd = pwd;
		this.hp = hp;
		this.profile = profile;
		this.qualifi = qualifi;
		this.route = route;
		this.registerday = registerday;
		this.status = status;
		this.fk_auth_num = fk_auth_num;
		this.fk_coupon_num = fk_coupon_num;
		this.lastLoginDate = lastLoginDate;
		this.lastPwdChangeDate = lastPwdChangeDate;
		this.requirePwdChange = requirePwdChange;
		this.idleStatus = idleStatus;
		this.lastlogindategap = lastlogindategap;
		this.pwdchangegap = pwdchangegap;
	}


	public String getUseremail() {
		return useremail;
	}


	public void setUseremail(String useremail) {
		this.useremail = useremail;
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


	public String getHp() {
		return hp;
	}


	public void setHp(String hp) {
		this.hp = hp;
	}


	public String getProfile() {
		return profile;
	}


	public void setProfile(String profile) {
		this.profile = profile;
	}


	public String getQualifi() {
		return qualifi;
	}


	public void setQualifi(String qualifi) {
		this.qualifi = qualifi;
	}


	public String getRoute() {
		return route;
	}


	public void setRoute(String route) {
		this.route = route;
	}


	public String getRegisterday() {
		return registerday;
	}


	public void setRegisterday(String registerday) {
		this.registerday = registerday;
	}


	public int getStatus() {
		return status;
	}


	public void setStatus(int status) {
		this.status = status;
	}


	public int getFk_auth_num() {
		return fk_auth_num;
	}


	public void setFk_auth_num(int fk_auth_num) {
		this.fk_auth_num = fk_auth_num;
	}


	public int getFk_coupon_num() {
		return fk_coupon_num;
	}


	public void setFk_coupon_num(int fk_coupon_num) {
		this.fk_coupon_num = fk_coupon_num;
	}


	public String getLastLoginDate() {
		return lastLoginDate;
	}


	public void setLastLoginDate(String lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}


	public String getLastPwdChangeDate() {
		return lastPwdChangeDate;
	}


	public void setLastPwdChangeDate(String lastPwdChangeDate) {
		this.lastPwdChangeDate = lastPwdChangeDate;
	}


	public boolean isRequirePwdChange() {
		return requirePwdChange;
	}


	public void setRequirePwdChange(boolean requirePwdChange) {
		this.requirePwdChange = requirePwdChange;
	}


	public boolean isIdleStatus() {
		return idleStatus;
	}


	public void setIdleStatus(boolean idleStatus) {
		this.idleStatus = idleStatus;
	}


	public int getLastlogindategap() {
		return lastlogindategap;
	}


	public void setLastlogindategap(int lastlogindategap) {
		this.lastlogindategap = lastlogindategap;
	}


	public int getPwdchangegap() {
		return pwdchangegap;
	}


	public void setPwdchangegap(int pwdchangegap) {
		this.pwdchangegap = pwdchangegap;
	}
	
	public MultipartFile getAttach() {
		return attach;
	}

	public void setAttach(MultipartFile attach) {
		this.attach = attach;
	}	
	
}