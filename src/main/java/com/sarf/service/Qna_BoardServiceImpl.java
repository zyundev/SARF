package com.sarf.service;

import java.util.List;	

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sarf.dao.Qna_BoardDAO;
import com.sarf.vo.Qna_BoardVO;
import com.sarf.vo.SearchCriteria;

@Service
public class Qna_BoardServiceImpl implements Qna_BoardService{
	
	@Inject
	private Qna_BoardDAO dao;
	
	// 게시물 목록 조회
	@Override
	public List<Qna_BoardVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}

	// 게시글 작성
	@Override
	public void write(Qna_BoardVO boardVO) throws Exception {
		dao.write(boardVO);
	}

	@Override
	public Qna_BoardVO read(int bno) throws Exception {
		return dao.read(bno);
	}
}
