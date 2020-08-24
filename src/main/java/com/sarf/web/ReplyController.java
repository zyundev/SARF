package com.sarf.web;

import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sarf.service.ReplyService;
import com.sarf.vo.ReplyVO;
import com.sarf.vo.SearchCriteria;

@Controller
@RequestMapping("/board/*")
public class ReplyController {

	private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);
	
	@Inject
	ReplyService service;
	
	// 댓글 작성
	@RequestMapping(value = "/replyWrite", method = RequestMethod.POST)
	public String replyWrite(ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		
		logger.info("~~~~~~~~~post replyWrite~~~~~~~~~");
		
		service.writeReply(vo);
		
		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/board/view";
		
	}
	
	//댓글 수정 GET
	@RequestMapping(value="/replyUpdateView", method = RequestMethod.GET)
	public String replyUpdateView(ReplyVO vo, Model model) throws Exception {
		logger.info("~~~get replyUpdateView~~~");
		
		model.addAttribute("replyUpdate", service.selectReply(vo.getRno()));
		
		return "board/replyUpdateView";
	}
	
	
	//댓글 수정 POST
	@RequestMapping(value="/replyUpdate", method = RequestMethod.POST)
	public String replyUpdate(ReplyVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("~~~post replyUpdate~~~");
		
		service.updateReply(vo);
		
		rttr.addAttribute("bno", vo.getBno());

		return "redirect:/board/view";
	}
	
	//댓글 삭제 GET
	@RequestMapping(value="/replyDeleteView", method = RequestMethod.GET)
	public String replyDeleteView(ReplyVO vo, Model model) throws Exception {
		logger.info("~~~get replyDeleteView~~~");
		
		model.addAttribute("replyDelete", service.selectReply(vo.getRno()));

		return "board/replyDeleteView";
	}

	//댓글 삭제
	@RequestMapping(value="/replyDelete", method = RequestMethod.GET)
	public String replyDelete(ReplyVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("~~~get replyDelete~~~");
		
		service.deleteReply(vo);
		
		rttr.addAttribute("bno", vo.getBno());
		
		return "redirect:/board/view";
	}
}
