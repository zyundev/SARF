package com.sarf.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sarf.dao.Rst_BoardDAOImpl;
import com.sarf.vo.ARF_BoardVO;

@Service
public class Rst_BoardServiceImpl implements ARF_BoardService {
	@Inject
	private Rst_BoardDAOImpl dao;
	
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
	
	@Override
	public ARF_BoardVO updateview(int bno) throws Exception {
		return dao.updateview(bno);
	}

	@Override
	public void write(ARF_BoardVO boardVO) throws Exception {
		dao.write(boardVO);
	}

	@Override
	public void update(ARF_BoardVO boardVO) throws Exception {
		dao.update(boardVO);
	}

	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);
	}
}