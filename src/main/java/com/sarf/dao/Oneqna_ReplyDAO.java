package com.sarf.dao;

import java.util.List;

import com.sarf.vo.Oneqna_ReplyVO;

public interface Oneqna_ReplyDAO {
	
	// 댓글 조회
	public List<Oneqna_ReplyVO> readReply(int bno) throws Exception;
		
	// 댓글 작성
	public void writeReply(Oneqna_ReplyVO vo) throws Exception;
		
	// 댓글 수정
	public void updateReply(Oneqna_ReplyVO vo) throws Exception;
	
	// 댓글 삭제
	public void deleteReply(Oneqna_ReplyVO vo) throws Exception;
	 
	// 선택된 게시판 댓글 조회
	public Oneqna_ReplyVO selectReply(int rno) throws Exception;

}
