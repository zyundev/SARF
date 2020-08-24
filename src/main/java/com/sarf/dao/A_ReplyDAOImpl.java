package com.sarf.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.A_ReplyVO;

@Repository
public class A_ReplyDAOImpl implements A_ReplyDAO{

	@Inject
	private SqlSession sql;
	
	// 댓글 조회
	@Override
	public List<A_ReplyVO> readReply(int bno) throws Exception {
		return sql.selectList("a_replyMapper.readReply", bno);
	}
	
	//댓글 작성
	@Override
	public void writeReply(A_ReplyVO vo) throws Exception {
		sql.insert("a_replyMapper.writeReply", vo);
	}

	// 댓글 수정
	@Override
	public void updateReply(A_ReplyVO vo) throws Exception {
		sql.update("a_replyMapper.updateReply", vo);
	}

	// 선택된 댓글 조회
	@Override
	public A_ReplyVO selectReply(int rno) throws Exception {
		return sql.selectOne("a_replyMapper.selectReply", rno);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(A_ReplyVO vo) throws Exception {
		sql.delete("a_replyMapper.deleteReply", vo);
	}

}
