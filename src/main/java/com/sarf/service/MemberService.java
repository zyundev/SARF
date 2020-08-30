package com.sarf.service;

import com.sarf.vo.MemberVO;

public interface MemberService {
	public void join(MemberVO vo) throws Exception;
	public MemberVO login(MemberVO vo) throws Exception;
	public void updateMember(MemberVO vo) throws Exception;
	public void deleteMember(MemberVO vo) throws Exception;
	public MemberVO findId(MemberVO vo) throws Exception;
	public MemberVO findPw(MemberVO vo) throws Exception;
	public String idcheck(String id) throws Exception;
	public String emailcheck(String email) throws Exception;
}
