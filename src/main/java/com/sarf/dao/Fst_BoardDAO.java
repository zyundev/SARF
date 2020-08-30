package com.sarf.dao;

import java.util.List;



import com.sarf.vo.Fst_BoardVO;

public interface Fst_BoardDAO {
	// ê²Œì‹œë¬? ?‘?„±
	public void write(Fst_BoardVO boardVO) throws Exception;

	// ê²Œì‹œ?Œ ëª©ë¡ ì¡°íšŒ ê°•ë™
	public List<Fst_BoardVO> list1() throws Exception;

	// ê²Œì‹œ?Œ ëª©ë¡ ì¡°íšŒ ê°•ì„œ
	public List<Fst_BoardVO> list2() throws Exception;
	
	// ê²Œì‹œ?Œ ëª©ë¡ ì¡°íšŒ ê°•ë‚¨
	public List<Fst_BoardVO> list3() throws Exception;
	
	// ê²Œì‹œ?Œ ëª©ë¡ ì¡°íšŒ ê°•ë¶
	public List<Fst_BoardVO> list4() throws Exception;
	
	// ê²Œì‹œ?Œ ?ˆ˜? •ë·? ì¡°íšŒ
	public Fst_BoardVO updateview(int bno) throws Exception;
	
	// ê²Œì‹œë¬? ?ˆ˜? •
	public void update(Fst_BoardVO boardVO) throws Exception;
		
	// ê²Œì‹œë¬? ?‚­? œ
	public void delete(int bno) throws Exception;
}