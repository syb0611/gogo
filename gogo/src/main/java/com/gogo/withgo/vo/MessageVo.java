package com.gogo.withgo.vo;

import java.sql.Date;

public class MessageVo {
	private int msgno;
	private String fromname;
	private String toname;
	private String title;
	private String memo;
	private Date wdate;
	private int checked;
	
	public MessageVo() {}

	public MessageVo(int msgno, String fromname, String toname, String title, String memo, Date wdate, int checked) {
		super();
		this.msgno = msgno;
		this.fromname = fromname;
		this.toname = toname;
		this.title = title;
		this.memo = memo;
		this.wdate = wdate;
		this.checked = checked;
	}

	public int getMsgno() {
		return msgno;
	}

	public void setMsgno(int msgno) {
		this.msgno = msgno;
	}

	public String getFromname() {
		return fromname;
	}

	public void setFromname(String fromname) {
		this.fromname = fromname;
	}

	public String getToname() {
		return toname;
	}

	public void setToname(String toname) {
		this.toname = toname;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public Date getWdate() {
		return wdate;
	}

	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}

	public int getChecked() {
		return checked;
	}

	public void setChecked(int checked) {
		this.checked = checked;
	}
	
}
