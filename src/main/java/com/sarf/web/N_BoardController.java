package com.sarf.web;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
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

import com.sarf.service.N_BoardServiceImpl;
import com.sarf.vo.BoardVO;
import com.sarf.vo.MemberVO;
import com.sarf.vo.PageMaker;
import com.sarf.vo.SearchCriteria;

@Controller
@RequestMapping("/n_board/*")
public class N_BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	N_BoardServiceImpl service;

	// 게시판 목록 조회
	@RequestMapping(value = "/notice", method = RequestMethod.GET)

	public String list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("박수빈");

		model.addAttribute("list",service.list(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/n_board/notice";
	}

	// 게시판 글 작성 화면()
	@RequestMapping(value = "/n_board/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("작성화면");	
	}
	
	// 게시판 글 작성
	@RequestMapping(value="/n_board/write", method = RequestMethod.POST)
	public String write(BoardVO boardVO, HttpSession session) throws Exception {
		logger.info("작성완료");

		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		String boardId = memberVO.getId();
		boardVO.setName(boardId);

		service.write(boardVO);
		return "redirect:/n_board/notice";
	}
		
	// 게시물 조회
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String read(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
		logger.info("뷰");
			
		model.addAttribute("read", service.read(boardVO.getBno()));
		model.addAttribute("scri", scri);
		
		return "n_board/view";
	}
	
	// 게시물 수정뷰
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(BoardVO boardVO, Model model) throws Exception{
		logger.info("없데이트뷰");
			
		model.addAttribute("update", service.read(boardVO.getBno()));
			
		return "n_board/updateView";
	}
		
	// 게시물 수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(BoardVO boardVO) throws Exception{
		logger.info("없데이트");
			
		service.update(boardVO);
			
		return "redirect:/n_board/view?bno=" + boardVO.getBno();
	}

	// 게시물 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(BoardVO boardVO) throws Exception{
		logger.info("딜리트");
			
		service.delete(boardVO.getBno());
			
		return "redirect:/n_board/notice";
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
