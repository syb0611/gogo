package com.gogo.withgo.vo;

import java.sql.Date;

public class ReplyVo {
	private int rno;
	private int bno;
	private String nickname;
	private String replytext;
	private Date wdate;
	private String category;
	
	public ReplyVo() {}

	public ReplyVo(int rno, int bno, String nickname, String replytext, Date wdate, String category) {
		super();
		this.rno = rno;
		this.bno = bno;
		this.nickname = nickname;
		this.replytext = replytext;
		this.wdate = wdate;
		this.category = category;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getReplytext() {
		return replytext;
	}

	public void setReplytext(String replytext) {
		this.replytext = replytext;
	}

	public Date getWdate() {
		return wdate;
	}

	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
}
