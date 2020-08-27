package com.sarf.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sarf.dao.V_ReplyDAO;
import com.sarf.vo.V_ReplyVO;

@Service
public class V_ReplyServiceImpl implements V_ReplyService{

	@Inject
	private V_ReplyDAO dao;
	
	// 댓글 목록
	@Override
	public List<V_ReplyVO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}
	
	// 댓글 작성
	@Override
	public void writeReply(V_ReplyVO vo) throws Exception {
		dao.writeReply(vo);
	}

	// 댓글 수정
	@Override
	public void updateReply(V_ReplyVO vo) throws Exception {
		dao.updateReply(vo);
	}
	
	// 선택된 댓글 조회
	@Override
	public V_ReplyVO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(V_ReplyVO vo) throws Exception {
		dao.deleteReply(vo);
	}

}
