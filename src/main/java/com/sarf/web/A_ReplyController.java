package com.sarf.web;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sarf.service.A_ReplyService;
import com.sarf.vo.A_ReplyVO;
import com.sarf.vo.SearchCriteria;

@Controller
@RequestMapping("/a_board/*")
public class A_ReplyController {

	private static final Logger logger = LoggerFactory.getLogger(A_ReplyController.class);
	
	@Inject
	A_ReplyService service;
	
	// 댓글 작성
	@RequestMapping(value = "/replyWrite", method = RequestMethod.POST)
	public String replyWrite(A_ReplyVO r_vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		
		logger.info("~~~~~~~~~post a_replyWrite~~~~~~~~~");
		
		service.writeReply(r_vo);
		
		rttr.addAttribute("bno", r_vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/a_board/a_view";
		
	}
	
	//댓글 수정 GET
	@RequestMapping(value="/replyUpdateView", method = RequestMethod.GET)
	public String replyUpdateView(A_ReplyVO r_vo, Model model) throws Exception {
		logger.info("~~~get r_replyUpdateView~~~");
		
		model.addAttribute("replyUpdate", service.selectReply(r_vo.getRno()));
		
		return "a_board/a_replyUpdateView";
	}
	
	
	//댓글 수정 POST
	@RequestMapping(value="/replyUpdate", method = RequestMethod.POST)
	public String replyUpdate(A_ReplyVO r_vo, RedirectAttributes rttr) throws Exception {
		logger.info("~~~post replyUpdate~~~");
		
		service.updateReply(r_vo);
		
		rttr.addAttribute("bno", r_vo.getBno());

		return "redirect:/a_board/a_view";
	}
	
	//댓글 삭제 GET
	@RequestMapping(value="/replyDeleteView", method = RequestMethod.GET)
	public String replyDeleteView(A_ReplyVO r_vo, Model model) throws Exception {
		logger.info("~~~get a_replyDeleteView~~~");
		
		model.addAttribute("replyDelete", service.selectReply(r_vo.getRno()));

		return "a_board/a_replyDeleteView";
	}

	//댓글 삭제
	@RequestMapping(value="/replyDelete", method = RequestMethod.GET)
	public String r_replyDelete(A_ReplyVO r_vo, RedirectAttributes rttr) throws Exception {
		logger.info("~~~get a_replyDelete~~~");
		
		service.deleteReply(r_vo);
		
		rttr.addAttribute("bno", r_vo.getBno());
		
		return "redirect:/a_board/a_view";
	}
}
