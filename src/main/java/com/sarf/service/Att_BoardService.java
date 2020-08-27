package com.sarf.service;

import java.util.List;

import com.sarf.vo.Att_BoardVO;

public interface Att_BoardService {

	// 조회
	public List<Att_BoardVO> readReply(int bno) throws Exception;
		
	// 작성
	public void writeReply(Att_BoardVO vo) throws Exception;
		
	// 수정
	public void updateReply(Att_BoardVO vo) throws Exception;
		
	// 삭제
	public void deleteReply(Att_BoardVO vo) throws Exception;
		 
	// 선택된 게시판 조회
	public Att_BoardVO selectReply(int rno) throws Exception;
	
}
