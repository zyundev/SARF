package com.sarf.dao;

import java.util.List;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.V_BoardVO;
import com.sarf.vo.SearchCriteria;

@Repository	// 하지 않아서 bean을 생성못함
public class V_BoardDAOImpl implements V_BoardDAO{

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<V_BoardVO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("V_boardMapper.listPage", scri);
	}
	
	// 게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("V_boardMapper.listCount", scri);
	}

	@Override
	public void write(V_BoardVO boardVO) throws Exception {
		sqlSession.insert("V_boardMapper.write", boardVO);
	}

	// 게시물 조회
	@Override
	public V_BoardVO read(int bno) throws Exception {
		return sqlSession.selectOne("V_boardMapper.read", bno);
	}
	
	// 게시물 조회수 증가
	@Override
	public int updateReadCount(int bno) throws Exception {
		return sqlSession.update("V_boardMapper.updateCount", bno);
	}

	@Override
	public void update(V_BoardVO boardVO) throws Exception {
		sqlSession.update("V_boardMapper.update", boardVO);
	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("V_boardMapper.delete", bno);
	}
	
}
