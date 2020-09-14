package com.sarf.service;

import java.util.List;


import com.sarf.vo.ARF_BoardVO;	

public interface ARF_BoardService {
	public void write(ARF_BoardVO boardVO) throws Exception;
	
	public List<ARF_BoardVO> list1() throws Exception;
	
	public List<ARF_BoardVO> list2() throws Exception;
	
	public List<ARF_BoardVO> list3() throws Exception;
	
	public List<ARF_BoardVO> list4() throws Exception;
	
	public ARF_BoardVO updateview(int bno) throws Exception;
	
	public void update(ARF_BoardVO boardVO) throws Exception;
		
	public void delete(int bno) throws Exception;
}