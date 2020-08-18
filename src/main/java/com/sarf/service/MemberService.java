package com.sarf.service;

import com.sarf.vo.MemberVO;

public interface MemberService {
	public void join(MemberVO vo) throws Exception;
	public MemberVO login(MemberVO vo) throws Exception;
	public void updateMember(MemberVO vo) throws Exception;
	/*
	public void memberDelete(MemberVO vo) throws Exception;
	*/
}
