package com.sarf.web;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sarf.service.MemberService;
import com.sarf.vo.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	// ENABLE LOG
	// 0 is off, 1 is on
	int debug = 1; 
	
	// 회원가입 get
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void getRegister() throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("get join");
		}
	}
	
	// 회원가입 post
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~post join~~~");
		}
		
		service.join(vo);
		
		return "main";
	}

	// 로그인 get
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void login() throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~get login~~~");
		}
	}
	
	// 로그인 post 리다이렉트 옵션 없을 때 테스트
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~post login~~~");
		}
		
		HttpSession session = req.getSession();
		MemberVO login = service.login(vo);
		
		if(login == null) {
			//session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:login";
		}else {
			session.setAttribute("member", login);
			session.setAttribute("test", "hello");
		}
		return "main";
	}
	
	// 로그아웃 get
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~get logout~~~");
		}
		session.invalidate();
		
		return "redirect:/";
	}
	
	// 회원 정보 수정 get
	@RequestMapping(value = "updatemember", method = RequestMethod.GET)
	public String updatemember() throws Exception{
		if (debug == 1) {
			logger.info("~~~get updatemember~~~");
		}
		
		return "member/updatemember";
	}
	
	// 회원 정보 수정 post
	@RequestMapping(value = "updatemember", method = RequestMethod.POST)
	public String registerUpdate(MemberVO vo, HttpSession session) throws Exception{
		if (debug == 1) {
			logger.info("~~~post updatemember~~~");
		}
		service.updateMember(vo);
		session.invalidate();
		
		return "redirect:/";
	}
	/*
	// 회원 탈퇴 get
	@RequestMapping(value = "/memberDeleteView", method = RequestMethod.GET)
	public String memberDeleteView() throws Exception{
		return "member/memberDeleteView";
	}
	
	// 회원 탈퇴 post
	@RequestMapping(value = "/memberDelete", method = RequestMethod.POST)
	public String memberDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		// 세션에 있는 member를 가져와 member 변수에 넣어줍니다.
		MemberVO member = (MemberVO) session.getAttribute("member");
		
		// 세션에 있는 비밀번호
		String sessionPass = member.getUserPass();
		
		// vo로 들어오는 비밀번호
		String voPass = vo.getUserPass();
		
		if (!(sessionPass.equals(voPass))) {
			rttr.addFlashAttribute("msg", false);
			
			return "redirect:/member/memberDeleteView";
		}
		service.memberDelete(vo);
		session.invalidate();
		
		return "redirect:/";
	}
	*/
}
