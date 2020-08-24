package com.sarf.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sarf.dao.R_ReplyDAO;
import com.sarf.vo.R_ReplyVO;

@Service
public class R_ReplyServiceImpl implements R_ReplyService{

	@Inject
	private R_ReplyDAO r_dao;
	
	// 댓글 목록
	@Override
	public List<R_ReplyVO> readReply(int bno) throws Exception {
		return r_dao.readReply(bno);
	}
	
	// 댓글 작성
	@Override
	public void writeReply(R_ReplyVO r_vo) throws Exception {
		r_dao.writeReply(r_vo);
	}

	// 댓글 수정
	@Override
	public void updateReply(R_ReplyVO r_vo) throws Exception {
		r_dao.updateReply(r_vo);
	}
	
	// 선택된 댓글 조회
	@Override
	public R_ReplyVO selectReply(int rno) throws Exception {
		return r_dao.selectReply(rno);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(R_ReplyVO r_vo) throws Exception {
		r_dao.deleteReply(r_vo);
	}

}
