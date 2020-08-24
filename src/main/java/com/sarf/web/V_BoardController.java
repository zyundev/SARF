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

import com.sarf.service.V_BoardService;
import com.sarf.service.V_ReplyService;
import com.sarf.service.ReplyService;
import com.sarf.vo.V_BoardVO;
import com.sarf.vo.V_ReplyVO;
import com.sarf.vo.MemberVO;
import com.sarf.vo.PageMaker;
import com.sarf.vo.SearchCriteria;

@Controller
@RequestMapping("/v_board/*")
public class V_BoardController {

	private static final Logger logger = LoggerFactory.getLogger(V_BoardController.class);

	@Inject
	V_BoardService service;
	
	@Inject
	V_ReplyService replyService;

	// 게시판 목록 조회
	@RequestMapping(value = "/v_list", method = RequestMethod.GET)

	public String list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("김성규");

		model.addAttribute("v_list",service.list(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/v_board/v_list";
	}

	  // 게시판 글 작성 화면
	  
	  @RequestMapping(value = "/v_board/v_writeView", method = RequestMethod.GET)
	  public void writeView() throws Exception{ logger.info("작성화면"); }
	  
	  // 게시판 글 작성
	 
	  @RequestMapping(value="/v_board/v_write", method = RequestMethod.POST) public
	  String write(V_BoardVO boardVO, HttpSession session) throws Exception {
	  logger.info("작성완료");
	 
	  MemberVO memberVO = (MemberVO) session.getAttribute("member"); String boardId
	  = memberVO.getId(); boardVO.setName(boardId);
	 
	  service.write(boardVO); return "redirect:/v_board/v_list"; 
	  
	  }
	 
	
	  // 게시물 조회
	  @RequestMapping(value = "/v_view", method = RequestMethod.GET) 
	  public String read(V_BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{ 
		  logger.info("뷰");
	 
		  model.addAttribute("read", service.read(boardVO.getBno()));
		  model.addAttribute("scri", scri);

		  List<V_ReplyVO> replyList = replyService.readReply(boardVO.getBno());
		  model.addAttribute("replyList", replyList);
		 
		  return "v_board/v_view"; 
	  }
	 
	
	  // 게시물 수정뷰
	  
	  @RequestMapping(value = "/v_updateView", method = RequestMethod.GET) public
	  String updateView(V_BoardVO boardVO, Model model) throws Exception{
	  logger.info("김성규 업데이트");
	  
	  model.addAttribute("update", service.read(boardVO.getBno()));
	  
	  return "v_board/v_updateView"; }
	 
	  // 게시물 수정
	  
	  @RequestMapping(value = "/v_update", method = RequestMethod.POST) public String
	  update(V_BoardVO boardVO) throws Exception{ logger.info("없데이트");
	  
	  service.update(boardVO);
	 
	  return "redirect:/v_board/v_list"; }
	  
	
	 // 게시물 삭제
	  
	 @RequestMapping(value = "/v_delete", method = RequestMethod.POST) public String
	  delete(V_BoardVO boardVO) throws Exception{ logger.info("딜리트");
	  
	 service.delete(boardVO.getBno());
	 
	 return "redirect:/v_board/v_list"; }
	
	 
}
