package com.sarf.dao;

import java.util.List;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.Rst_BoardVO;

@Repository	
public class Rst_BoardDAOImpl implements Rst_BoardDAO{
	@Inject
	private SqlSession sqlSession;
	
	String mapper = "rst_boardMapper";
	
	// 게시?�� 목록 조회 강동
	@Override
	public List<Rst_BoardVO> list1() throws Exception {
		return sqlSession.selectList(mapper + ".listPage1");
	}
	
	// 게시?�� 목록 조회 강서
	@Override
	public List<Rst_BoardVO> list2() throws Exception {
		return sqlSession.selectList(mapper + ".listPage2");
	}
	
	// 게시?�� 목록 조회 강남
	@Override
	public List<Rst_BoardVO> list3() throws Exception {
		return sqlSession.selectList(mapper + ".listPage3");
	}
	
	// 게시?�� 목록 조회 강북
	@Override
	public List<Rst_BoardVO> list4() throws Exception {
		return sqlSession.selectList(mapper + ".listPage4");
	}
	
	// 게시?�� ?��?���? 조회
	@Override
	public Rst_BoardVO updateview(int bno) throws Exception {
		return sqlSession.selectOne(mapper + ".updateview", bno);
	}

	@Override
	public void write(Rst_BoardVO boardVO) throws Exception {
		sqlSession.insert(mapper + ".write", boardVO);
	}

	@Override
	public void update(Rst_BoardVO boardVO) throws Exception {
		sqlSession.update(mapper + ".update", boardVO);
	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete(mapper + ".delete", bno);
	}
}
