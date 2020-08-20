package com.sarf.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sarf.dao.ReplyDAO;
import com.sarf.vo.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Inject
	private ReplyDAO dao;
	
	@Override
	public void writeReply(ReplyVO vo) throws Exception {
		dao.writeReply(vo);
	}

	// 댓글 수정
	@Override
	public void updateReply(ReplyVO vo) throws Exception {
		dao.updateReply(vo);
	}
	
	// 선택된 댓글 조회
	@Override
	public ReplyVO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(ReplyVO vo) throws Exception {
		dao.deleteReply(vo);
	}
}
