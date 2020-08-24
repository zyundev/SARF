package com.sarf.service;

import java.util.List;

import com.sarf.vo.V_ReplyVO;

public interface V_ReplyService {
	
	// 댓글 조회
	public List<V_ReplyVO> readReply(int bno) throws Exception;
	
	// 댓글 작성
	public void writeReply(V_ReplyVO vo) throws Exception;
	
	// 댓글 수정
	public void updateReply(V_ReplyVO vo) throws Exception;
	
	// 댓글 삭제
	public void deleteReply(V_ReplyVO vo) throws Exception;
	 
	// 선택된 게시판 댓글 조회
	public V_ReplyVO selectReply(int rno) throws Exception;
}
