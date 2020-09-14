package com.sarf.service;

import java.util.List;


import com.sarf.vo.ARF_BoardVO;	

public interface ARF_BoardService {
	// 寃뚯떆臾� �옉�꽦
	public void write(ARF_BoardVO boardVO) throws Exception;
	
	// 寃뚯떆臾� 紐⑸줉 議고쉶 媛뺣룞
	public List<ARF_BoardVO> list1() throws Exception;
	
	// 寃뚯떆臾� 紐⑸줉 議고쉶 媛뺤꽌
	public List<ARF_BoardVO> list2() throws Exception;
	
	// 寃뚯떆臾� 紐⑸줉 議고쉶 媛뺣궓
	public List<ARF_BoardVO> list3() throws Exception;
	
	// 寃뚯떆臾� 紐⑸줉 議고쉶 媛뺣턿
	public List<ARF_BoardVO> list4() throws Exception;
	
	// 寃뚯떆臾� �닔�젙酉� 議고쉶 
	public ARF_BoardVO updateview(int bno) throws Exception;
	
	// 寃뚯떆臾� �닔�젙
	public void update(ARF_BoardVO boardVO) throws Exception;
		
	// 寃뚯떆臾� �궘�젣
	public void delete(int bno) throws Exception;
}