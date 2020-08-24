package com.sarf.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.V_ReplyVO;

@Repository
public class V_ReplyDAOImpl implements V_ReplyDAO{

	@Inject
	private SqlSession sql;
	
	String mapper = "v_replyMapper.";
	
	// 댓글 조회
	@Override
	public List<V_ReplyVO> readReply(int bno) throws Exception {
		return sql.selectList("v_replyMapper.readReply", bno);
	}
	
	//댓글 작성
	@Override
	public void writeReply(V_ReplyVO vo) throws Exception {
		sql.insert("v_replyMapper.writeReply", vo);
	}

	// 댓글 수정
	@Override
	public void updateReply(V_ReplyVO vo) throws Exception {
		sql.update("v_replyMapper.updateReply", vo);
	}

	// 선택된 댓글 조회
	@Override
	public V_ReplyVO selectReply(int rno) throws Exception {
		return sql.selectOne("v_replyMapper.selectReply", rno);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(V_ReplyVO vo) throws Exception {
		sql.delete("v_replyMapper.deleteReply", vo);
	}

}
