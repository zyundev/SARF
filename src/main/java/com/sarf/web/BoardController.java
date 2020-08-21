package com.sarf.web;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sarf.service.BoardService;
import com.sarf.vo.BoardVO;
import com.sarf.vo.MemberVO;
import com.sarf.vo.PageMaker;
import com.sarf.vo.SearchCriteria;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	BoardService service;
	
	// 게시판 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("박수빈");
		
		model.addAttribute("list",service.list(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/board/list";
	}
	// 게시판 글 작성 화면
	@RequestMapping(value = "/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("작성화면");
		
		
		
		
	}
	
	
	
	// 게시판 내용 읽기
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String read(BoardVO boardVO, Model model) throws Exception{
		logger.info("read");
		
		System.out.println("보드 넘버 나옴" + boardVO.getBno());
		model.addAttribute("read", service.read(boardVO.getBno()));
		
		/*
		 * List<ReplyVO> replyList = replyService.readReply(boardVO.getBno());
		 * model.addAttribute("replyList", replyList);
		 */
		
		return "board/view";
	
	}
	
		
	@RequestMapping(value="write", method = RequestMethod.POST)

	public String write(BoardVO boardVO, HttpSession session) throws Exception {
		logger.info("작성완료");
		
		MemberVO  memberVO = (MemberVO)session.getAttribute("member");
		String boardId = memberVO.getId();
		boardVO.setName(boardId);
		
		service.write(boardVO);
		return "redirect:/board/list";

	}
}
