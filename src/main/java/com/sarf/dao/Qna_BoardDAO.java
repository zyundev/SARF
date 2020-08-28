package com.sarf.dao;

import java.util.List;

import com.sarf.vo.Qna_BoardVO;
import com.sarf.vo.SearchCriteria;

public interface Qna_BoardDAO {
	
	// 게시물 작성
	public void write(Qna_BoardVO boardVO) throws Exception;

	// 게시판 목록 조회
	public List<Qna_BoardVO> list(SearchCriteria scri) throws Exception;
	
	// 게시물 조회
	public Qna_BoardVO read(int bno) throws Exception;	

}
