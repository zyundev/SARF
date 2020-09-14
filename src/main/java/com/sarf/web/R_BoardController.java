package com.sarf.web;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sarf.service.R_BoardServiceImpl;
import com.sarf.service.R_ReplyServiceImpl;
import com.sarf.vo.BoardVO;
import com.sarf.vo.MemberVO;
import com.sarf.vo.PageMaker;
import com.sarf.vo.ReplyVO;
import com.sarf.vo.SearchCriteria;

@Controller
@RequestMapping("/r_board/*")
public class R_BoardController {
	private static final Logger logger = LoggerFactory.getLogger(R_BoardController.class);

	@Inject
	R_BoardServiceImpl service;
	
	@Inject
	R_ReplyServiceImpl replyService;

	// 게시판 목록 조회
	@RequestMapping(value = "/r_list", method = RequestMethod.GET)

	public String r_list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("박수빈");

		model.addAttribute("list",service.list(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/r_board/r_list";
	}

	// 게시판 글 작성 화면
	@RequestMapping(value = "/r_writeView", method = RequestMethod.GET)
	public void r_writeView() throws Exception{
		logger.info("작성화면");	
	}
	
	// 게시판 글 작성
	@RequestMapping(value="/r_write", method = RequestMethod.POST)
	public String write(BoardVO BoardVO, HttpSession session) throws Exception {
		logger.info("작성완료");

		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		String r_boardId = memberVO.getId();
		BoardVO.setName(r_boardId);

		service.write(BoardVO);
		return "redirect:/r_board/r_list";
	}
		
	// 게시물 조회
	@RequestMapping(value = "/r_view", method = RequestMethod.GET)
	public String r_read(BoardVO BoardVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
		logger.info("뷰");
			
		model.addAttribute("read", service.read(BoardVO.getBno()));
		model.addAttribute("scri", scri);
		
		List<ReplyVO> replyList = replyService.readReply(BoardVO.getBno());
		model.addAttribute("replyList", replyList);
		
		return "r_board/r_view";
	}
	
	// 게시물 수정뷰
	@RequestMapping(value = "/r_updateView", method = RequestMethod.GET)
	public String updateView(BoardVO BoardVO, Model model) throws Exception{
		logger.info("없데이트뷰");
			
		model.addAttribute("update", service.read(BoardVO.getBno()));
			
		return "r_board/r_updateView";
	}
		
	// 게시물 수정
	@RequestMapping(value = "/r_update", method = RequestMethod.POST)
	public String update(BoardVO BoardVO) throws Exception{
		logger.info("없데이트");
			
		service.update(BoardVO);
			
		return "redirect:/r_board/r_view?bno=" + BoardVO.getBno();
	}

	// 게시물 삭제
	@RequestMapping(value = "/r_delete", method = RequestMethod.POST)
	public String delete(BoardVO BoardVO) throws Exception{
		logger.info("딜리트");
			
		service.delete(BoardVO.getBno());
			
		return "redirect:/r_board/r_list";
	}
	
	@RequestMapping("/multiupload")
	public void multiplePhotoUpload(HttpServletRequest request, HttpServletResponse response) {
		try {
			System.out.println("다중탔어~~~~~~");
			// 파일정보
			String sFileInfo = "";
			// 파일명을 받는다 - 일반 원본파일명
			String filename = request.getHeader("file-name");
			// 파일 확장자
			String filename_ext = filename.substring(filename.lastIndexOf(".") + 1);
			// 확장자를소문자로 변경
			filename_ext = filename_ext.toLowerCase();
			// 파일 기본경로
			String dftFilePath = request.getSession().getServletContext().getRealPath("/");
			System.out.println("@@@@@파일 기본경로" + dftFilePath);
			// 파일 기본경로 _ 상세경로
			String filePath = dftFilePath + "resources" + File.separator + "photo_upload" + File.separator;
			System.out.println("@@@@@파일 상세경로" + filePath);
			File file = new File(filePath);
			if (!file.exists()) {
				file.mkdirs();
			}
			String realFileNm = "";
			SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
			String today = formatter.format(new java.util.Date());
			realFileNm = today + UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
			String rlFileNm = filePath + realFileNm;
			System.out.println("@@@@@파일 경로, 파일명" + rlFileNm);
			///////////////// 서버에 파일쓰기 /////////////////
			InputStream is = request.getInputStream();
			OutputStream os = new FileOutputStream(rlFileNm);
			int numRead;
			byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
			while ((numRead = is.read(b, 0, b.length)) != -1) {
				os.write(b, 0, numRead);
			}
			if (is != null) {
				is.close();
			}
			os.flush();
			os.close();
			///////////////// 서버에 파일쓰기 /////////////////
			// 정보 출력
			sFileInfo += "&bNewLine=true";
			// img 태그의 title 속성을 원본파일명으로 적용시켜주기 위함
			sFileInfo += "&sFileName=" + filename;
			;
			sFileInfo += "&sFileURL=" + "/resources/photo_upload/" + realFileNm;
			PrintWriter print = response.getWriter();
			print.print(sFileInfo);
			print.flush();
			print.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
