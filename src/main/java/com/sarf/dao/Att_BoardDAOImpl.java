package com.sarf.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sarf.vo.Att_BoardVO;

@Repository
public class Att_BoardDAOImpl implements Att_BoardDAO{

	@Inject
	private SqlSession sql;
	
	// 조회
	@Override
	public List<Att_BoardVO> readReply(int bno) throws Exception {
		return sql.selectList("att_boardMapper.readReply", bno);
	}
	
	// 작성
	@Override
	public void writeReply(Att_BoardVO vo) throws Exception {
		sql.insert("att_boardMapper.writeReply", vo);
	}

	// 수정
	@Override
	public void updateReply(Att_BoardVO vo) throws Exception {
		sql.update("att_boardMapper.updateReply", vo);
	}

	// 댓글 조회
	@Override
	public Att_BoardVO selectReply(int rno) throws Exception {
		return sql.selectOne("att_boardMapper.selectReply", rno);
	}

	// 삭제
	@Override
	public void deleteReply(Att_BoardVO vo) throws Exception {
		sql.delete("att_boardMapper.deleteReply", vo);
	}

}
