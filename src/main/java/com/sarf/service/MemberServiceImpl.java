package com.sarf.service;

import java.util.List;

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
	public List<MemberVO> findId(MemberVO vo) throws Exception {
		return dao.findId(vo);
	}
}
