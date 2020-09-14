package com.sarf.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.ReplyVO;

@Repository
public class R_ReplyDAOImpl implements ReplyDAO{

	@Inject
	private SqlSession sql;
	
	String mapper = "r_replyMapper";
	
	// 댓글 조회
	@Override
	public List<ReplyVO> readReply(int bno) throws Exception {
		return sql.selectList(mapper + ".readReply", bno);
	}
	
	//댓글 작성
	@Override
	public void writeReply(ReplyVO r_vo) throws Exception {
		sql.insert(mapper + ".writeReply", r_vo);
	}

	// 댓글 수정
	@Override
	public void updateReply(ReplyVO r_vo) throws Exception {
		sql.update(mapper + ".updateReply", r_vo);
	}

	// 선택된 댓글 조회
	@Override
	public ReplyVO selectReply(int rno) throws Exception {
		return sql.selectOne(mapper + ".selectReply", rno);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(ReplyVO r_vo) throws Exception {
		sql.delete(mapper + ".deleteReply", r_vo);
	}

}
