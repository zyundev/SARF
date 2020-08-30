package com.sarf.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sarf.dao.MemberDAO;
import com.sarf.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	@Inject
	MemberDAO dao;
	
	@Override
	public void join(MemberVO vo) throws Exception {
		dao.join(vo);
	}
	
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}
	
	@Override
	public void updateMember(MemberVO vo) throws Exception {
		dao.updateMember(vo);		
	}

	@Override
	public void deleteMember(MemberVO vo) throws Exception {
		dao.deleteMember(vo);
	}

	@Override
	public MemberVO findId(MemberVO vo) throws Exception {
		return dao.findId(vo);
	}
	
	@Override
	public MemberVO findPw(MemberVO vo) throws Exception {
		return dao.findPw(vo);
	}

	@Override
	public String idcheck(String id) throws Exception {
		return dao.idcheck(id);
	}
	
	@Override
	public String emailcheck(String email) throws Exception {
		return dao.emailcheck(email);
	}
}
