package com.sarf.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sarf.service.A_BoardService;
import com.sarf.service.A_ReplyService;
import com.sarf.vo.A_BoardVO;
import com.sarf.vo.A_ReplyVO;
import com.sarf.vo.MemberVO;
import com.sarf.vo.PageMaker;
import com.sarf.vo.SearchCriteria;

@Controller
@RequestMapping("/a_board/*")
public class A_BoardController {

	private static final Logger logger = LoggerFactory.getLogger(A_BoardController.class);

	@Inject
	A_BoardService service;
	
	@Inject
	A_ReplyService replyService;

	// 게시판 목록 조회
	@RequestMapping(value = "/a_list", method = RequestMethod.GET)

	public String list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("정성학");

		model.addAttribute("list",service.list(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/a_board/a_list";
	}

	// 게시판 글 작성 화면
	@RequestMapping(value = "/a_board/a_writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("작성화면");	
	}
	
	// 게시판 글 작성
	@RequestMapping(value="/a_board/a_write", method = RequestMethod.POST)
	public String write(A_BoardVO boardVO, HttpSession session) throws Exception {
		logger.info("작성완료");

		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		String boardId = memberVO.getId();
		boardVO.setName(boardId);

		service.write(boardVO);
		return "redirect:/a_board/a_list";
	}
		
	// 게시물 조회
	@RequestMapping(value = "/a_view", method = RequestMethod.GET)
	public String read(A_BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
		logger.info("뷰");
			
		model.addAttribute("read", service.read(boardVO.getBno()));
		model.addAttribute("scri", scri);
		
		List<A_ReplyVO> replyList = replyService.readReply(boardVO.getBno());
		model.addAttribute("replyList", replyList);
		
		return "a_board/a_view";
	}
	
	// 게시물 수정뷰
	@RequestMapping(value = "/a_updateView", method = RequestMethod.GET)
	public String updateView(A_BoardVO boardVO, Model model) throws Exception{
		logger.info("없데이트뷰");
			
		model.addAttribute("update", service.read(boardVO.getBno()));
			
		return "a_board/a_updateView";
	}
		
	// 게시물 수정
	@RequestMapping(value = "/a_update", method = RequestMethod.POST)
	public String update(A_BoardVO boardVO) throws Exception{
		logger.info("없데이트");
			
		service.update(boardVO);
			
		return "redirect:/a_board/a_list";
	}

	// 게시물 삭제
	@RequestMapping(value = "/a_delete", method = RequestMethod.POST)
	public String delete(A_BoardVO boardVO) throws Exception{
		logger.info("딜리트");
			
		service.delete(boardVO.getBno());
			
		return "redirect:/a_board/a_list";
	}
	
}
