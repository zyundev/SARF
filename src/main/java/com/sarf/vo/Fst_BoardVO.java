package com.sarf.vo;

public class Fst_BoardVO {
	private int bno; // 게시�? 번호
	private String key; // �? �??�� 구분?��?��
	private String subject; // ?���?
	private String content; // ?��?��
	private String img1; // ?��미�?1
	private String img2; // ?��미�?2
	private String img3; // ?��미�?3
	private String link; // 링크 ?��?��?��

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
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
	
	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}
	
	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	@Override
	public String toString() {
		return "Fst_BoardVO [bno=" + bno + ", key=" + key + ", subject=" + subject + ", content=" + content
				+ ", img1=" + img1 + ", img2=" + img2 + ", img3=" + img3 + ", link=" + link + "]";
	}
}
