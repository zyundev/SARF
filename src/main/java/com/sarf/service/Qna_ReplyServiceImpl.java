package com.sarf.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sarf.dao.Qna_ReplyDAO;
import com.sarf.vo.Qna_ReplyVO;

@Service
public class Qna_ReplyServiceImpl implements Qna_ReplyService{
	
	@Inject
	private Qna_ReplyDAO dao;
	
	// 댓글 목록
	@Override
	public List<Qna_ReplyVO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}
	
	// 댓글 작성
	@Override
	public void writeReply(Qna_ReplyVO qna_vo) throws Exception {
		dao.writeReply(qna_vo);
	}

	// 댓글 수정
	@Override
	public void updateReply(Qna_ReplyVO qna_vo) throws Exception {
		dao.updateReply(qna_vo);
	}
	
	// 선택된 댓글 조회
	@Override
	public Qna_ReplyVO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(Qna_ReplyVO qna_vo) throws Exception {
		dao.deleteReply(qna_vo);
	}

}
