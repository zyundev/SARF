package com.sarf.dao;

import java.util.List;	

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.BoardVO;

@Repository	// 하지 않아서 bean을 생성못함
public class BoardDAOImpl implements BoardDAO{

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<BoardVO> list() throws Exception {
		return sqlSession.selectList("boardMapper.list");
	}

	@Override
	public void write(BoardVO boardVO) throws Exception {
		sqlSession.insert("boardMapper.write", boardVO);
	}
}
