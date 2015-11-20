package com.gogo.withgo.vo;

import java.sql.Date;

public class MemberVo {
	private int mno;
	private String email;
	private String pw;
	private String newpw;
	private String nickname;
	private String name;
	private String phone;
	private String birth;
	private int gender;
	private int hascar;
	private String image;
	private Date jdate;
	private String profile;
	private String auth;
	private int authphone;
	private int authemail;
	
	public MemberVo() {}

	public MemberVo(String email, String pw){
		this.email = email;
		this.pw = pw;
	}
	
	public MemberVo(int mno, String email, String pw, String newpw, String nickname, String name, String phone, String birth,
			int gender, int hascar, String image, Date jdate, String profile, String auth, int authphone, int authemail) {
		super();
		this.mno = mno;
		this.email = email;
		this.pw = pw;
		this.newpw = newpw;
		this.nickname = nickname;
		this.name = name;
		this.phone = phone;
		this.birth = birth;
		this.gender = gender;
		this.hascar = hascar;
		this.image = image;
		this.jdate = jdate;
		this.profile = profile;
		this.auth = auth;
		this.authphone = authphone;
		this.authemail = authemail;
	}

	public String getNewpw() {
		return newpw;
	}

	public void setNewpw(String newpw) {
		this.newpw = newpw;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
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

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public int getHascar() {
		return hascar;
	}

	public void setHascar(int hascar) {
		this.hascar = hascar;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getJdate() {
		return jdate;
	}

	public void setJdate(Date jdate) {
		this.jdate = jdate;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	public int getAuthphone() {
		return authphone;
	}

	public void setAuthphone(int authphone) {
		this.authphone = authphone;
	}

	public int getAuthemail() {
		return authemail;
	}

	public void setAuthemail(int authemail) {
		this.authemail = authemail;
	}
	
}
