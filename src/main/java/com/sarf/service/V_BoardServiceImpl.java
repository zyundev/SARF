package com.sarf.service;

import java.util.List;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sarf.dao.V_BoardDAO;
import com.sarf.vo.V_BoardVO;
import com.sarf.vo.SearchCriteria;

@Service
public class V_BoardServiceImpl implements V_BoardService {

	@Inject
	private V_BoardDAO dao;
	
	// 게시물 목록 조회
	@Override
	public List<V_BoardVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}

	// 게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}

	// 게시글 작성
	@Override
	public void write(V_BoardVO boardVO) throws Exception {
		dao.write(boardVO);
	}

	// 게시물 조회
	@Override
	public V_BoardVO read(int bno) throws Exception {
		dao.updateReadCount(bno); // 조회수 증가
		return dao.read(bno);
	}

	// 게시물 수정
	@Override
	public void update(V_BoardVO boardVO) throws Exception {
		dao.update(boardVO);
	}

	// 게시물 삭제
	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);
	}

}
