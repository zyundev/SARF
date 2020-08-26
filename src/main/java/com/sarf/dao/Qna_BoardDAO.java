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

	// 게시글 조회수 증가
	public int updateReadCount(int bno) throws Exception;

	// 게시물 수정	
	public void update(Qna_BoardVO boardVO) throws Exception;
		
	// 게시물 삭제
	public void delete(int bno) throws Exception;
	
	// 게시물 총 갯수
	public int listCount(SearchCriteria scri) throws Exception;

}
