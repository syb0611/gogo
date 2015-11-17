package com.gogo.withgo.vo;

import java.sql.Date;

public class BookInfoVo {
	//BOOKING
	private int bookno;
	private int carno;  
	private int reqmem;
	private int resmem;
	private int seatnum;
	private int status;
	private Date bdate;
	//MEMBER
	//private int mno;
	private String email;
	private String pw;
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
	//CARPOOL
	//private int carno;			
	private String category;	
	//private int mno;		
	private String departure;	
	private String arrival;		
	private String stop1;
	private String stop2;
	private String stop3;
	private String stop4;
	private String stop5;
	private String usertype;  
	private int seat;
	private int bookedseat;
	private String memo;		
	private Date departuredate;			
	private int price;
	private int smoking;
	private int genderlimit;
	private int requestseat;
	
	public BookInfoVo() {}

	

	public BookInfoVo(int bookno, int carno, int reqmem, int resmem, int seatnum, int status, Date bdate, String email,
			String pw, String nickname, String name, String phone, String birth, int gender, int hascar, String image,
			Date jdate, String profile, String auth, int authphone, int authemail, String category, String departure,
			String arrival, String stop1, String stop2, String stop3, String stop4, String stop5, String usertype,
			int seat, int bookedseat, String memo, Date departuredate, int price, int smoking, int genderlimit, int requestseat) {
		super();
		this.bookno = bookno;
		this.carno = carno;
		this.reqmem = reqmem;
		this.resmem = resmem;
		this.seatnum = seatnum;
		this.status = status;
		this.bdate = bdate;
		this.email = email;
		this.pw = pw;
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
		this.category = category;
		this.departure = departure;
		this.arrival = arrival;
		this.stop1 = stop1;
		this.stop2 = stop2;
		this.stop3 = stop3;
		this.stop4 = stop4;
		this.stop5 = stop5;
		this.usertype = usertype;
		this.seat = seat;
		this.bookedseat = bookedseat;
		this.memo = memo;
		this.departuredate = departuredate;
		this.price = price;
		this.smoking = smoking;
		this.genderlimit = genderlimit;
		this.requestseat = requestseat;
	}



	public int getRequestseat() {
		return requestseat;
	}



	public void setRequestseat(int requestseat) {
		this.requestseat = requestseat;
	}



	public int getBookno() {
		return bookno;
	}

	public void setBookno(int bookno) {
		this.bookno = bookno;
	}

	public int getCarno() {
		return carno;
	}

	public void setCarno(int carno) {
		this.carno = carno;
	}

	

	public int getReqmem() {
		return reqmem;
	}



	public void setReqmem(int reqmem) {
		this.reqmem = reqmem;
	}



	public int getResmem() {
		return resmem;
	}



	public void setResmem(int resmem) {
		this.resmem = resmem;
	}



	public int getSeatnum() {
		return seatnum;
	}

	public void setSeatnum(int seatnum) {
		this.seatnum = seatnum;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getBdate() {
		return bdate;
	}

	public void setBdate(Date bdate) {
		this.bdate = bdate;
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDeparture() {
		return departure;
	}

	public void setDeparture(String departure) {
		this.departure = departure;
	}

	public String getArrival() {
		return arrival;
	}

	public void setArrival(String arrival) {
		this.arrival = arrival;
	}

	public String getStop1() {
		return stop1;
	}

	public void setStop1(String stop1) {
		this.stop1 = stop1;
	}

	public String getStop2() {
		return stop2;
	}

	public void setStop2(String stop2) {
		this.stop2 = stop2;
	}

	public String getStop3() {
		return stop3;
	}

	public void setStop3(String stop3) {
		this.stop3 = stop3;
	}

	public String getStop4() {
		return stop4;
	}

	public void setStop4(String stop4) {
		this.stop4 = stop4;
	}

	public String getStop5() {
		return stop5;
	}

	public void setStop5(String stop5) {
		this.stop5 = stop5;
	}

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public int getSeat() {
		return seat;
	}

	public void setSeat(int seat) {
		this.seat = seat;
	}

	public int getBookedseat() {
		return bookedseat;
	}

	public void setBookedseat(int bookedseat) {
		this.bookedseat = bookedseat;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public Date getDeparturedate() {
		return departuredate;
	}

	public void setDeparturedate(Date departuredate) {
		this.departuredate = departuredate;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getSmoking() {
		return smoking;
	}

	public void setSmoking(int smoking) {
		this.smoking = smoking;
	}

	public int getGenderlimit() {
		return genderlimit;
	}

	public void setGenderlimit(int genderlimit) {
		this.genderlimit = genderlimit;
	}
	
}