package com.sarf.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sarf.dao.R_ReplyDAOImpl;
import com.sarf.vo.ReplyVO;

@Service
public class R_ReplyServiceImpl implements ReplyService{

	@Inject
	private R_ReplyDAOImpl dao;
	
	// 댓글 목록
	@Override
	public List<ReplyVO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}
	
	// 댓글 작성
	@Override
	public void writeReply(ReplyVO r_vo) throws Exception {
		dao.writeReply(r_vo);
	}

	// 댓글 수정
	@Override
	public void updateReply(ReplyVO r_vo) throws Exception {
		dao.updateReply(r_vo);
	}
	
	// 선택된 댓글 조회
	@Override
	public ReplyVO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(ReplyVO r_vo) throws Exception {
		dao.deleteReply(r_vo);
	}

}
