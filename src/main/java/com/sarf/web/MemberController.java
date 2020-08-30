package com.sarf.web;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sarf.service.MemberService;
import com.sarf.service.UserMailSendService;
import com.sarf.vo.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	// 메일 관련 
	@Inject
	UserMailSendService mailsender;	
	
	// 암호화 기능 사용
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
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
		
		String inputPass = vo.getPw();
		String pwd = pwdEncoder.encode(inputPass);
		vo.setPw(pwd);
		
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
		session.getAttribute("member");
		MemberVO login = service.login(vo);
		boolean pwdMatch = pwdEncoder.matches(vo.getPw(), login.getPw());
		
		if(login != null && pwdMatch == true) {
			session.setAttribute("logincheck", true);
			session.setAttribute("member", login);
		} else {
			//session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:login";
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
		String inputPass = vo.getPw();
		String pwd = pwdEncoder.encode(inputPass);
		vo.setPw(pwd);
		
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
		
		// 세션에 있는 member를 가져와 member 변수에 넣어줍니다.
		MemberVO member = (MemberVO) session.getAttribute("member");
		
		// 세션에 있는 비밀번호
		String sessionPass = member.getPw();
		System.out.println("sessionpass~~~ " + sessionPass);
		
		// vo로 들어오는 비밀번호를 암호화
		String voPass = vo.getPw();
		String pwd = pwdEncoder.encode(voPass);
		System.out.println("pwd~~~ " + pwd);
		
		if (!(pwdEncoder.matches(vo.getPw(), sessionPass))) {
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
	public String postFindId(MemberVO vo, RedirectAttributes rttr) throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~post find_id~~~");
		}
		MemberVO findid = service.findId(vo);
		
		if(findid == null) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:find_id";
		}
		
		rttr.addFlashAttribute("findid", findid);
		return "redirect:find_id";
	}
	
	// 비밀번호 찾기 get
	@RequestMapping(value = "find_pw", method = RequestMethod.GET)
	public void getFindPw() throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~get find_pw~~~");
		}
	}
	
	// 비밀번호 찾기 post
	@RequestMapping(value = "find_pw", method = RequestMethod.POST)
	public String postFindPw(MemberVO vo, RedirectAttributes rttr, Model model, HttpServletRequest request) throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~post find_pw~~~");
		}
		
		MemberVO findpw = service.findPw(vo);
		
		if(findpw == null) {
			rttr.addFlashAttribute("find_pw_msg", false);
			return "redirect:find_pw";
		}
		
		// 비밀번호 이메일 전송 후 임시 비밀번호 받음
		String key = mailsender.mailSendWithUserKey(vo.getId(), vo.getEmail(), request);
		
		findpw.setPw(key);
		service.updateMember(findpw);
		
		rttr.addFlashAttribute("find_pw_msg", true);
		
		return "redirect:login";
	}
	
	// 아이디 중복 체크 get
	@RequestMapping(value = "idcheck", method = RequestMethod.GET)
	public String getidcheck(@RequestParam String id, Model model) throws Exception{
		// LOG
		if (debug == 1) {
			logger.info("~~~get idcheck~~~");
		}

		String idcheck = service.idcheck(id);
		if(idcheck != null) {
			model.addAttribute("idcheck", false);
			return "member/idcheck";
		}else {
			model.addAttribute("idcheck", true);
			return "member/idcheck";
		}
	}
	
	// 패스워드 체크
	@ResponseBody
	@RequestMapping(value = "/passChk", method = RequestMethod.POST)
	public boolean passChk(MemberVO vo) throws Exception {

		MemberVO login = service.login(vo);
		boolean pwdChk = pwdEncoder.matches(vo.getPw(), login.getPw());
		return pwdChk;
	}
}
