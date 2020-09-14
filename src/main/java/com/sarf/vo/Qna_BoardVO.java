package com.sarf.vo;

import java.util.Date;

public class Qna_BoardVO {
	
	private int bno; 			// 게시물 번호
	private String name; 		// 작성자
	private String subject; 	// 제목
	private String content; 	// 내용
	private Date regdate;		// 날짜
	private int ans;
	

	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
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
	
	public int getAns() {
		return ans;
	}
	public void setAns(int ans) {
		this.ans = ans;
	}
	
	@Override
	public String toString() {
		return "Qna_BoardVO [bno=" + bno + ", name=" + name + ", subject=" + subject + ", content=" + content
				+ ", regdate=" + regdate + ", ans=" + ans + ", getBno()=" + getBno() + ", getName()=" + getName()
				+ ", getSubject()=" + getSubject() + ", getContent()=" + getContent() + ", getRegdate()=" + getRegdate()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	
	

}
