package com.sarf.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sarf.service.R_BoardService;
import com.sarf.service.ReplyService;
import com.sarf.vo.R_BoardVO;
import com.sarf.vo.MemberVO;
import com.sarf.vo.PageMaker;
import com.sarf.vo.ReplyVO;
import com.sarf.vo.SearchCriteria;

@Controller
@RequestMapping("/r_board/*")
public class R_BoardController {

	private static final Logger logger = LoggerFactory.getLogger(R_BoardController.class);

	@Inject
	R_BoardService r_service;
	
	@Inject
	ReplyService replyService;

	// 게시판 목록 조회
	@RequestMapping(value = "/r_list", method = RequestMethod.GET)

	public String r_list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("박수빈");

		model.addAttribute("list",r_service.list(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(r_service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/r_board/r_list";
	}

	// 게시판 글 작성 화면
	@RequestMapping(value = "/r_writeView", method = RequestMethod.GET)
	public void r_writeView() throws Exception{
		logger.info("작성화면");	
	}
	
	// 게시판 글 작성
	@RequestMapping(value="/r_write", method = RequestMethod.POST)
	public String write(R_BoardVO r_boardVO, HttpSession session) throws Exception {
		logger.info("작성완료");

		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		String r_boardId = memberVO.getId();
		r_boardVO.setName(r_boardId);

		r_service.write(r_boardVO);
		return "redirect:/r_board/r_list";
	}
		
	// 게시물 조회
	@RequestMapping(value = "/r_view", method = RequestMethod.GET)
	public String r_read(R_BoardVO r_boardVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
		logger.info("뷰");
			
		model.addAttribute("read", r_service.read(r_boardVO.getBno()));
		model.addAttribute("scri", scri);
		
		List<ReplyVO> replyList = replyService.readReply(r_boardVO.getBno());
		model.addAttribute("replyList", replyList);
		
		return "r_board/r_view";
	}
	
	// 게시물 수정뷰
	@RequestMapping(value = "/r_updateView", method = RequestMethod.GET)
	public String updateView(R_BoardVO r_boardVO, Model model) throws Exception{
		logger.info("없데이트뷰");
			
		model.addAttribute("update", r_service.read(r_boardVO.getBno()));
			
		return "r_board/r_updateView";
	}
		
	// 게시물 수정
	@RequestMapping(value = "/r_update", method = RequestMethod.POST)
	public String update(R_BoardVO r_boardVO) throws Exception{
		logger.info("없데이트");
			
		r_service.update(r_boardVO);
			
		return "redirect:/r_board/r_list";
	}

	// 게시물 삭제
	@RequestMapping(value = "/r_delete", method = RequestMethod.POST)
	public String delete(R_BoardVO r_boardVO) throws Exception{
		logger.info("딜리트");
			
		r_service.delete(r_boardVO.getBno());
			
		return "redirect:/r_board/r_list";
	}
	
}
