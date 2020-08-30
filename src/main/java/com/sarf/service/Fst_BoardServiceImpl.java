package com.sarf.service;

import java.util.List;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sarf.dao.Fst_BoardDAO;
import com.sarf.vo.Fst_BoardVO;

@Service
public class Fst_BoardServiceImpl implements Fst_BoardService {
	@Inject
	private Fst_BoardDAO dao;
	
	// ê²Œì‹œë¬? ëª©ë¡ ì¡°íšŒ ê°•ë™
	@Override
	public List<Fst_BoardVO> list1() throws Exception {
		return dao.list1();
	}
	
	// ê²Œì‹œë¬? ëª©ë¡ ì¡°íšŒ ê°•ì„œ
	@Override
	public List<Fst_BoardVO> list2() throws Exception {
		return dao.list2();
	}
	
	// ê²Œì‹œë¬? ëª©ë¡ ì¡°íšŒ ê°•ë‚¨
	@Override
	public List<Fst_BoardVO> list3() throws Exception {
		return dao.list3();
	}
	
	// ê²Œì‹œë¬? ëª©ë¡ ì¡°íšŒ ê°•ë¶
	@Override
	public List<Fst_BoardVO> list4() throws Exception {
		return dao.list4();
	}
	
	// ê²Œì‹œë¬? ?ˆ˜? •ë·? ì¡°íšŒ
	@Override
	public Fst_BoardVO updateview(int bno) throws Exception {
		return dao.updateview(bno);
	}

	// ê²Œì‹œê¸? ?‘?„±
	@Override
	public void write(Fst_BoardVO boardVO) throws Exception {
		dao.write(boardVO);
	}

	// ê²Œì‹œë¬? ?ˆ˜? •
	@Override
	public void update(Fst_BoardVO boardVO) throws Exception {
		dao.update(boardVO);
	}

	// ê²Œì‹œë¬? ?‚­? œ
	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);
	}
}