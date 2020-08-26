package com.sarf.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sarf.service.Qna_BoardService;
import com.sarf.service.Qna_ReplyService;
import com.sarf.vo.MemberVO;
import com.sarf.vo.Qna_BoardVO;
import com.sarf.vo.Qna_ReplyVO;

@Controller
@RequestMapping("/qna_board/*")
public class Qna_BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	Qna_BoardService service;
	
	@Inject
	Qna_ReplyService replyService;

	// 게시판 목록 조회
	@RequestMapping(value = "/faq", method = RequestMethod.GET)

	public String list()  throws Exception{
		logger.info("박수빈");
		
		return "/qna_board/faq";
	}
	// 게시판 목록 조회
	@RequestMapping(value = "/qna_list", method = RequestMethod.GET)

	public String list(Qna_BoardVO boardVO, Model model)  throws Exception{
		logger.info("박수빈");
		
		return "/qna_board/qna_list";
	}

	// 게시판 글 작성 화면
	@RequestMapping(value = "/qna_board/qna_writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("작성화면");	
	}
	
	// 게시판 글 작성
	@RequestMapping(value="/qna_board/qna_write", method = RequestMethod.POST)
	public String write(Qna_BoardVO boardVO, HttpSession session) throws Exception {
		logger.info("작성완료");

		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		String boardId = memberVO.getId();
		boardVO.setName(boardId);

		service.write(boardVO);
		return "redirect:/qna_board/qna_list";
	}
		
	// 게시물 조회
	@RequestMapping(value = "/qna_view", method = RequestMethod.GET)
	public String read(Qna_BoardVO boardVO, Model model) throws Exception{
		logger.info("뷰");
			
		model.addAttribute("read", service.read(boardVO.getBno()));
		
		List<Qna_ReplyVO> replyList = replyService.readReply(boardVO.getBno());
		model.addAttribute("replyList", replyList);
		
		return "qna_board/qna_view";
	}
	
}
