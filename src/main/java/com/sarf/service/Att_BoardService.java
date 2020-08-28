package com.sarf.service;

import java.util.List;

import com.sarf.vo.Att_BoardVO;	

public interface Att_BoardService {
	// 게시물 작성
	public void write(Att_BoardVO boardVO) throws Exception;
	
	// 게시물 목록 조회 강동
	public List<Att_BoardVO> list1() throws Exception;
	
	// 게시물 목록 조회 강서
	public List<Att_BoardVO> list2() throws Exception;
	
	// 게시물 목록 조회 강남
	public List<Att_BoardVO> list3() throws Exception;
	
	// 게시물 목록 조회 강북
	public List<Att_BoardVO> list4() throws Exception;
	
	// 게시물 수정뷰 조회 
	public Att_BoardVO updateview(int bno) throws Exception;
	
	// 게시물 수정
	public void update(Att_BoardVO boardVO) throws Exception;
		
	// 게시물 삭제
	public void delete(int bno) throws Exception;
}
