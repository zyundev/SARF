package com.sarf.dao;

import java.util.List;



import com.sarf.vo.Rst_BoardVO;

public interface Rst_BoardDAO {
	// ê²Œì‹œë¬? ?‘?„±
	public void write(Rst_BoardVO boardVO) throws Exception;

	// ê²Œì‹œ?Œ ëª©ë¡ ì¡°íšŒ ê°•ë™
	public List<Rst_BoardVO> list1() throws Exception;

	// ê²Œì‹œ?Œ ëª©ë¡ ì¡°íšŒ ê°•ì„œ
	public List<Rst_BoardVO> list2() throws Exception;
	
	// ê²Œì‹œ?Œ ëª©ë¡ ì¡°íšŒ ê°•ë‚¨
	public List<Rst_BoardVO> list3() throws Exception;
	
	// ê²Œì‹œ?Œ ëª©ë¡ ì¡°íšŒ ê°•ë¶
	public List<Rst_BoardVO> list4() throws Exception;
	
	// ê²Œì‹œ?Œ ?ˆ˜? •ë·? ì¡°íšŒ
	public Rst_BoardVO updateview(int bno) throws Exception;
	
	// ê²Œì‹œë¬? ?ˆ˜? •
	public void update(Rst_BoardVO boardVO) throws Exception;
		
	// ê²Œì‹œë¬? ?‚­? œ
	public void delete(int bno) throws Exception;
}