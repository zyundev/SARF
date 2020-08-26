package com.sarf.dao;

import java.util.List;

import com.sarf.vo.Qna_ReplyVO;

public interface Qna_ReplyDAO {
	
	// 댓글 조회
	public List<Qna_ReplyVO> readReply(int bno) throws Exception;
		
	// 댓글 작성
	public void writeReply(Qna_ReplyVO vo) throws Exception;
		
	// 댓글 수정
	public void updateReply(Qna_ReplyVO vo) throws Exception;
	
	// 댓글 삭제
	public void deleteReply(Qna_ReplyVO vo) throws Exception;
	 
	// 선택된 게시판 댓글 조회
	public Qna_ReplyVO selectReply(int rno) throws Exception;

}
