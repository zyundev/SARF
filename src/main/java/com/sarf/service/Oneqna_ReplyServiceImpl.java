package com.sarf.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sarf.dao.Oneqna_ReplyDAO;
import com.sarf.vo.Oneqna_ReplyVO;

@Service
public class Oneqna_ReplyServiceImpl implements Oneqna_ReplyService{
	
	@Inject
	private Oneqna_ReplyDAO dao;
	
	// 댓글 목록
	@Override
	public List<Oneqna_ReplyVO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}
	
	// 댓글 작성
	@Override
	public void writeReply(Oneqna_ReplyVO r_vo) throws Exception {
		dao.writeReply(r_vo);
	}

	// 댓글 수정
	@Override
	public void updateReply(Oneqna_ReplyVO r_vo) throws Exception {
		dao.updateReply(r_vo);
	}
	
	// 선택된 댓글 조회
	@Override
	public Oneqna_ReplyVO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(Oneqna_ReplyVO r_vo) throws Exception {
		dao.deleteReply(r_vo);
	}

}
