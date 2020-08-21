package com.sarf.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO{

	@Inject
	private SqlSession sql;
	
	//댓글 작성
	@Override
	public void writeReply(ReplyVO vo) throws Exception {
		sql.insert("replyMapper.writeReply", vo);
	}

	// 댓글 수정
	@Override
	public void updateReply(ReplyVO vo) throws Exception {
		sql.update("replyMapper.updateReply", vo);
	}

	// 선택된 댓글 조회
	@Override
	public ReplyVO selectReply(int rno) throws Exception {
		return sql.selectOne("replyMapper.selectReply", rno);
	}

	@Override
	public void deleteReply(ReplyVO vo) throws Exception {
		sql.delete("replyMapper.deleteReply", vo);
	}
}