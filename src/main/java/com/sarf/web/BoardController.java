package com.sarf.web;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sarf.service.BoardService;
import com.sarf.vo.BoardVO;
import com.sarf.vo.MemberVO;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	BoardService service;
	
	// 게시판 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info("박수빈");
		
		model.addAttribute("list",service.list());
		
		return "/board/list";
	}
	// 게시판 글 작성 화면
	@RequestMapping(value = "/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("작성화면");
		
	}
	
	@RequestMapping(value="write", method = RequestMethod.POST)
	public String write(BoardVO boardVO, HttpSession session) throws Exception {
		logger.info("작성완료");
		
		MemberVO  memberVO = (MemberVO)session.getAttribute("member");
		String boardId = memberVO.getId();
		boardVO.setName(boardId);
		
		service.write(boardVO);
		return "/board/list";
	}
}
