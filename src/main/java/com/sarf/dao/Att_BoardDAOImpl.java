package com.sarf.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.Att_BoardVO;

@Repository	
public class Att_BoardDAOImpl implements Att_BoardDAO{
	@Inject
	private SqlSession sqlSession;
	
	String mapper = "att_boardMapper";
	
	// 게시판 목록 조회 강동
	@Override
	public List<Att_BoardVO> list1() throws Exception {
		return sqlSession.selectList(mapper + ".listPage1");
	}
	
	// 게시판 목록 조회 강서
	@Override
	public List<Att_BoardVO> list2() throws Exception {
		return sqlSession.selectList(mapper + ".listPage2");
	}
	
	// 게시판 목록 조회 강남
	@Override
	public List<Att_BoardVO> list3() throws Exception {
		return sqlSession.selectList(mapper + ".listPage3");
	}
	
	// 게시판 목록 조회 강북
	@Override
	public List<Att_BoardVO> list4() throws Exception {
		return sqlSession.selectList(mapper + ".listPage4");
	}
	
	// 게시판 수정뷰 조회
	@Override
	public Att_BoardVO updateview(int bno) throws Exception {
		return sqlSession.selectOne(mapper + ".updateview", bno);
	}

	@Override
	public void write(Att_BoardVO boardVO) throws Exception {
		sqlSession.insert(mapper + ".write", boardVO);
	}

	@Override
	public void update(Att_BoardVO boardVO) throws Exception {
		sqlSession.update(mapper + ".update", boardVO);
	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete(mapper + ".delete", bno);
	}
}
