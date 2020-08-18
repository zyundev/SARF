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
	
	@Override
	public void updateMember(MemberVO vo) throws Exception {
		//vo에 담긴 파라미터들은 memberMapper.xml에 memberMapper라는 namespace에 아이디가 memberUpdate인 쿼리에 파라미터를 넣어줍니다.
		sql.update("memberMapper.memberUpdate", vo);
	}
	/*
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		 //MemberVO에 담긴 값들을 보내줍니다.
		 //그럼 xml에서 memberMapper.memberDelete에 보시면
		 //#{userId}, #{userPass}에 파라미터값이 매칭이 되겠지요.
		 
		sql.delete("memberMapper.memberDelete", vo);
	}
	*/
}
