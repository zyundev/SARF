package com.sarf.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.N_BoardVO;
import com.sarf.vo.SearchCriteria;

@Repository
public class N_BoardDAOImpl implements N_BoardDAO{

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<N_BoardVO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("N_boardMapper.listPage", scri);
	}
	
	// 게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("N_boardMapper.listCount", scri);
	}

	@Override
	public void write(N_BoardVO boardVO) throws Exception {
		sqlSession.insert("N_boardMapper.write", boardVO);
	}

	// 게시물 조회
	@Override
	public N_BoardVO read(int bno) throws Exception {
		return sqlSession.selectOne("N_boardMapper.read", bno);
	}
	
	// 게시물 조회수 증가
	@Override
	public int updateReadCount(int bno) throws Exception {
		return sqlSession.update("N_boardMapper.updateCount", bno);
	}
	
	// 게시물 수정
	@Override
	public void update(N_BoardVO boardVO) throws Exception {
		sqlSession.update("N_boardMapper.update", boardVO);
	}

	// 게시물 삭제
	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("N_boardMapper.delete", bno);
	}
}