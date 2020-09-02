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
	
	boolean debug = true; 
	
	// 회원가입 get
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void getJoin() throws Exception{
		// LOG
		if (debug) {
			logger.info("get join");
		}
	}
	
	// 회원가입 post
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String postJoin(MemberVO vo) throws Exception{
		// LOG
		if (debug) {
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
		if (debug) {
			logger.info("~~~get login~~~");
		}
	}
	
	// 로그인 post
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String postLogin(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		// LOG
		if (debug) {
			logger.info("~~~post login~~~");
		}
		
		HttpSession session = req.getSession();
		session.getAttribute("member");
		// 아이디가 존재하는 지 확인 
			
		MemberVO login = service.login(vo);
		if(login == null) {
			rttr.addFlashAttribute("idNull", true);
			return "redirect:login";
		}
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
		if (debug) {
			logger.info("~~~get logout~~~");
		}
		session.invalidate();
		
		return "redirect:/";
	}
	
	// 회원 정보 수정 get
	@RequestMapping(value = "updatemember", method = RequestMethod.GET)
	public String getUpdateMember() throws Exception{
		// LOG
		if (debug) {
			logger.info("~~~get updatemember~~~");
		}
		
		return "member/updatemember";
	}
	
	// 회원 정보 수정 post
	@RequestMapping(value = "updatemember", method = RequestMethod.POST)
	public String postUpdateMember(MemberVO vo, HttpSession session) throws Exception{
		// LOG
		if (debug) {
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
		if (debug) {
			logger.info("~~~get deletemember~~~");
		}
	}
	
	// 회원 탈퇴 post
	@RequestMapping(value = "deletemember", method = RequestMethod.POST)
	public String postDeleteMember(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		// LOG
		if (debug) {
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
		if (debug) {
			logger.info("~~~get find_id~~~");
		}
	}
	
	// 아이디 찾기 결과값 출력
	@RequestMapping(value = "canuseid", method = RequestMethod.GET)
	public String canuseid(MemberVO vo, Model model) throws Exception{
		// LOG
		if (debug) {
			logger.info("~~~get canuseid~~~");
		}
		System.out.println(vo.getEmail() + "@@@@@@" + vo.getName()+ "@@@@@@");
		MemberVO findid = service.findId(vo);
		if(findid == null) {
			model.addAttribute("find_id_chk", false);
			return "member/find_id_result";
		}else {
			model.addAttribute("find_id_chk", true);
			model.addAttribute("find_id", findid);
			return "member/find_id_result";
		}
	}
	
	// 비밀번호 찾기 get
	@RequestMapping(value = "find_pw", method = RequestMethod.GET)
	public void getFindPw() throws Exception{
		// LOG
		if (debug) {
			logger.info("~~~get find_pw~~~");
		}
	}
	
	// 비밀번호 찾기 post
	@RequestMapping(value = "find_pw", method = RequestMethod.POST)
	public String postFindPw(MemberVO vo, RedirectAttributes rttr, Model model, HttpServletRequest request) throws Exception{
		// LOG
		if (debug) {
			logger.info("~~~post find_pw~~~");
		}
		
		MemberVO findpw = service.findPw(vo);
		
		if(findpw == null) {
			rttr.addFlashAttribute("find_pw_msg", false);
			return "redirect:find_pw";
		}
		
		// 비밀번호 이메일 전송 후 임시 비밀번호 받음
		String key = mailsender.mailSendWithUserKey(vo.getId(), vo.getEmail(), request);
		String pwd = pwdEncoder.encode(key);
		
		findpw.setPw(pwd);
		
		service.updateMember(findpw);
		
		rttr.addFlashAttribute("find_pw_msg", true);
		
		return "redirect:login";
	}
	
	// 아이디 중복 체크 get
	@RequestMapping(value = "idcheck", method = RequestMethod.GET)
	public String getidcheck(@RequestParam String id, Model model) throws Exception{
		// LOG
		if (debug) {
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
	
	// 이메일 중복 체크 get
	@RequestMapping(value = "emailcheck", method = RequestMethod.GET)
	public String getemailcheck(@RequestParam String email, Model model) throws Exception{
		// LOG
		if (debug) {
			logger.info("~~~get emailcheck~~~");
		}
		System.out.println("이메일~~~" + email);
		String emailcheck = service.emailcheck(email);
		System.out.println("@@@@@@@@@@" + emailcheck);
		if(emailcheck != null) {
			model.addAttribute("emailcheck", false);
			return "member/emailcheck";
		}else {
			model.addAttribute("emailcheck", true);
			return "member/emailcheck";
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
