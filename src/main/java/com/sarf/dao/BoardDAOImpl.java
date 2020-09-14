package com.sarf.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.BoardVO;
import com.sarf.vo.SearchCriteria;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Inject
	private SqlSession sqlSession;
	
	String mapper = "boardMapper";
	
	@Override
	public List<BoardVO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList(mapper + ".listPage", scri);
	}
	
	// 게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne(mapper + ".listCount", scri);
	}

	@Override
	public void write(BoardVO boardVO) throws Exception {
		sqlSession.insert(mapper + ".write", boardVO);
	}

	// 게시물 조회
	@Override
	public BoardVO read(int bno) throws Exception {
		return sqlSession.selectOne(mapper + ".read", bno);
	}
	
	// 게시물 조회수 증가
	@Override
	public int updateReadCount(int bno) throws Exception {
		return sqlSession.update(mapper + ".updateCount", bno);
	}

	@Override
	public void update(BoardVO boardVO) throws Exception {
		sqlSession.update(mapper + ".update", boardVO);
	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete(mapper + ".delete", bno);
	}
	
}
