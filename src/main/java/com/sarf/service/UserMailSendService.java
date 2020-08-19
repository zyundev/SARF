package com.sarf.service;

import java.util.Random;

import javax.inject.Inject;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.sarf.dao.MemberDAO;

@Service
public class UserMailSendService {
	@Inject
	JavaMailSender mailSender;
	
	// 난수를 이용한 키 생성
		private boolean lowerCheck;
		private int size;

		public String getKey(boolean lowerCheck, int size) {
			this.lowerCheck = lowerCheck;
			this.size = size;
			
			return init();
		}
		
	// 이메일 난수 만드는 메서드
	private String init() {
		Random ran = new Random();
		StringBuffer sb = new StringBuffer();
		int num = 0;

		do {
			num = ran.nextInt(75) + 48;
			if ((num >= 48 && num <= 57) || (num >= 65 && num <= 90) || (num >= 97 && num <= 122)) {
				sb.append((char) num);
			} else {
				continue;
			}

		} while (sb.length() < size);
		if (lowerCheck) {
			return sb.toString().toLowerCase();
		}
		return sb.toString();
	}

	// 회원가입 발송 이메일(인증키 발송)
	public String mailSendWithUserKey(String user_id, String e_mail, HttpServletRequest request) {
		String key = getKey(false, 10);

		MimeMessage mail = mailSender.createMimeMessage();
		String htmlStr = "<h2>안녕하세요 SARF 입니다</h2><br><br>" 
				+ "<h3>" + user_id + "님</h3>" + "<h3>임시 비밀번호는 : " + key + " 입니다. <br> 임시 비밀번호를 통해 다시 로그인 해주세요.</h3>";
		try {
			mail.setSubject("[비밀번호 찾기] SARF의 비밀번호 찾기 메일입니다", "utf-8");
			mail.setText(htmlStr, "utf-8", "html");
			mail.addRecipient(RecipientType.TO, new InternetAddress(e_mail));
			mailSender.send(mail);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		return key;
	}
}