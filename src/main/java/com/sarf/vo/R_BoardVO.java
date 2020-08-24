package com.sarf.vo;

import java.util.Date;

public class R_BoardVO {
	private int bno; 			// 게시물 번호
	private String name; 		// 작성자
	private String subject; 	// 제목
	private String content; 	// 내용
	private Date regdate;		// 날짜
	private String fileupload;	// 파일
	private int readcount; 		// 조회수
	private int prevNum; // 이전 글의 글 번호 담을 필드
	private int nextNum; // 다음 글의 글 번호를 담을 필드
	
	public int getPrevNum() {
		return prevNum;
	}
	public void setPrevNum(int prevNum) {
		this.prevNum = prevNum;
	}
	public int getNextNum() {
		return nextNum;
	}
	public void setNextNum(int nextNum) {
		this.nextNum = nextNum;
	}
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
	public String getFileupload() {
		return fileupload;
	}
	public void setFileupload(String fileupload) {
		this.fileupload = fileupload;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	@Override
	public String toString() {
		return "R_BoardVO [bno=" + bno + ", name=" + name + ", subject=" + subject + ", content=" + content + ", regdate="
				+ regdate + ", fileupload=" + fileupload + ", readcount=" + readcount + "]";
	}
}
