package com.sarf.service;

import com.sarf.vo.MemberVO;

public interface MemberService {
	
	// 회원가입
	public void join(MemberVO vo) throws Exception;
	
	// 로그인
	public MemberVO login(MemberVO vo) throws Exception;
	
	// 회원 정보 수정
	public void updateMember(MemberVO vo) throws Exception;
	
	// 회원 탈퇴
	public void deleteMember(MemberVO vo) throws Exception;
	
	// 아이디 찾기
	public MemberVO findId(MemberVO vo) throws Exception;
	
	// 비밀번호 찾기
	public MemberVO findPw(MemberVO vo) throws Exception;
	
	// 아이디 중복 체크
	public String idcheck(String id) throws Exception;
	
	// 이메일 중복 체크
	public String emailcheck(String email) throws Exception;
	
}
