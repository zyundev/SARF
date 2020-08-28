package com.sarf.service;

import java.util.List;

import com.sarf.vo.A_ReplyVO;

public interface A_ReplyService {
	
	// 댓글 조회
	public List<A_ReplyVO> readReply(int bno) throws Exception;
	
	// 댓글 작성
	public void writeReply(A_ReplyVO vo) throws Exception;
	
	// 댓글 수정
	public void updateReply(A_ReplyVO vo) throws Exception;
	
	// 댓글 삭제
	public void deleteReply(A_ReplyVO vo) throws Exception;
	 
	// 선택된 게시판 댓글 조회
	public A_ReplyVO selectReply(int rno) throws Exception;
}
