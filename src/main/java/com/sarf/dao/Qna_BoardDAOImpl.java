package com.sarf.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.Qna_BoardVO;
import com.sarf.vo.SearchCriteria;

@Repository	// 하지 않아서 bean을 생성못함
public class Qna_BoardDAOImpl implements Qna_BoardDAO{

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<Qna_BoardVO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("qna_boardMapper.listPage", scri);
	}
	
	// 게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("qna_boardMapper.listCount", scri);
	}

	@Override
	public void write(Qna_BoardVO boardVO) throws Exception {
		sqlSession.insert("qna_boardMapper.write", boardVO);
	}

	// 게시물 조회
	@Override
	public Qna_BoardVO read(int bno) throws Exception {
		return sqlSession.selectOne("qna_boardMapper.read", bno);
	}
	
	// 게시물 조회수 증가
	@Override
	public int updateReadCount(int bno) throws Exception {
		return sqlSession.update("qna_boardMapper.updateCount", bno);
	}

	@Override
	public void update(Qna_BoardVO boardVO) throws Exception {
		sqlSession.update("qna_boardMapper.update", boardVO);
	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("qna_boardMapper.delete", bno);
	}
	
}
