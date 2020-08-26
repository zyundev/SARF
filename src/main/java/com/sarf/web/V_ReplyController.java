package com.sarf.web;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sarf.service.V_ReplyService;
import com.sarf.vo.SearchCriteria;
import com.sarf.vo.V_ReplyVO;

@Controller
@RequestMapping("/v_board/*")
public class V_ReplyController {

	private static final Logger logger = LoggerFactory.getLogger(V_ReplyController.class);
	
	@Inject
	V_ReplyService service;
	
	// 댓글 작성
	@RequestMapping(value = "/replyWrite", method = RequestMethod.POST)
	public String replyWrite(V_ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		
		logger.info("~~~~~~~~~post v_replyWrite~~~~~~~~~");
		
		service.writeReply(vo);
		
		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/v_board/v_view";
		
	}
	
	//댓글 수정 GET
	@RequestMapping(value="/replyUpdateView", method = RequestMethod.GET)
	public String replyUpdateView(V_ReplyVO vo, Model model) throws Exception {
		logger.info("~~~get v_replyUpdateView~~~");
		
		model.addAttribute("replyUpdate", service.selectReply(vo.getRno()));
		
		return "v_board/v_replyUpdateView";
	}
	
	
	//댓글 수정 POST
	@RequestMapping(value="/replyUpdate", method = RequestMethod.POST)
	public String replyUpdate(V_ReplyVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("~~~post v_replyUpdate~~~");
		
		service.updateReply(vo);
		
		rttr.addAttribute("bno", vo.getBno());

		return "redirect:/v_board/v_view";
	}
	
	//댓글 삭제 GET
	@RequestMapping(value="/replyDeleteView", method = RequestMethod.GET)
	public String replyDeleteView(V_ReplyVO vo, Model model) throws Exception {
		logger.info("~~~get replyDeleteView~~~");
		
		model.addAttribute("replyDelete", service.selectReply(vo.getRno()));

		return "v_board/replyDeleteView";
	}

	//댓글 삭제
	@RequestMapping(value="/replyDelete", method = RequestMethod.GET)
	public String replyDelete(V_ReplyVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("~~~get replyDelete~~~");
		
		service.deleteReply(vo);
		
		rttr.addAttribute("bno", vo.getBno());
		
		return "redirect:/v_board/v_view";
	}
}
