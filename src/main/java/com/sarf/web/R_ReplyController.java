package com.sarf.web;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sarf.service.R_ReplyService;
import com.sarf.vo.R_ReplyVO;
import com.sarf.vo.SearchCriteria;

@Controller
@RequestMapping("/r_board/*")
public class R_ReplyController {

	private static final Logger logger = LoggerFactory.getLogger(R_ReplyController.class);
	
	@Inject
	R_ReplyService r_service;
	
	// 댓글 작성
	@RequestMapping(value = "/r_replyWrite", method = RequestMethod.POST)
	public String replyWrite(R_ReplyVO r_vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		
		logger.info("~~~~~~~~~post replyWrite~~~~~~~~~");
		
		r_service.writeReply(r_vo);
		
		rttr.addAttribute("bno", r_vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/r_board/r_view";
		
	}
	
	//댓글 수정 GET
	@RequestMapping(value="/r_replyUpdateView", method = RequestMethod.GET)
	public String replyUpdateView(R_ReplyVO r_vo, Model model) throws Exception {
		logger.info("~~~get replyUpdateView~~~");
		
		model.addAttribute("replyUpdate", r_service.selectReply(r_vo.getRno()));
		
		return "board/r_replyUpdateView";
	}
	
	
	//댓글 수정 POST
	@RequestMapping(value="/replyUpdate", method = RequestMethod.POST)
	public String replyUpdate(R_ReplyVO r_vo, RedirectAttributes rttr) throws Exception {
		logger.info("~~~post replyUpdate~~~");
		
		r_service.updateReply(r_vo);
		
		rttr.addAttribute("bno", r_vo.getBno());

		return "redirect:/r_board/r_view";
	}
	
	//댓글 삭제 GET
	@RequestMapping(value="/r_replyDeleteView", method = RequestMethod.GET)
	public String replyDeleteView(R_ReplyVO r_vo, Model model) throws Exception {
		logger.info("~~~get replyDeleteView~~~");
		
		model.addAttribute("replyDelete", r_service.selectReply(r_vo.getRno()));

		return "board/r_replyDeleteView";
	}

	//댓글 삭제
	@RequestMapping(value="/r_replyDelete", method = RequestMethod.GET)
	public String r_replyDelete(R_ReplyVO r_vo, RedirectAttributes rttr) throws Exception {
		logger.info("~~~get replyDelete~~~");
		
		r_service.deleteReply(r_vo);
		
		rttr.addAttribute("bno", r_vo.getBno());
		
		return "redirect:/r_board/r_view";
	}
}
