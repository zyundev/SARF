package com.sarf.dao;

import java.util.List;

import com.sarf.vo.R_ReplyVO;

public interface R_ReplyDAO {

	// 댓글 조회
	public List<R_ReplyVO> readReply(int bno) throws Exception;
		
	// 댓글 작성
	public void writeReply(R_ReplyVO vo) throws Exception;
		
	// 댓글 수정
	public void updateReply(R_ReplyVO vo) throws Exception;
	
	// 댓글 삭제
	public void deleteReply(R_ReplyVO vo) throws Exception;
	 
	// 선택된 게시판 댓글 조회
	public R_ReplyVO selectReply(int rno) throws Exception;
		
}
