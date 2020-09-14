package com.sarf.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.Qna_BoardVO;
import com.sarf.vo.SearchCriteria;

@Repository
public class Qna_BoardDAOImpl implements Qna_BoardDAO{

	@Inject
	private SqlSession sqlSession;
	
	String mapper = "qna_boardMapper";
	
	@Override
	public List<Qna_BoardVO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList(mapper + ".list", scri);
	}

	@Override
	public void write(Qna_BoardVO boardVO) throws Exception {
		sqlSession.insert(mapper + ".write", boardVO);
	}

	@Override
	public Qna_BoardVO read(int bno) throws Exception {
		return sqlSession.selectOne(mapper + ".read", bno);
	}
}
