package com.sarf.dao;

import com.sarf.vo.MemberVO;

public interface MemberDAO {
	// 회원가입
	public void join(MemberVO vo) throws Exception;
	
	// 로그인
	public MemberVO login(MemberVO vo) throws Exception;
	
	// 회원정보 수정
	public void updateMember(MemberVO vo) throws Exception;
	
	// 회원 탈퇴
	public void deleteMember(MemberVO vo) throws Exception;

	// 아이디 찾기
	public MemberVO findId(MemberVO vo) throws Exception;
}
