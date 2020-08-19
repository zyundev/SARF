package com.sarf.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject 
	SqlSession sql;
	
	// 회원가입
	@Override
	public void join(MemberVO vo) throws Exception {
		sql.insert("memberMapper.join", vo);
	}
	
	// 로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return sql.selectOne("memberMapper.login", vo); // 로그인정보는 1개만 나와야하므로 selectOne을 통해 한개의 객체만 리턴
	}
	
	// 회원 정보 수정
	@Override
	public void updateMember(MemberVO vo) throws Exception {
		//vo에 담긴 파라미터들은 memberMapper.xml에 memberMapper라는 namespace에 아이디가 memberUpdate인 쿼리에 파라미터를 넣어줍니다.
		sql.update("memberMapper.updateMember", vo);
	}
	
	// 회원 탈퇴
	@Override
	public void deleteMember(MemberVO vo) throws Exception {
		sql.delete("memberMapper.deleteMember", vo);
	}

	// 아이디 찾기
	@Override
	public MemberVO findId(MemberVO vo) throws Exception {
		return sql.selectOne("memberMapper.findId", vo);
	}
	
	// 비밀번호 찾기
	@Override
	public MemberVO findPw(MemberVO vo) throws Exception {
		return sql.selectOne("memberMapper.findPw", vo);
	}
}
