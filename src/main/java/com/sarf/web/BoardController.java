package com.sarf.web;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String list(Model model) throws Exception {
		logger.info("박수빈");

		model.addAttribute("list", service.list());

		return "/board/list";
	}

	// 게시판 글 작성 화면
	@RequestMapping(value = "/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception {
		logger.info("작성화면");

	}

	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String write(BoardVO boardVO, HttpSession session) throws Exception {
		logger.info("작성완료");

		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		String boardId = memberVO.getId();
		boardVO.setName(boardId);

		service.write(boardVO);
		
		return "redirect:/board/list";
	}
	
	// 게시판 내용 읽기
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String read(BoardVO boardVO, Model model) throws Exception {
		logger.info("조회완료");

		System.out.println("보드 넘버 나옴" + boardVO.getBno());
		model.addAttribute("read", service.read(boardVO.getBno()));
			
		return "board/view";
	}
	
	// 게시판 수정 화면
	@RequestMapping(value = "/modifyView", method = RequestMethod.GET)
	public String modifyView(BoardVO boardVO, Model model) throws Exception {
		
		model.addAttribute("modify", service.read(boardVO.getBno()));
		
		return "/board/modifyView";
	}
	
	// 게시판 수정
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modify(BoardVO boardVO, HttpSession session) throws Exception {
		

		
		service.modify(boardVO);
		
		return "redirect:/board/list";
	}
}