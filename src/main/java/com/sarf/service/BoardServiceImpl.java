package com.sarf.service;


import java.util.List;	

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sarf.dao.BoardDAO;
import com.sarf.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	// 게시물 목록 조회
	@Override
	public List<BoardVO> list() throws Exception {
		System.out.println("sersadf");
		return dao.list();
	}
	// 게시글 작성
	@Override
	public void write(BoardVO boardVO) throws Exception {
		dao.write(boardVO);
	}
	@Override
	public BoardVO read(int bno) throws Exception {
		return null;
	}

}
