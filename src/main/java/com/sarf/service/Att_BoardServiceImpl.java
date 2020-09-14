package com.sarf.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sarf.dao.Att_BoardDAOImpl;
import com.sarf.vo.ARF_BoardVO;

@Service
public class Att_BoardServiceImpl implements ARF_BoardService {
	@Inject
	private Att_BoardDAOImpl dao;
	
	// 게시물 목록 조회 강동
	@Override
	public List<ARF_BoardVO> list1() throws Exception {
		return dao.list1();
	}
	
	// 게시물 목록 조회 강서
	@Override
	public List<ARF_BoardVO> list2() throws Exception {
		return dao.list2();
	}
	
	// 게시물 목록 조회 강남
	@Override
	public List<ARF_BoardVO> list3() throws Exception {
		return dao.list3();
	}
	
	// 게시물 목록 조회 강북
	@Override
	public List<ARF_BoardVO> list4() throws Exception {
		return dao.list4();
	}
	
	// 게시물 수정뷰 조회
	@Override
	public ARF_BoardVO updateview(int bno) throws Exception {
		return dao.updateview(bno);
	}

	// 게시글 작성
	@Override
	public void write(ARF_BoardVO boardVO) throws Exception {
		dao.write(boardVO);
	}

	// 게시물 수정
	@Override
	public void update(ARF_BoardVO boardVO) throws Exception {
		dao.update(boardVO);
	}

	// 게시물 삭제
	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);
	}
}