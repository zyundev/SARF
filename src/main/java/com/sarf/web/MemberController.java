package com.sarf.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public void getJoin() throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("get join");
		}
	}
	
	// 회원가입 post
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String postJoin(MemberVO vo) throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~post join~~~");
		}
		
		service.join(vo);
		
		return "main";
	}

	// 로그인 get
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void getLogin() throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~get login~~~");
		}
	}
	
	// 로그인 post
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String postLogin(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
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
	public String getLogout(HttpSession session) throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~get logout~~~");
		}
		session.invalidate();
		
		return "redirect:/";
	}
	
	// 회원 정보 수정 get
	@RequestMapping(value = "updatemember", method = RequestMethod.GET)
	public String getUpdateMember() throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~get updatemember~~~");
		}
		
		return "member/updatemember";
	}
	
	// 회원 정보 수정 post
	@RequestMapping(value = "updatemember", method = RequestMethod.POST)
	public String postUpdateMember(MemberVO vo, HttpSession session) throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~post updatemember~~~");
		}
		service.updateMember(vo);
		session.invalidate();
		
		return "redirect:/";
	}
	
	// 회원 탈퇴 get
	@RequestMapping(value = "deletemember", method = RequestMethod.GET)
	public void getDeleteMember() throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~get deletemember~~~");
		}
	}
	
	// 회원 탈퇴 post
	@RequestMapping(value = "deletemember", method = RequestMethod.POST)
	public String postDeleteMember(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~post deletemember~~~");
		}
		
		//세션에 있는 member를 가져와 member 변수에 넣어줍니다.
		MemberVO member = (MemberVO) session.getAttribute("member");
		
		// 세션에 있는 비밀번호
		String sessionPass = member.getPw();
		System.out.println("sessionpass~~~" + sessionPass);
		
		// vo로 들어오는 비밀번호
		String voPass = vo.getPw();
		System.out.println("voPass~~~" + voPass);
		
		if (!(sessionPass.equals(voPass))) {
			rttr.addFlashAttribute("msg", false);
			
			return "redirect:/member/deletemember";
		}
		rttr.addFlashAttribute("deletemsg", false);
		service.deleteMember(vo);
		session.invalidate();
		
		return "redirect:/";
	}
	
	// 아이디 찾기 get
	@RequestMapping(value = "find_id", method = RequestMethod.GET)
	public void getFindId() throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~get find_id~~~");
		}
	}
	
	// 아이디 찾기 post
	@RequestMapping(value = "find_id", method = RequestMethod.POST)
	public String postFindId(Model model, MemberVO vo, RedirectAttributes rttr) throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~post find_id~~~");
		}
		List<MemberVO> idlist = service.findId(vo);
		
		model.addAttribute(idlist);
		
		if(idlist == null) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:find_id";
		}
		
		return "find_id";
	}
}
