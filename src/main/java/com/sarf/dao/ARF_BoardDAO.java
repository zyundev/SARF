package com.sarf.dao;

import java.util.List;

import com.sarf.vo.ARF_BoardVO;

public interface ARF_BoardDAO {
	
	// 게시물 작성
	public void write(ARF_BoardVO boardVO) throws Exception;

	// 게시판 목록 조회 강동
	public List<ARF_BoardVO> list1() throws Exception;

	// 게시판 목록 조회 강서
	public List<ARF_BoardVO> list2() throws Exception;
	
	// 게시판 목록 조회 강남
	public List<ARF_BoardVO> list3() throws Exception;
	
	// 게시판 목록 조회 강북
	public List<ARF_BoardVO> list4() throws Exception;
	
	// 게시판 수정뷰 조회
	public ARF_BoardVO updateview(int bno) throws Exception;
	
	// 게시물 수정
	public void update(ARF_BoardVO boardVO) throws Exception;
		
	// 게시물 삭제
	public void delete(int bno) throws Exception;
}