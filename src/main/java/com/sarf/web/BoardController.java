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
	
	// 게시판 글 작성 화면
	@RequestMapping(value = "/board/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("작성화면");	
	}
	
	// 게시판 글 작성
	@RequestMapping(value="/board/write", method = RequestMethod.POST)
	public String write(BoardVO boardVO, HttpSession session) throws Exception {
		logger.info("작성완료");
		
		MemberVO  memberVO = (MemberVO)session.getAttribute("member");
		String boardId = memberVO.getId();
		boardVO.setName(boardId);
		
		service.write(boardVO);
		return "redirect:/board/list";
	}
	
	// 게시판 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info("리스트");
			
		model.addAttribute("list",service.list());
			
		return "/board/list";
	}
		
	// 게시물 조회
	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String read(BoardVO boardVO, Model model) throws Exception{
		logger.info("리드뷰");
			
		model.addAttribute("read", service.read(boardVO.getBno()));
			
		return "board/readView";
	}
	
	// 게시물 수정뷰
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(BoardVO boardVO, Model model) throws Exception{
		logger.info("없데이트뷰");
			
		model.addAttribute("update", service.read(boardVO.getBno()));
			
		return "board/updateView";
	}
		
	// 게시물 수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(BoardVO boardVO) throws Exception{
		logger.info("없데이트");
			
		service.update(boardVO);
			
		return "redirect:/board/list";
	}

	// 게시물 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(BoardVO boardVO) throws Exception{
		logger.info("delete");
			
		service.delete(boardVO.getBno());
			
		return "redirect:/board/list";
	}
	
}
