package com.sarf.vo;

import java.util.Date;

public class V_ReplyVO {

	private int bno;
	private int rno;
	private String name;
	private String content;
	private Date regdate;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "ReplyVO [bno=" + bno + ", rno=" + rno + ", name=" + name + ", content=" + content + ", regdate="
				+ regdate + "]";
	}
	
	
}
