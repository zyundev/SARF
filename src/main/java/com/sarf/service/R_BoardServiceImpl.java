package com.sarf.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sarf.dao.R_BoardDAO;
import com.sarf.vo.R_BoardVO;
import com.sarf.vo.SearchCriteria;

@Service
public class R_BoardServiceImpl implements R_BoardService {

	@Inject
	private R_BoardDAO r_dao;
	
	// 게시물 목록 조회
	@Override
	public List<R_BoardVO> list(SearchCriteria scri) throws Exception {
		return r_dao.list(scri);
	}

	// 게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return r_dao.listCount(scri);
	}

	// 게시글 작성
	@Override
	public void write(R_BoardVO r_boardVO) throws Exception {
		r_dao.write(r_boardVO);
	}

	// 게시물 조회
	@Override
	public R_BoardVO read(int bno) throws Exception {
		r_dao.updateReadCount(bno); // 조회수 증가
		return r_dao.read(bno);
	}

	// 게시물 수정
	@Override
	public void update(R_BoardVO r_boardVO) throws Exception {
		r_dao.update(r_boardVO);
	}

	// 게시물 삭제
	@Override
	public void delete(int bno) throws Exception {
		r_dao.delete(bno);
	}

}
