package com.sarf.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sarf.dao.A_ReplyDAO;
import com.sarf.vo.A_ReplyVO;

@Service
public class A_ReplyServiceImpl implements A_ReplyService{

	@Inject
	private A_ReplyDAO dao;
	
	// 댓글 목록
	@Override
	public List<A_ReplyVO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}
	
	// 댓글 작성
	@Override
	public void writeReply(A_ReplyVO r_vo) throws Exception {
		dao.writeReply(r_vo);
	}

	// 댓글 수정
	@Override
	public void updateReply(A_ReplyVO r_vo) throws Exception {
		dao.updateReply(r_vo);
	}
	
	// 선택된 댓글 조회
	@Override
	public A_ReplyVO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(A_ReplyVO r_vo) throws Exception {
		dao.deleteReply(r_vo);
	}

}
