package com.sarf.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.R_BoardVO;
import com.sarf.vo.SearchCriteria;

@Repository	// 하지 않아서 bean을 생성못함
public class R_BoardDAOImpl implements R_BoardDAO{

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<R_BoardVO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("r_boardMapper.listPage", scri);
	}
	
	// 게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("r_boardMapper.listCount", scri);
	}

	@Override
	public void write(R_BoardVO boardVO) throws Exception {
		sqlSession.insert("r_boardMapper.write", boardVO);
	}

	// 게시물 조회
	@Override
	public R_BoardVO read(int bno) throws Exception {
		return sqlSession.selectOne("r_boardMapper.read", bno);
	}
	
	// 게시물 조회수 증가
	@Override
	public int updateReadCount(int bno) throws Exception {
		return sqlSession.update("r_boardMapper.updateCount", bno);
	}

	@Override
	public void update(R_BoardVO boardVO) throws Exception {
		sqlSession.update("r_boardMapper.update", boardVO);
	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("r_boardMapper.delete", bno);
	}
	
}
