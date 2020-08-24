package com.sarf.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.R_ReplyVO;

@Repository
public class R_ReplyDAOImpl implements R_ReplyDAO{

	@Inject
	private SqlSession sql;
	
	// 댓글 조회
	@Override
	public List<R_ReplyVO> readReply(int bno) throws Exception {
		return sql.selectList("r_replyMapper.readReply", bno);
	}
	
	//댓글 작성
	@Override
	public void writeReply(R_ReplyVO r_vo) throws Exception {
		sql.insert("r_replyMapper.writeReply", r_vo);
	}

	// 댓글 수정
	@Override
	public void updateReply(R_ReplyVO r_vo) throws Exception {
		sql.update("r_replyMapper.updateReply", r_vo);
	}

	// 선택된 댓글 조회
	@Override
	public R_ReplyVO selectReply(int rno) throws Exception {
		return sql.selectOne("r_replyMapper.selectReply", rno);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(R_ReplyVO r_vo) throws Exception {
		sql.delete("r_replyMapper.deleteReply", r_vo);
	}

}
