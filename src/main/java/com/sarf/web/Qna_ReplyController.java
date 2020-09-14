package com.sarf.web;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sarf.service.Qna_ReplyService;
import com.sarf.vo.Qna_ReplyVO;
import com.sarf.vo.SearchCriteria;

@Controller
@RequestMapping("/qna_board/*")
public class Qna_ReplyController {
	
	private static final Logger logger = LoggerFactory.getLogger(Qna_ReplyController.class);
	
	@Inject
	Qna_ReplyService service;
	
	// 댓글 작성
	@RequestMapping(value = "/replyWrite", method = RequestMethod.POST)
	public String replyWrite(Qna_ReplyVO qna_vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		
		logger.info("~~~~~~~~~post qna_replyWrite~~~~~~~~~");
		
		service.writeReply(qna_vo);
		
		rttr.addAttribute("bno", qna_vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		rttr.addAttribute("ans", qna_vo.getAns());
		
		return "redirect:/qna_board/qna_view";
		
	}
	
	//댓글 수정 GET
	@RequestMapping(value="/replyUpdateView", method = RequestMethod.GET)
	public String replyUpdateView(Qna_ReplyVO qna_vo, Model model) throws Exception {
		logger.info("~~~get qna_replyUpdateView~~~");
		
		model.addAttribute("replyUpdate", service.selectReply(qna_vo.getRno()));
		
		return "qna_board/qna_replyUpdateView";
	}
	
	
	//댓글 수정 POST
	@RequestMapping(value="/replyUpdate", method = RequestMethod.POST)
	public String replyUpdate(Qna_ReplyVO qna_vo, RedirectAttributes rttr) throws Exception {
		logger.info("~~~post replyUpdate~~~");
		
		service.updateReply(qna_vo);
		
		rttr.addAttribute("bno", qna_vo.getBno());

		return "redirect:/qna_board/qna_view";
	}
	
	//댓글 삭제 GET
	@RequestMapping(value="/replyDeleteView", method = RequestMethod.GET)
	public String replyDeleteView(Qna_ReplyVO qna_vo, Model model) throws Exception {
		logger.info("~~~get QNA_replyDeleteView~~~");
		
		model.addAttribute("replyDelete", service.selectReply(qna_vo.getRno()));

		return "qna_board/qna_replyDeleteView";
	}

	//댓글 삭제
	@RequestMapping(value="/replyDelete", method = RequestMethod.GET)
	public String r_replyDelete(Qna_ReplyVO qna_vo, RedirectAttributes rttr) throws Exception {
		logger.info("~~~get QNA_replyDelete~~~");
		
		service.deleteReply(qna_vo);
		
		rttr.addAttribute("bno", qna_vo.getBno());
		
		return "redirect:/qna_board/qna_view";
	}

}
