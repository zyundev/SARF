package com.sarf.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.Qna_ReplyVO;

@Repository
public class Qna_ReplyDAOImpl implements Qna_ReplyDAO{
	
	@Inject
	private SqlSession sql;
	
	// 댓글 조회
	@Override
	public List<Qna_ReplyVO> readReply(int bno) throws Exception {
		return sql.selectList("qna_replyMapper.readReply", bno);
	}
	
	//댓글 작성
	@Override
	public void writeReply(Qna_ReplyVO vo) throws Exception {
		sql.insert("qna_replyMapper.writeReply", vo);
	}

	// 댓글 수정
	@Override
	public void updateReply(Qna_ReplyVO vo) throws Exception {
		sql.update("qna_replyMapper.updateReply", vo);
	}

	// 선택된 댓글 조회
	@Override
	public Qna_ReplyVO selectReply(int rno) throws Exception {
		return sql.selectOne("qna_replyMapper.selectReply", rno);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(Qna_ReplyVO vo) throws Exception {
		sql.delete("qna_replyMapper.deleteReply", vo);
	}

}
