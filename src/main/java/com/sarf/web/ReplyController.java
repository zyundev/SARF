package com.sarf.web;

import javax.inject.Inject;
import javax.print.attribute.standard.Severity;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sarf.service.BoardService;
import com.sarf.service.ReplyService;
import com.sarf.vo.ReplyVO;

@Controller
@RequestMapping("/board/*")
public class ReplyController {

	private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);
	
	@Inject
	ReplyService service;
	
	// 댓글 작성
	@RequestMapping(value = "/replyWrite", method = RequestMethod.POST)
	public String replyWrite(ReplyVO vo, RedirectAttributes rttr) throws Exception {
		
		logger.info("reply Write");
		
		service.writeReply(vo);
		
		return "redirect:/board/view";
		
	}
	
	
	
}
