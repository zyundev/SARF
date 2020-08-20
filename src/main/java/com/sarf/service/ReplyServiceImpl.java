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

	
}
