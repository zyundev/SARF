package com.sarf.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sarf.dao.Att_BoardDAO;
import com.sarf.vo.Att_BoardVO;

@Service
public class Att_BoardServiceImpl implements Att_BoardService{

	@Inject
	private Att_BoardDAO dao;
	
	// 댓글 목록
	@Override
	public List<Att_BoardVO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}
	
	// 댓글 작성
	@Override
	public void writeReply(Att_BoardVO vo) throws Exception {
		dao.writeReply(vo);
	}

	// 댓글 수정
	@Override
	public void updateReply(Att_BoardVO vo) throws Exception {
		dao.updateReply(vo);
	}
	
	// 선택된 댓글 조회
	@Override
	public Att_BoardVO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(Att_BoardVO vo) throws Exception {
		dao.deleteReply(vo);
	}

}
